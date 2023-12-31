import 'package:flutter/material.dart';

import 'AllDays.dart';

class DisplayScreen extends StatefulWidget {
  const DisplayScreen({Key? key}) : super(key: key);

  @override
  State<DisplayScreen> createState() => _DisplayScreenState();
}

class _DisplayScreenState extends State<DisplayScreen> {
  String isSelect = 'show';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xFFF5F5F5),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 120,
          elevation: 0,
          backgroundColor: Color(0xFFF5F5F5),
          centerTitle: true,
          title: Text(
            'Sleep  Mode',
            style: TextStyle(
              fontSize: 32,
              color: Color(0xFF484852),
            ),
          ),
        ),
        body: Padding(
            padding: EdgeInsets.only(bottom: 25.0, top: 8, left: 8, right: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xffd9d9d9)),
                  child: ListTile(
                      title: Text(
                        'Tap to show',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      subtitle: Text(
                        'Always On Display will turn on with a tab',
                        style:
                            TextStyle(fontSize: 15, color: Color(0xFF757373)),
                      ),
                      trailing: Radio(
                          activeColor: Colors.black,
                          value: isSelect,
                          groupValue: 'show',
                          onChanged: (value) {
                            isSelect = 'show';
                            setState(() {});
                          })),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xffd9d9d9)),
                  child: Column(
                    children: [
                      ListTile(
                          title: Text(
                            'Scheduled',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          trailing: Radio(
                              activeColor: Colors.black,
                              value: isSelect,
                              groupValue: 'Scheduled',
                              onChanged: (value) {
                                isSelect = 'Scheduled';
                                setState(() {});
                              })),
                      isSelect != 'Scheduled'
                          ? Container()
                          : Column(
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 15.0),
                                  child:
                                      Divider(thickness: 1, color: Colors.grey),
                                ),
                                ListTile(
                                    title: Text(
                                      'Start',
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                      ),
                                    ),
                                    trailing: Text('6:00 am',
                                        style: TextStyle(
                                          fontSize: 14,
                                        ))),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 15.0),
                                  child:
                                      Divider(thickness: 1, color: Colors.grey),
                                ),
                                ListTile(
                                  title: Text(
                                    'End',
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                  trailing: Text('10:00 am',
                                      style: TextStyle(
                                        fontSize: 14,
                                      )),
                                )
                              ],
                            ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xffd9d9d9)),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '   Repeat',
                          style: TextStyle(fontSize: 20),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AlarmScreen(),
                                ));
                          },
                          child: Icon(
                            Icons.arrow_right,
                            size: 50,
                            color: Colors.black,
                          ),
                        )
                      ]),
                ),
                Spacer(),
                Align(
                  alignment: Alignment.centerLeft,
                  child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        '  Back',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 28,
                          color: Colors.indigoAccent,
                        ),
                      )),
                ),
                SizedBox(
                  height: 20,
                )
              ],
            )));
  }
}
