import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'Homescreen.dart';
import 'OTPScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F6EE),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Enter your',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins'),
              ),
              const Text(
                'Phone Number',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                  fontFamily: 'Poppins',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  CountryCodePicker(
                    showOnlyCountryWhenClosed: false,
                    showCountryOnly: false,
                    initialSelection: 'KH',
                    favorite: const ['KH', '+855'],
                    boxDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextFormField(
                      cursorColor: Colors.deepOrangeAccent,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.deepOrangeAccent,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.deepOrangeAccent,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      controller: _phoneController,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: ElevatedButton(
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(const Size(100, 50)),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.deepOrangeAccent),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  onPressed: () {
                    final phone = _phoneController.text.trim();
                    final String loginPhone = "+855$phone";
                    // debugPrint("Input Phone: $loginPhone");
                    loginUser(loginPhone, context);
                  },
                  child: const Text(
                    'Get OTP',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> loginUser(String phone, BuildContext context) async {
    FirebaseAuth auth = FirebaseAuth.instance;

    auth.verifyPhoneNumber(
        phoneNumber: phone,
        timeout: const Duration(seconds: 10),
        verificationCompleted: (AuthCredential credential) async {
          Navigator.of(context).pop();
          UserCredential result = await auth.signInWithCredential(credential);

          User? user = result.user;

          if (user != null) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const OTPScreen()));
          } else {
            debugPrint("Error");
          }
        },
        verificationFailed: (FirebaseAuthException exception) {
          debugPrint("Error: ${exception.message}");
        },
        codeSent: (String verificationId, int? resendToken) {
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context) {
              return AlertDialog(
                title: const Text("Enter the 6 digits code."),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    TextField(
                      decoration: const InputDecoration(
                        hintText: 'OTP Code',
                        fillColor: Colors.deepOrangeAccent,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.deepOrangeAccent,
                            width: 1,
                            style: BorderStyle.solid,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.deepOrangeAccent,
                            width: 1,
                            style: BorderStyle.solid,
                          ),
                        ),
                      ),
                      controller: _otpController,
                    ),
                  ],
                ),
                actions: <Widget>[
                  TextButton(
                    child: const Text("Confirm"),
                    onPressed: () async {
                      final code = _otpController.text.trim();
                      AuthCredential credential = PhoneAuthProvider.credential(
                          verificationId: verificationId, smsCode: code);

                      UserCredential result =
                          await auth.signInWithCredential(credential);

                      User? user = result.user;

                      if (user != null) {
                        FirebaseFirestore.instance
                            .collection('Users')
                            .doc(user.uid)
                            .set({
                          'phone': '+855${_phoneController.text.trim()}',
                          'uid': user.uid,
                        });
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomeScreen()));
                        // Navigate to your desired screen
                      } else {
                        debugPrint("Error");
                      }
                    },
                  )
                ],
              );
            },
          );
        },
        codeAutoRetrievalTimeout: (String verificationId) {});
  }
}
