import 'package:flutter/material.dart';
import 'package:flutter_application_1/util/routes.dart';

class Login_Page extends StatefulWidget {
  @override
  State<Login_Page> createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
  String name = "";
  bool changebutton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      //child: Center(child:Container(child: Text("login_page",style: TextStyle(// fontSize: 40,color: Colors.cyan,fontWeight:FontWeight.bold,),// textScaleFactor: 2.0,),),),
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/li.png", fit: BoxFit.cover, height: 200),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Greetings $name",
              style: TextStyle(
                color: Colors.cyan,
                fontWeight: FontWeight.bold,
                fontSize: 35,
              ),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                    decoration: InputDecoration(
                        hintText: " Enter Username", labelText: "Username"),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: " Enter Password", labelText: "Password"),
                  ),

                  SizedBox(height: 20.0),

                  InkWell(
                    onTap: (()async {
                      setState(() {
                        changebutton = true;
                      });
                      await Future.delayed(Duration(seconds:1)); 
                      Navigator.pushNamed(context, MyRoutes.homeRoutes);
                    }),
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                        height: 40,
                        width: changebutton ?42:120,
                        alignment: Alignment.center,
                        child: changebutton?Icon(
                          Icons.done,color:Colors.white):Text("Log-In",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.5,
                              fontWeight: FontWeight.bold),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.blueAccent,
                        // shape: changebutton?BoxShape.circle:BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(changebutton?50:5),
                        )),
                  )

                  // ElevatedButton(
                  //   onPressed: () {
                  //     Navigator.pushNamed(context, MyRoutes.homeRoutes);
                  //   },
                  //   child: Text('Log-In'),
                  //   style: TextButton.styleFrom(minimumSize: Size(120, 40)),
                  // )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
