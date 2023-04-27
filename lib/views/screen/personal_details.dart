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
  String? maritalStatus;
  bool isChecked = false;
  bool ispic = false;

  RangeValues range = RangeValues(10, 50);
  bool switchVal = false;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
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
      backgroundColor: Colors.grey.shade300,
      body: Padding(
        padding: EdgeInsets.all(21),
        child: Container(
          width: s.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "DOB",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "DD/MM/YY",
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Marital Status",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              RadioListTile(
                value: "Single",
                title: const Text(
                  "Single",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                subtitle: const Text("Yet free to live !!"),
                tileColor: Colors.blue,
                groupValue: maritalStatus,
                onChanged: (val) {
                  setState(() {
                    maritalStatus = val;
                  });
                },
              ),
              RadioListTile(
                value: "Married",
                title: const Text(
                  "Married",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.grey,
                  ),
                ),
                subtitle: const Text("So far lost their freedomc!!"),
                tileColor: Colors.blue,
                groupValue: maritalStatus,
                onChanged: (val) {
                  setState(() {
                    maritalStatus = val;
                  });
                },
              ),
              Text(
                "Languages Known",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              CheckboxListTile(
                value: isChecked,
                controlAffinity: ListTileControlAffinity.leading,
                title: const Text(
                  "English",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                subtitle:
                    const Text("Second language English is also applicable !!"),
                onChanged: (val) {
                  setState(() {
                    isChecked = val!;
                  });
                },
              ),
              CheckboxListTile(
                value: isChecked,
                controlAffinity: ListTileControlAffinity.leading,
                title: const Text(
                  "Hindi",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Colors.grey,
                  ),
                ),
                subtitle:
                    const Text("Second language English is also applicable !!"),
                onChanged: (val) {
                  setState(() {
                    ispic = val!;
                  });
                },
              ),
              Text(
                "Nationality",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              RangeSlider(
                  min: 0,
                  max: 100,
                  values: range,
                  labels: RangeLabels(
                    range.start.toInt().toString(),
                    range.end.toInt().toString(),
                  ),
                  onChanged: (val) {
                    setState(() {
                      range = val;
                    });
                  }),
              Switch(
                  value: switchVal,
                  onChanged: (val) {
                    setState(() {
                      switchVal = val;
                    });
                  })
            ],
          ),
        ),
      ),
    );
  }
}
