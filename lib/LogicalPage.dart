import 'package:flutter/material.dart';
class LogicalPage extends StatefulWidget {
  const LogicalPage({Key? key}) : super(key: key);

  @override
  _LogicalPageState createState() => _LogicalPageState();
}

class _LogicalPageState extends State<LogicalPage> {

  static double heights=0.0;
  static double widths=0.0;

  Widget selectChoice(int index,String topics){
    return Container(
      height: heights,
      width: widths,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.white,Colors.indigo,Colors.white],
          begin: Alignment.center,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.circular(10),
        //color: Colors.redAccent,
      ),
      child: Row(
        children: [
          SizedBox(width: 10,),
          Text('$index.',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
          Text('$topics',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double conHeights = MediaQuery.of(context).size.height*.05;
    heights = conHeights;
    double conWidths = MediaQuery.of(context).size.width*0.7;
    widths = conWidths;
    return Scaffold(
      backgroundColor: Colors.white60,
      appBar: AppBar(
        title: Text('Logical Aptitude'),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: Container(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(height: 15,),
                GestureDetector(
                  child: selectChoice(1, 'Alphanumeric series'),
                  onTap: (){
                    //To Do
                  },
                ),
                SizedBox(height: 15,),
                selectChoice(2, 'Blood Relations'),
                SizedBox(height: 15,),
                selectChoice(3, 'Coding-Decoding'),
                SizedBox(height: 15,),
                selectChoice(4, 'Decision Making'),
                SizedBox(height: 15,),
                selectChoice(5, 'Directions'),
                SizedBox(height: 15,),
                selectChoice(6, 'Dices'),
                SizedBox(height: 15,),
                selectChoice(7, 'Input - Output'),
                SizedBox(height: 15,),
                selectChoice(8, 'Odd One Out'),
                SizedBox(height: 15,),
                selectChoice(9, 'Paper Folding'),
                SizedBox(height: 15,),
                selectChoice(10, 'Pattern Series'),
                SizedBox(height: 15,),
                selectChoice(11, 'Seating Arrangements'),
                SizedBox(height: 15,),
                selectChoice(12, 'Statements And Conclusion'),
                SizedBox(height: 15,),
                selectChoice(13, 'Syllogism'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
