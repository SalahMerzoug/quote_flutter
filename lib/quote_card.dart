import 'package:flutter/material.dart';
import 'package:quotes/quote.dart';

class Quatecard extends StatelessWidget {
  final Quote quote;
  final Function delete;
     Quatecard({this.quote,this.delete});
  @override
  Widget build(BuildContext context) {
    return Card(
           margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
          
           child: Padding(
             padding: const EdgeInsets.all(12.0),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.stretch,
               children: <Widget>[
                 Text(
                   quote.text,
                   style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.grey[600],
                     
                   ),
                 ),
                 SizedBox(height: 6.0),
                Text(
                   quote.author,
                   style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey[800],
                   ),
                 ), 
                 Divider(
                   height: 1.0,
                   color: Colors.greenAccent,
                 ),
                 FlatButton.icon(
                   onPressed: delete,
                    icon: Icon(Icons.delete), 
                    label: Text('Delet item')),
             ],),
           ),
    );
  }
}