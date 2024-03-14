import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:paymentwallet/Screens/Homescreen.dart';
import 'package:pinput/pinput.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff9f6ee),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 0,
        backgroundColor: Colors.deepOrangeAccent,
        title: const Text(
          'OTP Verification',
          style: TextStyle(fontFamily: 'Poppins', color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'OTP Code Verification',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Enter the 6 digits code we sent you.',
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'Poppins',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Didn\'t receive code?'),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Resend Code',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 12,
                      color: Colors.deepOrangeAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFFE0E0E0),
                ),
                height: 90,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Pinput(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    length: 6,
                    showCursor: true,
                    defaultPinTheme: PinTheme(
                      height: 60,
                      width: 56,
                      textStyle: const TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFFE8B8AC),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: const Color(0xFFE8B8AC),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(const Size(100, 50)),
                backgroundColor:
                    MaterialStateProperty.all(const Color(0xFFF09D8B)),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              onPressed: () {},
              child: const Text(
                'Verify',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
