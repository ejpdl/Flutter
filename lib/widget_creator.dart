import 'package:flutter/material.dart';

import 'package:flutter_application_2/second_page.dart';

 

Widget vSpacer(double heigth) {

  return SizedBox(

    height: heigth,

  );

}

 

//function that returns a widget

Widget createTextField(TextEditingController controller, String labelText,

    String hintText, IconData suffixIcon) {

  return TextField(

    controller: controller,

    decoration: InputDecoration(

      labelText: labelText,

      hintText: hintText,

      //to improve the appearance

      suffixIcon: Icon(suffixIcon),

      suffixIconColor: Colors.green,

      border: OutlineInputBorder(

        borderSide: const BorderSide(width: 1, color: Colors.blue),

        borderRadius: BorderRadius.circular(5),

      ),

    ),

  );

}

 

//function that returns a widget

Widget createHeaders(String title) {

  return Text(

    title,

    style: const TextStyle(fontSize: 25),

  );

}

 

 

//function that return a drawer

Widget createDrawer(BuildContext context){

 return Drawer(

        child: Column(

          children: [

            DrawerHeader(

              child: Image.asset("assets/images/logo.png", width: 300),

            ),

            ListTile(

              leading: const Icon(Icons.subject_outlined),

              title: const Text("Courses offered"),

              onTap: () {

                print("You clicked the course offered menu");

                Navigator.pop(context);

              },

            ),

            ListTile(

              leading: const Icon(Icons.add_location_alt_rounded),

              title: const Text("Location"),

              onTap: () {

                print("You clicked the location menu");

                Navigator.pop(context);

              },

            ),

            ListTile(

              leading: const Icon(Icons.phone_in_talk_rounded),

              title: const Text("Contact Us"),

              onTap: () {

                print("You clicked the contact us menu");

                Navigator.pop(context);

              },

            ),

            ListTile(

              leading: const Icon(Icons.content_paste_go),

              title: const Text("Next Page"),

              onTap: () {

                //popping the drawer

                //Navigator.pop(context);               

                //second page

             // Navigator.push(context, MaterialPageRoute(builder: (context){

                //return SecondPage();

              //},

              //),);

 

              },

            ),

          ],

        ),

      );

}