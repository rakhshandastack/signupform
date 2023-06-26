import 'package:flutter/material.dart';

import 'components/appbarstyle.dart';
import 'components/inputtextfield.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formkey = GlobalKey<FormState>();
    void validate() {
      if (formkey.currentState!.validate()) {
        print("successfully login");
      } else {
        print("error");
      }
    }
    //TextEditingController nameCtrl=TextEditingController();
    //TextEditingController emailCtrl=TextEditingController();
    //TextEditingController passCtrl=TextEditingController();


    return Scaffold(
      appBar: appBarStyle(),
      body: Container(
          color: Color.fromARGB(255, 199, 185, 223),
          child: ListView(
           // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(9.0),
                child: Form(
                  key: formkey,
                  child: Column(
                    children: [
                      Text(
                        "WELCOME",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: ("fonts/BebasNeue.regular"),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      InputTextField(
                        "enter username",
                        Icon(
                          Icons.person,
                        ),
                      ),
                      InputTextField(
                        "enter email",
                        Icon(
                          Icons.email,
                        ),
                      ),
                      InputTextField(
                        "enter password",
                        Icon(
                          Icons.remove_red_eye,
                        ),
                      ),
                      
                      Center(
                        child: Column(
                          children: [
                            ElevatedButton(
                              child: Text("register"),
                              onPressed: validate,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
