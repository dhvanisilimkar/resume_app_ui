import 'package:flutter/material.dart';
import 'package:resume_app_ui/utils/route_utils.dart';

class Workspace extends StatelessWidget {
  const Workspace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(0)),
        ),
        title: Text(
          "Resume Workspace",
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: s.height * 0.10,
              width: s.width,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              alignment: Alignment(0, 0.5),
              child: Text(
                "Build Options",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    color: Colors.white),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(18),
              child: SingleChildScrollView(
                child: Column(
                  children: MyRoutes.buildOptions
                      .map(
                        (e) => Row(
                          children: [
                            Image.asset(
                              e.icon,
                              height: s.height * 0.045,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: s.width * 0.06,
                            ),
                            Text(
                              e.name,
                              style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            IconButton(
                              onPressed: () {
                                Navigator.of(context).pushNamed(e.route);
                              },
                              icon: Icon(Icons.arrow_forward_ios),
                            ),
                            SizedBox(
                              height: s.height * 0.07,
                            ),
                          ],
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
