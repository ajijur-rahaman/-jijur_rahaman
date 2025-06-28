import 'package:flutter/material.dart';

class Appbar extends StatelessWidget {
  const Appbar({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(130),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.teal,
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
          title: Text('Explore World'),
          centerTitle: true,
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 12),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://scontent.fcgp27-1.fna.fbcdn.net/v/t39.30808-6/467846231_8696783947105749_4392796007910259771_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeGAUaYmOtlokXMVS_ZlGQRhCIQS9hVP9QsIhBL2FU_1C-cFqZp4w5PFP5DtSz4XjNZZfwRqXYXr4LtkufY1bvd4&_nc_ohc=v0spCEFhSCoQ7kNvwHR6SLM&_nc_oc=AdlE3PQyIw1MR7C0qumI5mGaod32snhybBk-_bh_7_bdPDV6HqNoTz55hCrf1mcyXcA8RypnKprPMQRjviqcpvBx&_nc_zt=23&_nc_ht=scontent.fcgp27-1.fna&_nc_gid=TKYt1olmcmYHts7UpYzm8w&oh=00_AfFRCgt2sfQfKWpptydR-d4J2IurxYMDCimvMU0nUjPYnQ&oe=6816B318',
                ),
              ),
            ),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(60),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search Decoration',
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(vertical: 10),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      body: Center(child: Text("Welcome to the Travel App!")),
    );
  }
}
 //Custom Travel App Style