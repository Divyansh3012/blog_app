import 'package:blogg_app/pages/profile.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey,
      child: Column(
        children: [
          // header
          DrawerHeader(child: Icon(Icons.account_circle_rounded, size: 40,)),

          //title
          Padding(
            padding: const EdgeInsets.only(left: 25.0 ),
            child: ListTile(
              leading: Icon(Icons.home),
              title: Text("H O M E"),
              onTap: (){
                Navigator.pop(context);
              },
            ),
          ),


          Padding(
            padding: const EdgeInsets.only(left: 25.0 ),
            child: ListTile(
              leading: Icon(Icons.account_circle_rounded),
              title: Text("P R O F I L E"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
              },
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 25.0 ),
            child: ListTile(
              leading: Icon(Icons.add),
              title: Text("A D D  B L O G"),
              onTap: (){
                Navigator.pop(context);
              },
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 25.0 ),
            child: ListTile(
              leading: Icon(Icons.logout),
              title: Text("L O G O U T"),
              onTap: (){
                Navigator.pop(context);
              },
            ),
          ),

          
        ],
      ),
    );
  }
}
