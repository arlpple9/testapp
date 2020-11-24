import 'package:flutter/material.dart';
import 'package:testapp/services/database_manager.dart';

class Homepage extends StatefulWidget {
  Homepage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('test')),
      body: Container(
        child: FutureBuilder<String>( 
        future: Database_Manager().getData(), 
        builder: (context, snapshot){
          if(snapshot.hasData){
            
            return Text(snapshot.data);
          }
          return CircularProgressIndicator();
        })
      ),
    );
  }

}