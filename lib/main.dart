
// Mt mobile Contacts used in flutter

import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_appli/Search.dart';

import 'package:flutter_appli/dial.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:HomePage());
  }
}
/*
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Contact>? contacts;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getPhoneData();
  } 

  void getPhoneData() async {
    if (await FlutterContacts.requestPermission()) {
      contacts = await FlutterContacts.getContacts(
          withProperties: true, withPhoto: true);
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('My Contacts in flutter')),
      ),
      body: (contacts == null)
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: contacts!.length,
              itemBuilder: (BuildContext context, int index) {
                Uint8List? image = contacts![index].photo;
                String number = (contacts![index].phones.isNotEmpty)
                    ? contacts![index]
                        .phones
                        .first
                        .number
                        .substring(0)
                        .toString()
                    : "---";
                return ListTile(
                  leading: (image == null)
                      ? CircleAvatar(
                          child: Icon(Icons.person_outlined),
                        )
                      : CircleAvatar(
                          backgroundImage: MemoryImage(image),
                        ),
                  title: Text(contacts![index].name.first),
                  subtitle: Text(number),
                  onTap: () {
                   launch('Tel:${number}');
                    // Launch('Tel:${number}');
                  },
                );
              }),
    );
  }
}
*/