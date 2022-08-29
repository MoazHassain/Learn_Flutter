import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sqflite_test/contact.dart';
import 'package:sqflite_test/db-helper.dart';

class AddContact extends StatefulWidget {
  AddContact({Key? key, this.contact}) : super(key: key);

  final Contact? contact;
  @override
  State<AddContact> createState() => _AddContactState();
}

class _AddContactState extends State<AddContact> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _contactController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    if (widget.contact != null) {
      _nameController.text = widget.contact!.name!;
      _contactController.text = widget.contact!.contact!;
    }
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _contactController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add Contact",
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            _CustomTextField(_nameController, "Name"),
            SizedBox(
              height: 16,
            ),
            _CustomTextField(_contactController, "Contact"),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 38,
              child: ElevatedButton(
                onPressed: () async {
                  // await DBHelper.insertContact(Contact(
                  //     name: _nameController.text,
                  //     contact: _contactController.text));

                  if (widget.contact != null) {
                    await DBHelper.updateContact(Contact(
                      id: widget.contact!.id,
                      name: _nameController.text,
                      contact: _contactController.text,
                    ));

                    // Navigator.of(context).pop(true);
                  } else {
                    await DBHelper.insertContact(Contact(
                        name: _nameController.text,
                        contact: _contactController.text));
                    // Navigator.of(context).pop(true);
                  }
                  Navigator.of(context).pop(true);
                },
                child: Text(
                  "ADD CONTACT",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextField _CustomTextField(TextEditingController _controller, String hint) {
    return TextField(
      controller: _controller,
      decoration: InputDecoration(
        hintText: hint,
        labelText: hint,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
        ),
      ),
    );
  }
}
