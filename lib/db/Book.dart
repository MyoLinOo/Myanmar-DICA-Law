import 'dart:io';

import 'package:flutter/services.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

final String tableName = 'Law_Table';
final String column_id = 'id';
final String column_name = 'name';
final String colunm_pdf = 'pdfname';
final String column_type = 'type';

class Book {
  int id;
  final String name;
  final String pdfName;
  final String type;

  Book({this.id, this.name, this.pdfName, this.type});

  Map<String, dynamic> toMap() {
    return {
      column_name: this.name,
      colunm_pdf: this.pdfName,
      column_type: this.type,
    };
  }
}

class DatabaseHelper {
  Database db;

  DatabaseHelper() {
    initDatabase();
  }

  Future<void> initDatabase() async {
    var databasesPath = await getDatabasesPath();
    var path = join(databasesPath, "law_database.db");

// Check if the database exists
    var exists = await databaseExists(path);

    if (!exists) {
      // Should happen only the first time you launch your application
      print("Creating new copy from asset");

      // Make sure the parent directory exists
      try {
        await Directory(dirname(path)).create(recursive: true);
      } catch (_) {
        print(_);
      }

      // Copy from asset
      ByteData data;
      data = await rootBundle.load(join("db", "law_database.db"));
      List<int> bytes =
          data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);

      // Write and flush the bytes written
      await File(path).writeAsBytes(bytes, flush: true);
    } else {
      print("Opening existing database");
    }
// open the database
    db = await openDatabase(path, readOnly: true);

    return db;
    // db = await openDatabase(join(await getDatabasesPath(), 'my_database'),
    //     onCreate: (db, version) {
    //   return db.execute(
    //       'CREATE TABLE $tableName($column_id AUTO INCREMENT PRIMARY KEY,$column_name TEXT)');
    // }, version: 1);
  }

  Future<void> insertTest(Book book) async {
    try {
      db.insert(tableName, book.toMap(),
          conflictAlgorithm: ConflictAlgorithm.replace);
    } catch (e) {
      print(e);
    }
  }

  Future<List<Book>> getAllTest() async {
    final List<Map<String, dynamic>> bookdbList = await db.query(tableName);
    return List.generate(bookdbList.length, (i) {
      return Book(
          id: bookdbList[i][column_id],
          name: bookdbList[i][column_name],
          pdfName: bookdbList[i][colunm_pdf],
          type: bookdbList[i][column_type]);
    });
  }
}
