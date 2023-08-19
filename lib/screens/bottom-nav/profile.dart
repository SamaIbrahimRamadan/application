import 'package:application/setting/size.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String email = "";
  String phone = '';
  String name = '';

  getData() async {
    final prefs = await SharedPreferences.getInstance();
    email = prefs.getString("email") ?? '--';
    phone = prefs.getString('phone') ?? '--';
    name = prefs.getString('name') ?? '--';
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 20),
            child: Text(
              'Email:$email',
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          )),
          20.h,
          Card(
              child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Name:$name',
                style:
                    const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
          )),
          20.h,
          Card(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 60),
              child: Text(
                'Phone:$phone',
                style:
                    const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          20.h,
          const Card(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Text(
                "Developer Team:Sama Muhamed ibrahim",
                style: TextStyle(color: Colors.deepOrange, fontSize: 17),
              ),
            ),
          )
        ],
      ),
    );
  }
}
