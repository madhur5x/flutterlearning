import 'package:flutter/material.dart';
import 'package:flutter_application_1/util/routes.dart';

class Login_Page extends StatefulWidget {
  @override
  State<Login_Page> createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
  String name = "";
  bool changebutton = false;
  final _formkey = GlobalKey<FormState>();

  movetohome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changebutton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoutes);
      setState(() {
        changebutton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              SizedBox(
                height: 10.0,
              ),
              Image.asset("assets/images/li.png",
                  fit: BoxFit.cover, height: 200),
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
              SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: " Enter Username", labelText: "Username"),
                      //validator: (value) =>value!.isEmpty ? "plz enter user name" : null,
                      validator: (value) {
                        if (value!.isEmpty) return "plz enter user name";

                        return null;
                      },
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: " Enter Password", labelText: "Password"),
                      validator: (value) {
                        if (value!.isEmpty)
                          return "Enterpass word";
                        else if (value.length <= 8) {
                          return "password must be of atleast 8 digit";
                        }
                      },
                    ),
                    SizedBox(height: 20.0),
                    Material(
                      color: Colors.blueAccent,
                      borderRadius:
                          BorderRadius.circular(changebutton ? 50 : 5),
                      child: InkWell(
                        onTap: (() => movetohome(context)),
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          height: 40,
                          width: changebutton ? 42 : 120,
                          alignment: Alignment.center,
                          child: changebutton
                              ? Icon(Icons.done, color: Colors.white)
                              : Text(
                                  "Log-In",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
