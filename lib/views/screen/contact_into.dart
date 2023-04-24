import 'package:flutter/material.dart';
import 'package:resume_app_ui/component/back_button.dart';
import 'package:resume_app_ui/models/globels.dart';
import 'package:resume_app_ui/utils/theme_utils.dart';

class contact_into extends StatefulWidget {
  const contact_into({Key? key}) : super(key: key);

  @override
  State<contact_into> createState() => _contact_intoState();
}

int i = 0;

class _contact_intoState extends State<contact_into> {
  get padding => null;

  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  AutovalidateMode mode = AutovalidateMode.disabled;

  String? get val => null;

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Resume Workspace",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
          // Icons.arrow_back_ios,
          //      color: Colors.white,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              child: Container(
            color: Colors.blue.shade700,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      i = 0;
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      "Contact",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          width: i == 0 ? 3 : 0,
                          color: Colors.amber,
                        ),
                      ),
                    ),
                  ),
                )),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        i = 1;
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        "Phone",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                        width: i == 1 ? 3 : 0,
                        color: Colors.amber,
                      ))),
                    ),
                  ),
                ),
              ],
            ),
          )),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                child: IndexedStack(
                  index: i,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Form(
                          key: formkey,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                      child: Icon(
                                    Icons.account_circle,
                                    size: s.height * 0.050,
                                    color: Colors.grey.shade600,
                                  )),
                                  SizedBox(
                                    width: s.width * 0.038,
                                  ),
                                  Expanded(
                                      flex: 6,
                                      child: TextFormField(
                                        initialValue: globle.name,
                                        validator: (val) {
                                          if (val!.isEmpty) {
                                            return "Enter your name.....";
                                          } else {
                                            return null;
                                          }
                                        },
                                        onSaved: (val) {
                                          globle.name = val;
                                        },
                                        textInputAction: TextInputAction.next,
                                        decoration: InputDecoration(
                                          hintText: "Name",
                                          hintStyle: TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                      )),
                                ],
                              ),
                              SizedBox(
                                height: s.height * 0.04,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Icon(
                                      Icons.email_rounded,
                                      color: Colors.grey.shade600,
                                      size: s.height * 0.050,
                                    ),
                                  ),
                                  SizedBox(
                                    width: s.width * 0.038,
                                  ),
                                  Expanded(
                                    flex: 6,
                                    child: TextFormField(
                                      initialValue: (globle.phone) == null
                                          ? null
                                          : globle.phone.toString(),
                                      keyboardType: TextInputType.phone,
                                      validator: (val) {
                                        if (val!.length < 10) {
                                          return "Enter the valid contact number...";
                                        } else if (val!.length > 10) {
                                          return "Enter the valid contact number...";
                                        } else {
                                          return null;
                                        }
                                      },
                                      onTap: () {
                                        globle.email = val;
                                      },
                                      textInputAction: TextInputAction.next,
                                      decoration: InputDecoration(
                                        hintText: "Email",
                                        hintStyle: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: s.height * 0.04,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    flex: 6,
                                    child: TextFormField(
                                      initialValue: globle.address1,
                                      validator: (val) {
                                        if (val!.isEmpty) {
                                          return "Enter the address....";
                                        } else {
                                          return null;
                                        }
                                      },
                                      onSaved: (val) {
                                        globle.address1 = val;
                                      },
                                      textInputAction: TextInputAction.next,
                                      decoration: InputDecoration(
                                        hintText: "Address Line 1",
                                        hintStyle: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: s.height * 0.04,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Icon(
                                      Icons.pin_drop_rounded,
                                      color: Colors.grey.shade600,
                                      size: s.height * 0.050,
                                    ),
                                  ),
                                  SizedBox(
                                    width: s.width * 0.038,
                                  ),
                                  Expanded(
                                      child: TextFormField(
                                    initialValue: globle.address1,
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return "Entter address......";
                                      } else {
                                        return null;
                                      }
                                    },
                                    onSaved: (val) {
                                      globle.address1 = val;
                                    },
                                  ))
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
