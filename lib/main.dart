import 'package:flutter/material.dart';
import 'package:resume_app_ui/utils/route_utils.dart';
import 'package:resume_app_ui/views/Workspace.dart';
import 'package:resume_app_ui/views/screen/Home_Page.dart';
import 'package:resume_app_ui/views/screen/contact_into.dart';
import 'package:resume_app_ui/views/screen/personal_details.dart';

void main() => runApp(
      const Myapp(),
    );

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        unselectedWidgetColor: Colors.red,
      ),
      routes: {
        MyRoutes.home: (context) => const Home_Page(),
        MyRoutes.Workspace: (context) => const Workspace(),
        MyRoutes.buildOptions[0].route: (context) => const contactinto(),
        MyRoutes.buildOptions[2].route: (context) => const personaldetails(),
      },
    );
  }
}
