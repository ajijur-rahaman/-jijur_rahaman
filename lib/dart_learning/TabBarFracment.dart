import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_ai/Fragment/Emailfragment.dart';
import 'package:learning_ai/Fragment/Facefragment.dart';
import 'package:learning_ai/Fragment/Homefragment.dart';
import 'package:learning_ai/Fragment/Messagefragment.dart';
import 'package:learning_ai/Fragment/Phonefragment.dart';
import 'package:learning_ai/Fragment/Roundedfragment.dart';
import 'package:learning_ai/Fragment/Settingfragment.dart';

class TabBarFracment extends StatelessWidget {
  const TabBarFracment({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Flutter"),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: "Home"),
              Tab(icon: Icon(Icons.settings), text: "Settings"),
              Tab(icon: Icon(Icons.message), text: "Message"),
              Tab(icon: Icon(Icons.email), text: "Email"),
              Tab(icon: Icon(Icons.phone), text: "Phone"),
              Tab(icon: Icon(Icons.face), text: "face"),
              Tab(icon: Icon(Icons.abc_rounded), text: "Rounded"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Emailfragment(),
            Facefragment(),
            Homefragment(),
            Messagefragment(),
            Phonefragment(),
            Roundedfragment(),
            Settingfragment(),
          ],
        ),
      ),
    );
  }
}

//  TabBar(
//                 tabs: [
//                   Tab(icon: Icon(Icons.home), text: "Home"),
//                   Tab(icon: Icon(Icons.settings), text: "Settings"),
//                   Tab(icon: Icon(Icons.message), text: "Message"),
//                   Tab(icon: Icon(Icons.email), text: "Email"),
//                   Tab(icon: Icon(Icons.phone), text: "Phone"),
//                   Tab(icon: Icon(Icons.face), text: "face"),
//                   Tab(icon: Icon(Icons.abc_rounded), text: "Rounded"),
//                 ],
//               ),

// TabBarView(
//                 children: [
//                   Emailfragment(),
//                   Facefragment(),
//                   Homefragment(),
//                   Messagefragment(),
//                   Phonefragment(),
//                   Roundedfragment(),
//                   Settingfragment(),
//                 ],
//               ),
