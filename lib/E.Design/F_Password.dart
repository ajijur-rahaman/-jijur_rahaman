import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Log_In.dart';

class F_Password extends StatelessWidget {
  const F_Password({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(25),
        child: Container(
          width: double.infinity,

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                elevation: 4,
                child: Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Log_In()),
                      );
                    },
                    child: Icon(Icons.arrow_back_ios_new),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Forgot password?",
                      style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Enter email associated with your account and we’ll send and email with intructions to reset your password',
                      style: TextStyle(fontSize: 17),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 60),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your email here',
                  hintStyle: TextStyle(fontSize: 15),
                  prefixIcon: Icon(Icons.email_outlined, color: Colors.grey),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 0.2,
                      color: Color(0xffEFEFF4),
                    ),
                  ),
                ), //textInputAction: TextInputAction.next,
                // keyboardType: TextInputType.number,
                // inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
