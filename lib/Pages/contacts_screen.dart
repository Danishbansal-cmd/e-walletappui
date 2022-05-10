import 'package:flutter/material.dart';

class ContactsScreen extends StatefulWidget {
  const ContactsScreen({ Key? key }) : super(key: key);

  @override
  State<ContactsScreen> createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Color(0xff1A87DD),
          child: Row(children: [Text("contacts")],),
        ),
      ],
    );
  }
}