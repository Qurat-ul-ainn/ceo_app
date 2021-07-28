import 'package:ceoapp/login/component.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          'Home SCreen',
          style: TextStyle(color: Colors.white,
              fontSize: 30),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue[700],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: ListView(
            children: [
              ListViewComponent(
                price: 2563353,
                condition: 'New',
                location: 'Islamabad',
              ),
              ListViewComponent(
                price: 2563353,
                condition: 'New',
                location: 'Islamabad',
              ),
              ListViewComponent(
                price: 2563353,
                condition: 'New',
                location: 'Islamabad',
              ),
              ListViewComponent(
                price: 2563353,
                condition: 'New',
                location: 'Islamabad',
              ),
              ListViewComponent(
                price: 2563353,
                condition: 'New',
                location: 'Islamabad',
              ),
              ListViewComponent(
                price: 2563353,
                condition: 'New',
                location: 'Islamabad',
              ),

            ],
          ),
        ),
      ),
    );
  }
}

