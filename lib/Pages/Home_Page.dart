import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F6EE),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 310,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF272F50),
                    Color(0xFF222739)
                  ], // You can adjust these colors
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  image: const DecorationImage(
                                    image: AssetImage('images/logo2.png'),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.deepPurpleAccent),
                              width: 35,
                              height: 35,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            const Text(
                              'Mullet',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.qr_code_scanner_rounded,
                                size: 25,
                                color: Colors.white,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.notifications_active,
                                size: 25,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Text(
                        'Total Balance',
                        style: TextStyle(
                          color: Colors.grey.shade300,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text.rich(
                          TextSpan(
                            children: [
                              const TextSpan(
                                text: '\$70,344',
                                style: TextStyle(
                                  fontSize: 35,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                              TextSpan(
                                text: '.54',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.grey.shade400,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 45,
                          width: 110,
                          decoration: BoxDecoration(
                            color: const Color(0xFF4957E1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                            child: Text(
                              'Withdraw',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 45.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            height: 50,
                            width: 150,
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 20,
                                  child: Image(
                                    image: AssetImage('images/arrows.png'),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Receive',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Poppins'),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: const Color(0xFF4957E1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            height: 50,
                            width: 150,
                            child: const Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 25,
                                    child: Image(
                                      color: Colors.white,
                                      image: AssetImage('images/send.png'),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Transfer',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Poppins'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: double.infinity,
                color: Colors.grey.shade100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text(
                        'Overview',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            fontFamily: 'Poppins'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                            width: 170,
                            height: 150,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: const Color(0xFF4957E1),
                                      ),
                                      height: 40,
                                      width: 40,
                                      child: const Icon(
                                        Icons.arrow_upward_rounded,
                                        color: Colors.white,
                                        size: 24,
                                      ),
                                    ),
                                    const Text(
                                      "+12.5%",
                                      style: TextStyle(
                                        color: Color(0xFF4957E1),
                                      ),
                                    ),
                                  ],
                                ),
                                // SizedBox(
                                //   height: 20,
                                // ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        '\$79137',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24,
                                        ),
                                      ),
                                      Text(
                                        'Received',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 12,
                                          color: Colors.grey.shade600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                            width: 170,
                            height: 150,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.red,
                                      ),
                                      height: 40,
                                      width: 40,
                                      child: const Icon(
                                        Icons.arrow_downward_rounded,
                                        color: Colors.white,
                                        size: 24,
                                      ),
                                    ),
                                    const Text(
                                      "+12.5%",
                                      style: TextStyle(
                                        color: Colors.red,
                                      ),
                                    ),
                                  ],
                                ),
                                // SizedBox(
                                //   height: 20,
                                // ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        '\$61551',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24,
                                        ),
                                      ),
                                      Text(
                                        'Transfer',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 12,
                                          color: Colors.grey.shade600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        width: double.infinity,
                        height: 140,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Recent Transfer,',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    'View all',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF4957E1),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      color: Colors.teal,
                                      image: const DecorationImage(
                                        image: AssetImage(
                                          'images/avatar 1.webp',
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                      border: Border.all(
                                        width: 2,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    padding: const EdgeInsets.all(25),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      color: Colors.teal,
                                      image: const DecorationImage(
                                        image: AssetImage(
                                          'images/avatar 2.jpeg',
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                      border: Border.all(
                                        width: 2,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    padding: const EdgeInsets.all(25),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      color: Colors.teal,
                                      image: const DecorationImage(
                                        image: AssetImage(
                                          'images/avatar 3.jpeg',
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                      border: Border.all(
                                        width: 2,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    padding: const EdgeInsets.all(25),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      color: Colors.teal,
                                      image: const DecorationImage(
                                        image: AssetImage(
                                          'images/avatar 4.jpeg',
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                      border: Border.all(
                                        width: 2,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    padding: const EdgeInsets.all(25),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Colors.white60,
                                      border: Border.all(
                                        width: 2,
                                        color: const Color(0xFF4957E1),
                                      ),
                                    ),
                                    padding: const EdgeInsets.all(10),
                                    child: const Icon(
                                      Icons.search,
                                      size: 32,
                                      color: Color(0xFF4957E1),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
