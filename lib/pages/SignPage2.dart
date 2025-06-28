import 'package:flutter/material.dart';

class SignPage2 extends StatelessWidget {
  const SignPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.only(left: 1),
          child: Icon(Icons.arrow_back, size: 25),
        ),

        title: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(100)),
              child: Image.asset('assets/images/dp.png', height: 30, width: 30),
            ),
            SizedBox(width: 5),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Helena Hills', style: TextStyle(fontSize: 18)),
                Text(
                  'Active 11m ago',
                  style: TextStyle(fontSize: 12, color: Color(0xff000000)),
                ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.call), iconSize: 25),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.video_call),
            iconSize: 25,
          ),

          Padding(padding: EdgeInsets.only(right: 1)),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Flexible(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      child: Divider(
                        height: 40,
                        thickness: 1,
                        color: Colors.grey,
                      ),
                    ),
                    Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          width: MediaQuery.of(context).size.width,
                          height: 720,
                        ),

                        Positioned(
                          top: 110,
                          right: 20,

                          child: SizedBox(
                            height: 40,
                            width: 200,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(80),
                                    bottomLeft: Radius.circular(5),
                                    topRight: Radius.circular(100),
                                    bottomRight: Radius.circular(100),
                                  ), // <-- Radius
                                ),
                                padding: EdgeInsets.all(4),
                              ),
                              child: Text(
                                'This is the main chat template',
                                style: TextStyle(
                                  fontStyle: FontStyle.normal,
                                  fontSize: 13,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 270,
                          left: 80,

                          child: SizedBox(
                            height: 40,
                            width: 80,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xffE9E9EB),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(100),
                                    bottomRight: Radius.circular(100),
                                  ), // <-- Radius
                                ),
                                padding: EdgeInsets.all(4),
                              ),
                              child: Text(
                                'Cool',
                                style: TextStyle(
                                  fontStyle: FontStyle.normal,
                                  fontSize: 13,
                                  color: Colors.black,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 227,
                          left: 80,

                          child: SizedBox(
                            height: 40,
                            width: 80,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xffE9E9EB),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(150),
                                    bottomLeft: Radius.circular(30),
                                    topRight: Radius.circular(100),
                                    bottomRight: Radius.circular(100),
                                  ), // <-- Radius
                                ),
                                padding: EdgeInsets.all(4),
                              ),
                              child: Text(
                                'oh?',
                                style: TextStyle(
                                  fontStyle: FontStyle.normal,
                                  fontSize: 13,
                                  color: Colors.black,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 312,
                          left: 30,

                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(100),
                                ),
                                child: Image.asset(
                                  'assets/images/dp.png',
                                  height: 40,
                                  width: 40,
                                ),
                              ),
                              SizedBox(width: 10),
                              Container(
                                child: SizedBox(
                                  height: 36,
                                  width: 125,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xffE9E9EB),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(5),
                                          bottomLeft: Radius.circular(100),
                                          topRight: Radius.circular(100),
                                          bottomRight: Radius.circular(100),
                                        ), // <-- Radius
                                      ),
                                      padding: EdgeInsets.all(4),
                                    ),
                                    child: Text(
                                      'How does it work??',
                                      style: TextStyle(
                                        fontStyle: FontStyle.normal,
                                        fontSize: 13,
                                        color: Colors.black,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 400,
                          right: 20,

                          child: SizedBox(
                            height: 96,
                            width: 267,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(5),
                                  ), // <-- Radius
                                ),
                                padding: EdgeInsets.all(4),
                              ),
                              child: Text(
                                'You just edit any text to type in the conversation you want to show,and delete any bubbles you don’t want to use',
                                style: TextStyle(
                                  fontStyle: FontStyle.normal,
                                  fontSize: 13,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 500,
                          right: 20,

                          child: SizedBox(
                            height: 36,
                            width: 75,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                    topRight: Radius.circular(5),
                                    bottomRight: Radius.circular(20),
                                  ), // <-- Radius
                                ),
                                padding: EdgeInsets.all(4),
                              ),
                              child: Text(
                                'Boom!',
                                style: TextStyle(
                                  fontStyle: FontStyle.normal,
                                  fontSize: 13,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 590,
                          left: 40,

                          child: Container(
                            width: 400,
                            height: 136,

                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(left: 50),
                                  child: SizedBox(
                                    width: 80,
                                    height: 40,

                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Color(0xffE9E9EB),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(100),
                                            bottomRight: Radius.circular(100),
                                            bottomLeft: Radius.circular(2),
                                            topLeft: Radius.circular(80),
                                          ), // <-- Radius
                                        ),
                                        padding: EdgeInsets.all(4),
                                      ),
                                      child: Text(
                                        'Hmmmm',
                                        style: TextStyle(
                                          fontStyle: FontStyle.normal,
                                          fontSize: 14,
                                          color: Colors.black,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(padding: EdgeInsets.all(1)),
                                Container(
                                  padding: EdgeInsets.only(left: 50),
                                  child: SizedBox(
                                    width: 119,
                                    height: 36,

                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Color(0xffE9E9EB),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(100),
                                            bottomRight: Radius.circular(100),
                                            bottomLeft: Radius.circular(20),
                                            topLeft: Radius.circular(20),
                                          ), // <-- Radius
                                        ),
                                        padding: EdgeInsets.all(4),
                                      ),
                                      child: Text(
                                        'I think I get it.',
                                        style: TextStyle(
                                          fontStyle: FontStyle.normal,
                                          fontSize: 14,
                                          color: Colors.black,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(padding: EdgeInsets.all(1)),
                                Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(100),
                                      ),
                                      child: Image.asset(
                                        'assets/images/dp.png',
                                        height: 40,
                                        width: 40,
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Container(
                                      child: SizedBox(
                                        width: 247,
                                        height: 56,

                                        child: ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Color(0xffE9E9EB),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(20),
                                                bottomRight: Radius.circular(
                                                  20,
                                                ),
                                                bottomLeft: Radius.circular(20),
                                                topLeft: Radius.circular(5),
                                              ), // <-- Radius
                                            ),
                                            padding: EdgeInsets.all(4),
                                          ),
                                          child: Text(
                                            'Will head to the Help Center if I have more questions tho',
                                            style: TextStyle(
                                              fontStyle: FontStyle.normal,
                                              fontSize: 14,
                                              color: Colors.black,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 80,
              width: 1400,
              padding: EdgeInsets.all(16),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),

                  hintText: ' Write',
                  labelText: "Message...",
                  suffixIcon: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: Icon(Icons.image, color: Color(0xff828282)),
                        onPressed: () {},
                      ),

                      IconButton(
                        icon: Icon(
                          Icons.emoji_emotions,
                          color: Color(0xff828282),
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.speaker_phone_sharp,
                          color: Color(0xff828282),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
