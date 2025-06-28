import 'package:flutter/material.dart';

class Practice1 extends StatelessWidget {
  const Practice1({super.key});
  MySnackbar(message, context) {
    return ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Inventory App",
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
        titleSpacing: 20,
        toolbarHeight: 70,
        toolbarOpacity: 1,
        backgroundColor: Colors.blue,
        actions: [
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: IconButton(
              onPressed: () {
                MySnackbar("I am email", context);
              },
              icon: Icon(Icons.email),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: IconButton(
              onPressed: () {
                MySnackbar("I am comment", context);
              },
              icon: Icon(Icons.comment),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: IconButton(
              onPressed: () {
                MySnackbar("I am search", context);
              },
              icon: Icon(Icons.search),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: IconButton(
              onPressed: () {
                MySnackbar("I am setting", context);
              },
              icon: Icon(Icons.settings),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        elevation: 10,
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
        onPressed: () {
          MySnackbar("I am floating action button", context);
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                accountName: Text("Md.Ajijur Rahaman"),
                accountEmail: Text("ajij3991@gmail.com"),
                currentAccountPicture: Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                    child: Image.network(
                      'https://scontent.fcgp27-1.fna.fbcdn.net/v/t39.30808-6/467846231_8696783947105749_4392796007910259771_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeGAUaYmOtlokXMVS_ZlGQRhCIQS9hVP9QsIhBL2FU_1C-cFqZp4w5PFP5DtSz4XjNZZfwRqXYXr4LtkufY1bvd4&_nc_ohc=v0spCEFhSCoQ7kNvwH6Pi79&_nc_oc=AdmjYxXbhJCu-GETo6RWbGkhmjwV6Y5fSPEFv9BVYeS04dFitpb4UDvPtmSZ8KFkatI8YgiBV3RurPfn-3Fh_mCv&_nc_zt=23&_nc_ht=scontent.fcgp27-1.fna&_nc_gid=85OBzeTLFDwX_P_r9Pvukg&oh=00_AfElWIo_uOhdZXjrCJAhn9Z1p5q_qG4D1egIWrScTaxE8A&oe=6816B318',
                      height: 30,
                      width: 30,
                    ),
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                MySnackbar("I am Home", context);
              },
            ),

            ListTile(
              leading: Icon(Icons.phone),
              title: Text("Email"),
              onTap: () {
                MySnackbar("I am Email", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("Phone"),
              onTap: () {
                MySnackbar("I am Phone", context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
