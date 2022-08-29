import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sqflite_test/add-contact.dart';
import 'package:sqflite_test/contact.dart';
import 'package:sqflite_test/db-helper.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "SQFLITE Demo",
        ),
        centerTitle: true,
      ),
      body: FutureBuilder<List<Contact>>(
        future: DBHelper.readContact(),
        builder: (BuildContext context, AsyncSnapshot<List<Contact>> snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Loading...",
                  ),
                ],
              ),
            );
          }
          return snapshot.data!.isEmpty
              ? Center(
                  child: Text(
                    "No Entries",
                  ),
                )
              : ListView(
                  children: snapshot.data!.map(
                    (contacts) {
                      return Center(
                        child: Card(
                          elevation: 10,
                          child: ListTile(
                            title: Text(
                              "${contacts.name}",
                            ),
                            subtitle: Text(
                              "${contacts.contact}",
                            ),
                          ),
                        ),
                      );
                    },
                  ).toList(),
                );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final refresh = await Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => AddContact(),
            ),
          );
          if (refresh) {
            setState(() {});
          }
        },
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
