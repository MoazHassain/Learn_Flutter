import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:sqflite_test/contact.dart';

class DBHelper {
  static Future<Database> dbInit() async {
    // Get a location using getDatabasesPath
    var dbPath = await getDatabasesPath();
    String path = join(dbPath, "database.db");

    // open the database
    return await openDatabase(path, version: 1, onCreate: _onCreate);
  }

  // create the table
  static Future _onCreate(Database db, int version) async {
    final sql = '''
  CREATE TABLE contacts (id INTEGER PRIMARY KEY, name TEXT, contact TEXT)
''';

    db.execute(sql);
  }

  // insert data to that table
  static Future<int> insertContact(Contact contact) async {
    Database db = await DBHelper.dbInit();

    // insert data
    return await db.insert("contacts", contact.toJson());
  }

  // read data from that table
  static Future<List<Contact>> readContact() async {
    Database db = await DBHelper.dbInit();
    var read = await db.query("contacts", orderBy: "name");

    List<Contact> contactList = read.isNotEmpty
        ? read.map((details) => Contact.fromJson(details)).toList()
        : [];
    return contactList;
  }
}
