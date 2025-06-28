import 'package:flutter/material.dart';

class SignPage extends StatelessWidget {
  const SignPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,

              alignment: Alignment.bottomCenter,

              child: Text(
                'App name',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 50),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(33),
              ),
              child: Column(
                children: [
                  Text(
                    'Create an account',
                    style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Enter your email to sign up for this app',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 40),
                  Container(
                    height: 50,
                    width: 500,

                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue, width: 2),
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                        ),
                        fillColor: Color(0xffFFFFFF),
                        hintText: 'email@domin.com',
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  SizedBox(
                    height: 40,
                    width: 500,

                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        elevation: 500,

                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30), // <-- Radius
                        ),
                        padding: EdgeInsets.all(4),
                      ),
                      child: Text(
                        'Continue',
                        style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontSize: 16,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.grey,
                          thickness: 1,
                          indent: 50,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Text('or'),
                      ),

                      Expanded(
                        child: Divider(
                          color: Colors.grey,
                          thickness: 1,
                          endIndent: 50,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 50),
                  SizedBox(
                    height: 40,
                    width: 500,

                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        elevation: 500,

                        backgroundColor: Color(0xffEEEEEE),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30), // <-- Radius
                        ),
                        padding: EdgeInsets.all(4),
                      ),

                      child: Row(
                        spacing: 5,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.email,
                            size: 30,
                            color: Colors.amberAccent,
                          ),
                          Container(
                            child: Text(
                              'Continue with Google',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    height: 40,
                    width: 500,

                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        elevation: 500,

                        backgroundColor: Color(0xffEEEEEE),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30), // <-- Radius
                        ),
                        padding: EdgeInsets.all(4),
                      ),
                      child: Row(
                        spacing: 5,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.apple, size: 30),
                          Container(
                            child: Text(
                              'Continue with Apple',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Text.rich(
                    TextSpan(
                      text: 'By clicking continue, you agree to our ',
                      children: <InlineSpan>[
                        TextSpan(
                          text: 'Terms of Service',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text.rich(
                    TextSpan(
                      text: 'and ',
                      children: <InlineSpan>[
                        TextSpan(
                          text: 'Privacy Policy',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Flexible(
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.center,
                  //     children: [
                  //       Text(
                  //         "By clicking continue, you agree to our",
                  //         style: TextStyle(fontSize: 16),
                  //         selectionColor: Color(0xff828282),
                  //       ),
                  //       SizedBox(width: 5),
                  //       Text(
                  //         'Terms of Service',
                  //         style: TextStyle(
                  //           fontSize: 18,
                  //           fontStyle: FontStyle.normal,
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     SizedBox(width: 50),
                  //     Text(
                  //       "and",
                  //       style: TextStyle(fontSize: 16),
                  //       selectionColor: Color(0xff828282),
                  //     ),
                  //     SizedBox(width: 5),
                  //     Text(
                  //       'Privacy Policy',
                  //       style: TextStyle(
                  //         fontSize: 18,
                  //         fontStyle: FontStyle.normal,
                  //       ),
                  //       textAlign: TextAlign.center,
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
