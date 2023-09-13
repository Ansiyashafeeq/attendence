import 'package:flutter/material.dart';

class Navdrawer extends StatefulWidget {
  const Navdrawer({Key? key}) : super(key: key);

  @override
  State<Navdrawer> createState() => _NavdrawerState();
}

class _NavdrawerState extends State<Navdrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xFF547E7A),
      elevation: 0,
      width: 180,
      child: ListView(
        children: [
          // UserAccountsDrawerHeader(accountName: Text('name '),
          //   accountEmail: Text('email@gmAIL.com'),
          //   currentAccountPicture: CircleAvatar(child: ClipOval(child: Image.asset(''),
          //   ),),
          //   decoration: BoxDecoration(color: Colors.blueGrey),
          // ),
          //
          // CircleAvatar(child: Image.asset('assets/logobgremove.png'),radius:45,backgroundColor: Colors.transparent,),
          // SizedBox(height: 10,),
          // Padding(
          //   padding: const EdgeInsets.only(right: 5),
          //   child: Padding(
          //     padding: const EdgeInsets.all(5),
          //     child: Column(
          //       crossAxisAlignment: CrossAxisAlignment.center,
          //       children: [
          //         Text('RAJAS DENTAL COLLEGE AND HOSPITAL',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color:Colors.black ),),
          //         //  Text(' COLLEGE AND HOSPITAL',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color:Colors.black ),),
          //       ],
          //     ),
          //   ),
          // ),
          SizedBox(height: 25,),
          ListTile(
            leading: Icon(Icons.dashboard,size: 25,color: Colors.white70,),
            title: Text(
              'Dashboard',
              style: TextStyle(color: Colors.white,fontSize: 17),
            ),
          ),
          ListTile(
            leading: Icon(Icons.school,size: 25,color: Colors.white70,),
            title: Text(
              'Student',
              style: TextStyle(color: Colors.white,fontSize: 17),
            ),
          ),
          ListTile(
            leading: Icon(Icons.book,size: 25,color: Colors.white70,),
            title: Text(
              'Teacher',
              style: TextStyle(color: Colors.white,fontSize: 17),
            ),
          ),
          ListTile(
            leading: Icon(Icons.report,size: 25,color: Colors.white70,),
            title: Text(
              'Reports',
              style: TextStyle(color: Colors.white,fontSize: 17),
            ),
          ),
          ListTile(
            leading: Icon(Icons.settings,size: 25,color: Colors.white70,),
            title: Text(
              'Settings',
              style: TextStyle(color: Colors.white,fontSize: 17),

            ),
          ),
          // ListTile(
          //   title: Text(
          //     'Manage Promotion',
          //     style: TextStyle(color: Colors.white,fontSize: 17),
          //   ),
          // ),
          // ListTile(
          //   title: Text(
          //     'Login',
          //     style: TextStyle(color: Colors.white,fontSize: 17),
          //   ),
          // ),
        ],
      ),
    );
  }
}
