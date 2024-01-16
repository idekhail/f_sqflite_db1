import 'package:f_sqflite_db1/sqldb.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  @override
  State<Home> createState()=> _HomeState() ;
}
class _HomeState extends State<Home>{

  SqlDb sqlDb = SqlDb();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text('HomePage'),
    ),
    body: Container(
      child: Column(
        children: [
          Center(
            child: MaterialButton(
              color: Colors.red,
              textColor: Colors.white,
              onPressed: () async{
                int response = await sqlDb.insertDate("INSERT INTO 'dogs' ('dogname', 'dogage') VALUES ('mone 1', '6')");

                print(response);
              },
              child: Text("Insert Data"),
            ),
          ),
          Center(
            child: MaterialButton(
              color: Colors.red,
              textColor: Colors.white,
              onPressed: () async{
                List<Map> response = await sqlDb.readDate("SELECT * FROM 'dogs'");

                print("$response");
              },
              child: Text("Read Data"),
            ),
          ),
          Center(
            child: MaterialButton(
              color: Colors.red,
              textColor: Colors.white,
              onPressed: () async{
                int response = await sqlDb.updateDate("UPDATE 'dogs' SET 'dogage' = '8' WHERE id = 3");
                print("$response");
              },
              child: Text("Update Data"),
            ),
          ),
          Center(
            child: MaterialButton(
              color: Colors.red,
              textColor: Colors.white,
              onPressed: () async{
                int response = await sqlDb.deleteDate("DELETE FROM 'dogs' WHERE id = 2");
                print("$response");
              },
              child: Text("Delete Data"),
            ),
          ),
        ],
      ),
    ),
    );
  }
}