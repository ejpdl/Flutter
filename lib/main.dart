import 'package:flutter/material.dart';

import 'package:flutter_application_2/second_page.dart';

import 'package:flutter_application_2/widget_creator.dart';

import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: myHomePage(),
    );
  }
}

// ignore: camel_case_types

class myHomePage extends StatefulWidget {
  const myHomePage({super.key});

  @override

  // ignore: library_private_types_in_public_api

  _MainStatemyHomePage createState() => _MainStatemyHomePage();
}

class _MainStatemyHomePage extends State<myHomePage> {
  //variable for our controller

  //_ means that this variable is private to this class

  //in dart convention it is private - meaning outside classes cannot access this varialbe

  TextEditingController Name = new TextEditingController();

  TextEditingController Usage = new TextEditingController();

  double formula = 0.00;
  double rate = 96.00;
  double flatRate = 100.00;
  double total = 0.00;

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset('assets/images/logo.png', width: 30),
            const SizedBox(width: 5),
            const Text(
                "Manuel S. Enverga University \nFoundation Candelaria, Inc."),
          ],
        ),

        backgroundColor: const Color.fromARGB(218, 93, 1, 1),

        centerTitle: true,

        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 12,
        ),

        //leading: const Icon(Icons.smart_display, color: Colors.white),

        actions: [
          IconButton(
              onPressed: () {
                print("You clicked the home button");
              },
              icon: const Icon(Icons.home),
              color: Colors.white),
          IconButton(
              onPressed: () {
                print("You clicked the account button");
              },
              icon: const Icon(Icons.account_circle_outlined),
              color: Colors.white),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    createHeaders("Enter Details"),
                    vSpacer(10.0),
                    createTextField(
                        Name, "Customer Name", "Enter your name", Icons.abc),
                    vSpacer(10.0),
                    createTextField(Usage, "cu/m Usage",
                        "Enter usage", Icons.house),
                    vSpacer(10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                      
                        Expanded(
                          //direct button clicked

                          child: ElevatedButton(
                            onPressed: () {

                              double formula = double.parse(Usage.text);

                              setState(() {

                                total = ((formula * rate) + flatRate);

                              });

                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    //CLASS PARAMETERS

                                    //add the controller to be forwarded to the second page

                                    return SecondPage(customerName:Name.text, answer:total.toStringAsFixed(2));
                                  },
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                              foregroundColor: Colors.white,
                            ),
                            child: const Text("Compute Bill"),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

      //calling the drawer app

      drawer: createDrawer(context),
    );
  }

//inside class _MainStatemyHomePage

  void showDialogBox(String title, String content) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),

          content: Text(
              content), //"Congratulations! You have successfully registered!"

          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("Close"),
            ),
          ],
        );
      },
    );
  }
}
