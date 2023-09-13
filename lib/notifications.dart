import 'package:flutter/material.dart';
class Noti extends StatefulWidget {
  const Noti({Key? key}) : super(key: key);

  @override
  State<Noti> createState() => _NotiState();
}

class _NotiState extends State<Noti> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.white),),
        backgroundColor:  Color(0xFF3b8799),
        elevation: 0,
      ),
    );
  }
}
