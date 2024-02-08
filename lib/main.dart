import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

final Uri _url = Uri.parse('https://www.vecteezy.com/');

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: const Text("I am Poor"),
          centerTitle: true,
          backgroundColor: Colors.teal,
        ),
        body: Center(
          child: Column(
            children: [
              const Image(
                image: AssetImage('images/bussman5-06.jpg'),
              ),
              GestureDetector(
                onTap: () {
                  // Launch url, contributing Vecteezy for the image choice
                  launchUrl(_url);
                },
                child: const Padding(
                  padding: EdgeInsets.all(50.0),
                  child: Text(
                    'Support Vecteezy',
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ),
            ],
          ),
        )),
  ));
}
