import 'package:flutter/material.dart';
import 'package:learning_ai/E.Design/F_Password.dart';

class C_NewPass extends StatefulWidget {
  @override
  State<C_NewPass> createState() => C_NewPassState();
}

class C_NewPassState extends State<C_NewPass> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  List<String> labels = [' Password ', 'Confirm Password'];
  bool _obscureText1 = true;
  bool _obscureText2 = true;
  void toggleVisibility(int index) {
    setState(() {
      if (index == 0) {
        _obscureText1 = !_obscureText1;
      } else {
        _obscureText2 = !_obscureText2;
      }
    });
  }

  @override
  void dispose() {
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(30),
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
                        MaterialPageRoute(builder: (context) => F_Password()),
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
                      "Create new password",
                      style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Your new password must be different from previously used password',
                      style: TextStyle(fontSize: 17),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Column(
                children: [
                  BuildPasswordField(
                    controller: passwordController,
                    onToggle: () {
                      toggleVisibility(0);
                    },
                    label: labels[0],
                    obscureText: _obscureText1,
                  ),
                  BuildPasswordField(
                    controller: confirmPasswordController,
                    onToggle: () {
                      toggleVisibility(1);
                    },
                    label: labels[1],
                    obscureText: _obscureText2,
                  ),
                ],
              ),
              SizedBox(height: 80),
              Align(
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: () {
                    showCustomOverlay(context);
                  },
                  child: Text('Confirm'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BuildPasswordField extends StatelessWidget {
  final TextEditingController controller;
  final bool obscureText;
  final String label;
  final VoidCallback onToggle;
  const BuildPasswordField({
    required this.controller,
    required this.onToggle,
    required this.label,
    required this.obscureText,
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Padding(
        padding: EdgeInsets.only(bottom: 5),
        child: TextField(
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
            hintText: label,

            suffixIcon: IconButton(
              onPressed: onToggle,
              icon: Icon(obscureText ? Icons.visibility_off : Icons.visibility),
            ),
            hintStyle: TextStyle(fontSize: 12),
            border: UnderlineInputBorder(
              borderSide: BorderSide(width: 0.5, color: Colors.grey),
            ),
          ),
        ),
      ),
    );
  }
}

late OverlayEntry overlayEntry;
void showCustomOverlay(BuildContext context) {
  overlayEntry = OverlayEntry(
    builder:
        (context) => Positioned(
          top: 420,
          right: 50,
          left: 50,
          child: Material(
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50),
                  topLeft: Radius.circular(40),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundColor: Color(0xffFAFAFA),
                    child: Icon(Icons.send),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Your password has been changed',
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Welcome back! Discover now!',
                    style: TextStyle(fontSize: 10),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 40,
                    width: 250,
                    child: ElevatedButton(
                      onPressed: () {
                        overlayEntry.remove();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                      ),
                      child: Text('Browse home'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
  );
  Overlay.of(context).insert(overlayEntry);
}
