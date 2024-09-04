import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';

import 'package:flutter_application_2/widget_creator.dart';

import 'package:shared_preferences/shared_preferences.dart';

class SecondPage extends StatefulWidget {
  //CLASS PARAMETERS

  //modify the constructor

  final String customerName;
  final String answer;

  const SecondPage({super.key, required this.customerName, required this.answer});

  @override

  // ignore: library_private_types_in_public_api

  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bill Summary"),
      ),
      body: Column(
       
       children: [

          Text(

            "Customer Name: ${widget.customerName}",
            style: const TextStyle(fontSize: 30),

          ),

          Text(

            "Total Bill: ${widget.answer}",
            style: const TextStyle(fontSize: 30),

          )

       ],

      ),
    );
  }
}
