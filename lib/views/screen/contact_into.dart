import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/services.dart';
import 'package:resume_app_ui/component/back_button.dart';
import 'package:resume_app_ui/models/globels.dart';
import 'package:resume_app_ui/utils/theme_utils.dart';

import '../../component/my_snackBar.dart';
import '../../utils/theme_utils.dart';

class contactinto extends StatefulWidget {
  const contactinto({Key? key}) : super(key: key);

  @override
  State<contactinto> createState() => _personal_details();
}

class _personal_details extends State<contactinto> {
  get padding => null;
  int i = 0;
  bool hide = true;

  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  TextEditingController nameController =
      TextEditingController(text: globle.name);
  AutovalidateMode mode = AutovalidateMode.disabled;

  String? get val => null;

  ImagePicker picker = ImagePicker();

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
              color: Colors.blue,
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
                    ),
                  ),
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
                          "Photo",
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
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Column(
              children: [
                SingleChildScrollView(
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
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
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
                                        ),
                                      ),
                                    ],
                                  ), //name
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
                                          keyboardType:
                                              TextInputType.emailAddress,
                                          validator: (val) {
                                            if (val!.length < 10) {
                                              return "Enter your right Email....";
                                            } else if (val!.length > 10) {
                                              return "Enter your Email";
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
                                  ), //email
                                  SizedBox(
                                    height: s.height * 0.04,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Icon(
                                          Icons.phone,
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
                                          textInputAction: TextInputAction.next,
                                          maxLength: 10,
                                          keyboardType: TextInputType.phone,
                                          inputFormatters: [
                                            FilteringTextInputFormatter
                                                .digitsOnly
                                          ],
                                          initialValue: (globle.phone) == null
                                              ? null
                                              : globle.phone.toString(),
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
                                          decoration: InputDecoration(
                                            hintText:
                                                "Enter your phone number...",
                                            labelText: "Phone num...",
                                            prefix: Text("91+"),
                                            hintStyle: TextStyle(
                                              color: Colors.grey.shade700,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ), //phone full
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        flex: 0,
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
                                              return "Enter address......";
                                            } else {
                                              return null;
                                            }
                                          },
                                          onSaved: (val) {
                                            globle.address1 = val;
                                          },
                                          decoration: InputDecoration(
                                            hintText: "Enter your Address....",
                                            labelText: "Address",
                                          ),
                                        ),
                                      ),
                                    ],
                                  ), //address
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: 55,
                                          ),
                                          Expanded(
                                            flex: 6,
                                            child: TextFormField(
                                              decoration: InputDecoration(),
                                              onFieldSubmitted: (value) {
                                                setState(() {
                                                  if (formkey.currentState!
                                                      .validate()) {
                                                    formkey.currentState!
                                                        .save();
                                                  }
                                                });
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: 55,
                                          ),
                                          Expanded(
                                            flex: 6,
                                            child: TextFormField(
                                              decoration: InputDecoration(),
                                              onFieldSubmitted: (value) {
                                                setState(() {
                                                  if (formkey.currentState!
                                                      .validate()) {
                                                    formkey.currentState!
                                                        .save();
                                                  }
                                                });
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ), //address in 2 lines
                                  SizedBox(
                                    height: s.height * 0.04,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 50,
                                      ),
                                      Expanded(
                                        flex: 8,
                                        child: TextFormField(
                                          decoration: InputDecoration(),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: s.height * 0.05,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {
                                          setState(() {
                                            mode = AutovalidateMode
                                                .onUserInteraction;

                                            if (formkey.currentState!
                                                .validate()) {
                                              formkey.currentState!.save();

                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                mySnackBar(
                                                  text: "Successfully Saved..",
                                                  color: Colors.green,
                                                ),
                                              );
                                            } else {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                mySnackBar(
                                                  text:
                                                      "Failled to validate !!",
                                                  color: Colors.red,
                                                ),
                                              );
                                            }
                                          });
                                        },
                                        child: const Text("Save"),
                                      ),
                                      ElevatedButton(
                                        onPressed: () {
                                          setState(() {
                                            formkey.currentState!.reset();

                                            nameController.clear();

                                            globle.name = globle.email =
                                                globle.phone = globle.a1 =
                                                    globle.a2 =
                                                        globle.a3 = null;
                                          });
                                        },
                                        child: const Text("Reset"),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 250,
                  color: Colors.white,
                  alignment: Alignment.center,
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey.shade300,
                        radius: 80,
                        foregroundImage: (globle.image != null)
                            ? FileImage(globle.image!)
                            : null,
                        child: const Text("ADD"),
                      ),
                      FloatingActionButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: const Text("Select "),
                              actions: [
                                TextButton.icon(
                                  onPressed: () async {
                                    Navigator.of(context).pop();
                                    XFile? img = await picker.pickImage(
                                        source: ImageSource.camera);
                                    if (img != null) {
                                      setState(() {
                                        globle.image = File(img.path);
                                      });
                                    }
                                  },
                                  label: const Text("Camera"),
                                  icon: const Icon(Icons.camera_alt),
                                ),
                                TextButton.icon(
                                  onPressed: () async {
                                    XFile? img = await picker.pickImage(
                                        source: ImageSource.gallery);
                                    if (img != null) {
                                      setState(() {
                                        globle.image = File(img.path);
                                      });
                                    }
                                    Navigator.of(context).pop();
                                  },
                                  label: const Text("Gallery"),
                                  icon: const Icon(Icons.image),
                                ),
                              ],
                            ),
                          );
                        },
                        mini: true,
                        backgroundColor: Colors.blue.shade300,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Icon(Icons.add),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ), //contact
        ],
      ),
    );
  }
}
