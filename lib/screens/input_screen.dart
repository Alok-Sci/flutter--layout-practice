import 'package:flutter/material.dart';

class TextFieldRoute extends StatelessWidget {
  TextFieldRoute({super.key});

  final nameController = TextEditingController();
  final mobileController = TextEditingController();
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  labelText: 'Name',
                  prefixIcon: Icon(Icons.person),
                  suffixIcon: Icon(Icons.help_outline_outlined),
                  hintText: "Enter name",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: mobileController,
                decoration: InputDecoration(
                  labelText: 'Mobile',
                  prefixIcon: Icon(Icons.phone),
                  suffixIcon: Icon(Icons.help_outline_outlined),
                  hintText: "Enter mobile number",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.mail_outline),
                  suffixIcon: Icon(Icons.help_outline_outlined),
                  hintText: "Enter email address",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 40),
              IconButton(
                alignment: Alignment.center,
                icon: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.upload_rounded),
                    Text("Submit")
                  ],
                ),
                onPressed: () {
                  var name = nameController.text;
                  var email = emailController.text;
                  var mobile = mobileController.text;
            
                  print('Name: $name');
                  print('Mobile: $mobile');
                  print('Email: $email');
                },
              )
            ]),
          ),
        ),
      );
  }
}
