import 'package:flutter/material.dart';

import 'menu.dart';


class Registerpage extends StatelessWidget {
  Registerpage({super.key});
  TextEditingController name_controller = TextEditingController();
  TextEditingController email_controller = TextEditingController();
  TextEditingController password_controller = TextEditingController();
  TextEditingController confirm_password_controller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return
      Scaffold(

        appBar: AppBar(
          title: const Text('Register Page'),
        ),
        endDrawer: const Menu() ,
        body:  Form(
            child:Column(
              children: [
                TextFormField(
                  controller: name_controller ,
                  onChanged: (value) {
                    print(value);
                  },
                  decoration: InputDecoration(icon: Icon(Icons.person), labelText: 'Name'),
                ),

                SizedBox(height:50.0),
                TextFormField(
                  controller: email_controller ,
                  onChanged: (value) {
                    print(value);
                  },
                  validator: (value) {

                    return '';
                  },
                  decoration: InputDecoration(icon: Icon(Icons.mail), labelText: 'Email'),
                ),
                TextFormField(
                  controller: password_controller ,
                  onChanged: (value) {
                    print(value);
                  },
                  decoration: InputDecoration(icon: Icon(Icons.password), labelText: 'Password'),
                ),
                TextFormField(
                  controller: confirm_password_controller ,
                  onChanged: (value) {
                    print(value);
                  },
                  decoration: InputDecoration(icon: Icon(Icons.password), labelText: 'Confirm Password'),
                ),
                ElevatedButton(onPressed: (){},
                    child:  Text('Register') )
              ],
            )
        ),

      );
  }
}