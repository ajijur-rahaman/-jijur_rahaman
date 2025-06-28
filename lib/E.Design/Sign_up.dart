import 'package:flutter/material.dart';
import 'Log_In.dart';

class Sign_up extends StatelessWidget {
  const Sign_up({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(30),
          child: SingleChildScrollView(
            child: Container(
              width: double.infinity,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30),
                  Text('Create', style: TextStyle(fontSize: 24)),
                  SizedBox(height: 10),
                  Text('your account', style: TextStyle(fontSize: 20)),
                  SizedBox(height: 20),

                  Container(
                    height: 220,
                    color: Colors.white,
                    child: Column(
                      children: [
                        fieldItems(hintText: 'Enter your name'),

                        fieldItems(hintText: 'Email address'),

                        fieldItems(hintText: 'Password'),

                        fieldItems(hintText: 'Confirm password'),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 147,
                      height: 51,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                        ),
                        onPressed: () {},
                        child: Text(
                          'SIGN UP',
                          style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'or sign up with',
                      style: TextStyle(color: Color(0xff000000), fontSize: 12),
                    ),
                  ),
                  SizedBox(height: 10),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 180,
                      height: 50,

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          circleItems(image: 'assets/images/apple.png'),
                          SizedBox(width: 5),
                          circleItems(image: 'assets/images/dp6.jpg'),
                          SizedBox(width: 5),
                          circleItems(image: 'assets/images/Facebook_Lite.png'),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 60),
                  Align(
                    alignment: Alignment.center,
                    child: Text.rich(
                      TextSpan(
                        text: 'Already have account?  ',
                        style: TextStyle(fontSize: 16),
                        children: [
                          WidgetSpan(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Log_In(),
                                  ),
                                );
                              }, //one page to another page.
                              child: Text(
                                'Log In',
                                style: TextStyle(
                                  color: Colors.black,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class fieldItems extends StatelessWidget {
  String hintText;
  fieldItems({required this.hintText, super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 12),

          border: UnderlineInputBorder(
            borderSide: BorderSide(width: 0.5, color: Colors.grey),
          ),
        ),
      ),
    );
  }
}

class circleItems extends StatelessWidget {
  String image;
  circleItems({required this.image, super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.grey.withOpacity(0.3), width: 1.5),
      ),
      child: ClipOval(
        child: Image.asset(image, width: 30, height: 30, fit: BoxFit.cover),
      ),
    );
  }
}
