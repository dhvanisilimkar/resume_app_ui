import 'package:flutter/material.dart';
import 'package:resume_app_ui/component/my_snackBar.dart';
import 'package:resume_app_ui/utils/theme_utils.dart';
import '../../utils/theme_utils.dart';

class personaldetails extends StatefulWidget {
  const personaldetails({Key? key}) : super(key: key);

  @override
  State<personaldetails> createState() => _personaldetailsState();
}

class _personaldetailsState extends State<personaldetails> {
  int index = 0;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text(
          "Personal Details",
          style: appBarTitleStyle,
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 0;
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        "Contact",
                        style: appBarTitleStyle,
                      ),
                      decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                                width: index == 0 ? 3 : 0, color: Colors.amber),
                          ),
                          color: Colors.blue),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 1;
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        "Photo",
                        style: appBarTitleStyle,
                      ),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: index == 1 ? 3 : 0,
                            color: Colors.amber,
                          ),
                        ),
                        color: Colors.blue,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 10,
            child: Padding(
              padding: EdgeInsets.all(20),
              child: IndexedStack(
                index: index,
                children: [
                  Text("contact page"),
                  Text("Photo"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
