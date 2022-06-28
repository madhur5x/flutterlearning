import 'package:flutter/material.dart';

class Login_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      //child: Center(child:Container(child: Text("login_page",style: TextStyle(// fontSize: 40,color: Colors.cyan,fontWeight:FontWeight.bold,),// textScaleFactor: 2.0,),),),
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(
            "assets/images/li.png",
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            "Login to page",
            style: TextStyle(
              color: Colors.cyan,
              fontWeight: FontWeight.bold,
              fontSize: 20,
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
                    print('You are logged in');
                  },
                  child: Text('Log-In'),
                  style: TextButton.styleFrom(),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
