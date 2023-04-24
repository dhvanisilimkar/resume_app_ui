import 'package:flutter/material.dart';
import 'package:resume_app_ui/utils/icons_utils.dart';
import 'package:resume_app_ui/utils/route_utils.dart';
import 'package:resume_app_ui/utils/theme_utils.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
        ),
        title: Column(
          children: [
            SizedBox(
              height: s.height * 0.07,
            ),
            Text(
              "Resume Builder",
              style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
            SizedBox(
              height: s.height * 0.07,
            ),
            Text(
              "RESUMES",
              style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
            SizedBox(
              height: s.height * 0.07,
            )
          ],
        ),
        centerTitle: true,
        toolbarHeight: 150,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: s.height * 0.08,
            ),
            Image.asset(
              iconPath + "open-cardboard-box.png",
              color: Colors.black,
              height: 70,
            ),
            SizedBox(
              height: s.height * 0.02,
            ),
            Text(
              "No Resume + Create new resume.",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 22,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue.shade100,
        onPressed: () {
          Navigator.of(context).pushNamed(MyRoutes.Workspace);
        },
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
    );
  }
}
