import 'package:attendence/navdrawer.dart';
import 'package:flutter/material.dart';

import 'notifications.dart';

void main() {
  runApp(MaterialApp(
    home: Attendence(),
    debugShowCheckedModeBanner: false,
  ));
}

class Attendence extends StatefulWidget {
  const Attendence({Key? key}) : super(key: key);

  @override
  State<Attendence> createState() => _AttendenceState();
}

class _AttendenceState extends State<Attendence> {
  bool mark1 = false;
  bool mark2 = false;
  bool mark3 = false;
  bool mark4 = false;
  bool mark5 = false;
  bool mark6 = false;
  bool mark7 = false;
  bool mark8 = false;
  bool mark9 = false;
  bool _customTileExpanded = false;
   String  _selectedItem='UG';
  String  _selectedItem1='Bachelor of Dental Reconsruction';
  String  _selectedItem2='2022-2025';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF3b8799),
        title: Text(
          'Attendence',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        actions: [
          InkWell(child: Icon(Icons.notifications,size: 25,color: Colors.white,),
            onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Noti()));
            },

          )
        ],
        elevation: 0,
      ),
      backgroundColor: Colors.grey.shade200,
      drawer: Navdrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, right: 26, left: 26),
              child: Container(
                height: 600,
                width: 400,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 15,
                          spreadRadius: 5),
                    ]),
                child: Column(
                  children: [

                    ExpansionTile(
                      title:     Text(
                      'Bachelor of Dental Reconstruction',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),



                      subtitle:  Text(  '2022-2025',
                        style: TextStyle(
                            fontSize: 16,
                         color: Colors.black,fontWeight: FontWeight.bold
                      ),
                      ),
                      trailing: Icon(
                        _customTileExpanded
                            ? Icons.arrow_drop_down_circle
                            : Icons.arrow_drop_down,size: 40,color:Color(0xFF3b8799)  ,
                      ),
                      children: [
                        Column(

                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text('TYPE',style: TextStyle(fontSize: 14,color: Colors.black),),
                                SizedBox(width: 50,),
                                DropdownButton <String>(
                                  value: _selectedItem,
                                  onChanged: ( newValue) {
                                    setState(() {
                                      _selectedItem = newValue!;
                                    });
                                  },
                                  items: <String>['UG', 'PG', 'Phd', ]
                                      .map<DropdownMenuItem<String>>((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                  hint: Text('TYPE'),



                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text('COURSE',style: TextStyle(fontSize: 14,color: Colors.black),),
                                DropdownButton <String>(
                                  value: _selectedItem1,
                                  onChanged: ( newValue1) {
                                    setState(() {
                                      _selectedItem1 = newValue1!;
                                    });
                                  },
                                  items: <String>['Bachelor of Dental Reconsruction', 'Bachelor of dental surgeon',  ]
                                      .map<DropdownMenuItem<String>>((String value2) {
                                    return DropdownMenuItem<String>(
                                      value: value2,
                                      child: Text(value2,style: TextStyle(fontSize: 13),),
                                    );
                                  }).toList(),
                                  hint: Text('course'),



                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text('BATCH',style: TextStyle(fontSize: 14,color: Colors.black),),
                                SizedBox(width: 50,),
                                DropdownButton <String>(
                                  value: _selectedItem2,
                                  onChanged: ( newValue2) {
                                    setState(() {
                                      _selectedItem2 = newValue2!;
                                    });
                                  },
                                  items: <String>['2022-2025', '2023-2026' , ]
                                      .map<DropdownMenuItem<String>>((String value1) {
                                    return DropdownMenuItem<String>(
                                      value: value1,
                                      child: Text(value1),
                                    );
                                  }).toList(),
                                  hint: Text('batch'),



                                ),
                              ],
                            ),
                          ],
                        )


                        // ListTile(title: Text('This is tile number 2')),
                      ],
                      onExpansionChanged: (bool expanded) {
                        setState(() {
                          _customTileExpanded = expanded;
                        });
                      },
                    ),









                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                    //   children: [
                    //     Text(
                    //       'Bachelor of Dental Reconstruction',
                    //       style: TextStyle(
                    //           fontSize: 16,
                    //           color: Colors.black,
                    //           fontWeight: FontWeight.bold),
                    //     ),
                    //     Icon(Icons.arrow_drop_down_sharp,size: 40,color:Color(0xFF3b8799) ,)
                    //   ],
                    // ),
                    SizedBox(height: 10,),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.grey.shade300,
                        ),
                      height: 45,

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('NO'),
                        Text('Student'),
                        Text('Session1'),
                        Text('Session2',),
                        Text('Session3'),
                      ],
                    ),),
                    // ListTile(
                    //
                    //   leading: Text('No',style: TextStyle(fontSize: 17,color: Colors.black),),
                    //   title: Text('Student',style: TextStyle(fontSize:17,color: Colors.black)),
                    //   trailing: Container(
                    //     child: Row(
                    //       children: [
                    //         Text('ed'),
                    //         Text('dd')
                    //       ],
                    //     ),
                    //   )

                      //   Row(
                    //      mainAxisAlignment: MainAxisAlignment.end,
                    //     children: [
                    // //       // Checkbox(
                    // //       //   value: mark,
                    // //       //   activeColor: Colors.grey,
                    // //       //   onChanged: (value) {
                    // //       //     setState(() {
                    // //       //       mark = !mark;
                    // //       //     });
                    // //       //   },
                    // //       // ),
                    // //       // Checkbox(
                    // //       //   value: mark,
                    // //       //   activeColor: Colors.grey,
                    // //       //   onChanged: (value) {
                    // //       //     setState(() {
                    // //       //       mark = !mark;
                    // //       //     });
                    // //       //   },
                    // //       // ),
                    // //       // Checkbox(
                    // //       //   value: mark,
                    // //       //   activeColor: Colors.grey,
                    // //       //   onChanged: (value) {
                    // //       //     setState(() {
                    // //       //       mark = !mark;
                    // //       //     });
                    // //       //   },
                    // //       // ),
                    //       Text('sess1',style: TextStyle(color: Colors.black,fontSize: 10),),
                    //       SizedBox(width: 5,),
                    //       Text('sess2',style: TextStyle(color: Colors.black,fontSize: 10),),
                    //     ],
                    //   ),
                    // ),
                    SizedBox(height: 5,),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey.shade200,
                      ),
                      height: 45,

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('1'),
                          Text('name'),
                                Checkbox(
                                  value: mark1,
                                  activeColor: Colors.green,
                                  onChanged: (value) {
                                    setState(() {
                                      mark1 = !mark1;
                                    });
                                  },
                                ),
                                Checkbox(
                                  value: mark2,
                                  activeColor: Colors.green,
                                  onChanged: (value) {
                                    setState(() {
                                      mark2 = !mark2;
                                    });
                                  },
                                ),
                                Checkbox(
                                  value: mark3,
                                  activeColor: Colors.grey,
                                  onChanged: (value) {
                                    setState(() {
                                      mark3 = !mark3;
                                    });
                                  },
                                ),
                        ],
                      ),),
                    SizedBox(height: 5,),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey.shade200,
                      ),
                      height: 45,

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('2'),
                          Text('name'),
                          Checkbox(
                            value: mark4,
                            activeColor: Colors.green,
                            onChanged: (value) {
                              setState(() {
                                mark4 = !mark4;
                              });
                            },
                          ),
                          Checkbox(
                            value: mark5,
                            activeColor: Colors.green,
                            onChanged: (value) {
                              setState(() {
                                mark5 = !mark5;
                              });
                            },
                          ),
                          Checkbox(
                            value: mark6,
                            activeColor: Colors.green,
                            onChanged: (value) {
                              setState(() {
                                mark6 = !mark6;
                              });
                            },
                          ),
                        ],
                      ),),  SizedBox(height: 5,),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey.shade200,
                      ),
                      height: 45,

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('3'),
                          Text('name'),
                          Checkbox(
                            value: mark7,
                            activeColor: Colors.green,
                            onChanged: (value) {
                              setState(() {
                                mark7 = !mark7;
                              });
                            },
                          ),
                          Checkbox(
                            value: mark8,
                            activeColor: Colors.green,
                            onChanged: (value) {
                              setState(() {
                                mark8 = !mark8;
                              });
                            },
                          ),
                          Checkbox(
                            value: mark9,
                            activeColor: Colors.green,
                            onChanged: (value) {
                              setState(() {
                                mark9 = !mark9;
                              });
                            },
                          ),
                        ],
                      ),),
                        SizedBox(height: 45,),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: SizedBox(
                          width: 100,
                          child: ElevatedButton(onPressed: (){
                           // Navigator.push(context, MaterialPageRoute(builder: (context)=> Navigation()));
                          },
                              style:ButtonStyle(
                                  foregroundColor: MaterialStateProperty.all(Colors.white),
                                  backgroundColor: MaterialStateProperty.all( Colors.teal.shade400),
                                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(24),
                                  )
                                  )
                              )
                              ,child: Padding(
                                padding: const EdgeInsets.all(14),
                                child: Text('Save',style: TextStyle(
                                    fontSize: 16,color: Colors.black
                                ),),
                              )
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
