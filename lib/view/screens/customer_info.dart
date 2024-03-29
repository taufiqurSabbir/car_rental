import 'package:flutter/material.dart';

class Customer_Information extends StatefulWidget {
  const Customer_Information({super.key});

  @override
  State<Customer_Information> createState() => _Customer_InformationState();
}

class _Customer_InformationState extends State<Customer_Information> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text("Back"),
      ),
      body: SafeArea(
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}
