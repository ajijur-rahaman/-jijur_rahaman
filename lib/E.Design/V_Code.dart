import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'F_Password.dart';
import 'dart:async';

class V_Code extends StatefulWidget {
  const V_Code({super.key});
  @override
  State<V_Code> createState() => _V_CodeState();
}

class _V_CodeState extends State<V_Code> {
  final List<FocusNode> _focusNodes = List.generate(4, (_) => FocusNode());
  final List<TextEditingController> _controllers = List.generate(
    4,
    (_) => TextEditingController(),
  ); //Making Focus & Controller for per TextField//
  int _secondsRemaining = 60;
  bool _canResend = false;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _secondsRemaining = 60;
    _canResend = false;
    _timer?.cancel(); //Ager Timer Bondo//
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_secondsRemaining > 0) {
        setState(() {
          _secondsRemaining--;
        });
      } else {
        setState(() {
          _canResend = true;
        });
        timer.cancel();
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    for (var controller in _controllers) {
      controller.dispose();
    }
    for (var focusNode in _focusNodes) {
      focusNode.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
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
                      "Verification code",
                      style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Please enter the verification code we sent to your email address',
                      style: TextStyle(fontSize: 17),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(4, (index) {
                  return textCircleField(
                    controller: _controllers[index],
                    focusNode: _focusNodes[index],
                    nextFocusNode: index < 3 ? _focusNodes[index + 1] : null,
                  );
                }),
              ),
              SizedBox(height: 40),
              Container(
                child:
                    _canResend
                        ? TextButton(
                          onPressed: () {
                            _startTimer();
                          },
                          child: Text('Resend Code'),
                        )
                        : Text(
                          'Resend Code in 00:${_secondsRemaining.toString().padLeft(2, '0')}',
                          style: TextStyle(color: Colors.grey),
                        ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

////CircleTextField Widget//////////////
class textCircleField extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final FocusNode? nextFocusNode;
  const textCircleField({
    required this.controller,
    required this.focusNode,
    required this.nextFocusNode,
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10),
      child: Container(
        width: 60,
        height: 60, // উচ্চতা নির্ধারণ
        child: TextField(
          controller: controller,
          focusNode: focusNode,
          textAlign: TextAlign.center,
          keyboardType: TextInputType.number,
          style: TextStyle(fontSize: 20),
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
            LengthLimitingTextInputFormatter(1),
          ],
          onChanged: (value) {
            if (value.isNotEmpty && nextFocusNode != null) {
              FocusScope.of(context).requestFocus(nextFocusNode);
            }
          },
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 40),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100), // height/2 = 25
              borderSide: BorderSide(
                width: 0.5,
                color: Colors.grey.withOpacity(1),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
