import 'package:flutter/material.dart';
import 'package:flutter_application_1/util/routes.dart';

class Login_Page extends StatelessWidget {
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
              "Login",
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
                    decoration: InputDecoration(
                        hintText: " Enter Username", labelText: "Username"),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: " Enter Password", labelText: "Password"),
                  ),
                  SizedBox(height: 20.0),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.homeRoutes);
                    },
                    child: Text('Log-In'),
                    style: TextButton.styleFrom(minimumSize: Size(120, 40)),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
