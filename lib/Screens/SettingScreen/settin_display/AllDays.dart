import 'package:flutter/material.dart';

class AlarmScreen extends StatefulWidget {
  const AlarmScreen({Key? key}) : super(key: key);

  @override
  State<AlarmScreen> createState() => _AlarmScreenState();
}

class _AlarmScreenState extends State<AlarmScreen> {
  List<bool> isCheckedList = [false, false, false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 40,
          ),
          Text(
            '  Repeat',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontSize: 24,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ListTile(
            title: const Text(
              'Sunday',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 22,
              ),
            ),
            trailing: Checkbox(
              value: isCheckedList[0],
              onChanged: (value) {
                setState(() {
                  isCheckedList[0] = value!;
                });
              },
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          ListTile(
            title: const Text(
              'Monday',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 22,
              ),
            ),
            trailing: Checkbox(
              value: isCheckedList[1],
              onChanged: (value) {
                setState(() {
                  isCheckedList[1] = value!;
                });
              },
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          ListTile(
            title: const Text(
              'Tuesday',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 22,
              ),
            ),
            trailing: Checkbox(
              value: isCheckedList[2],
              onChanged: (value) {
                setState(() {
                  isCheckedList[2] = value!;
                });
              },
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          ListTile(
            title: const Text(
              'Wednesday',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 22,
              ),
            ),
            trailing: Checkbox(
              value: isCheckedList[3],
              onChanged: (value) {
                setState(() {
                  isCheckedList[3] = value!;
                });
              },
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          ListTile(
            title: const Text(
              'Thursday',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 22,
              ),
            ),
            trailing: Checkbox(
              value: isCheckedList[4],
              onChanged: (value) {
                setState(() {
                  isCheckedList[4] = value!;
                });
              },
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          ListTile(
            title: const Text(
              'Friday',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 22,
              ),
            ),
            trailing: Checkbox(
              value: isCheckedList[5],
              onChanged: (value) {
                setState(() {
                  isCheckedList[5] = value!;
                });
              },
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          ListTile(
            title: const Text(
              'Saturday',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 22,
              ),
            ),
            trailing: Checkbox(
              value: isCheckedList[6],
              onChanged: (value) {
                setState(() {
                  isCheckedList[6] = value!;
                });
              },
            ),
          ),
          const Spacer(),
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                '    Back',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.indigoAccent,
                ),
              )),
          SizedBox(
            height: 40,
          )
        ],
      ),
    );
  }
}
