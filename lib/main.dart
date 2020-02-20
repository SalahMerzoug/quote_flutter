import 'package:flutter/material.dart';
import 'package:quotes/quote_card.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(
  home: QuteList(),
));

class QuteList extends StatefulWidget {
  @override
  _QuteListState createState() => _QuteListState();
}

class _QuteListState extends State<QuteList> {
  int comp=0;
  List<Quote> quotes=[
    Quote(text:'Be yourself;everyone else is already taken',author:'Salah'),
    Quote(text:'I have nothing to declare except my genuis',author:'Mer'),
    Quote(text:'the truth is rarely pure and never simple',author: 'DER')
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.greenAccent[600],
       appBar: AppBar(
         backgroundColor: Colors.green[800],
         title: Text('List Data'),
         centerTitle: true,

       ),
       body: Column(
         children: quotes.map((quote)=>Quatecard(
           quote:quote,
           delete : (){
             setState(() {
               quotes.remove(quote);
             });
           }
           )).toList()
         ),
       
       floatingActionButton: FloatingActionButton(
         onPressed: () {
           setState(() {
             comp+=1;
             String ba='cliked me d  '+comp.toString();
             quotes.add(Quote(text: ba,author: 'MERz'+comp.toString()));
           });
         },
         backgroundColor: Colors.red,
        child: Icon(
           Icons.add,
           color: Colors.lightBlue,
         )

       ),
    );
  }
}


