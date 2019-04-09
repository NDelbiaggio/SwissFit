import 'package:flutter/material.dart';
import 'package:swissfit/model/exercise.dart';
import 'package:swissfit/views/common/exercisesList.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SwissFit',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'SwissFit Home'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Exercise> exercises = getMockExercises();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.redAccent,
      ),
      body: Container(
        child: ExerciseList(exercises), 
      ),
    );
  }
}

List<Exercise> getMockExercises(){
  return [] 
    ..add(Exercise('1', 'Pull ups', 'back' ,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmWGNUMI8miWToDd_ewn4cfOYewaUH-hmJ6HyfuheAJASa32NdDQ'))
    ..add(Exercise('2', 'Curl', 'arms', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwH_tgZDonoBPtOp5fy_ZqJs4Udljhv75BOrPG29VC4bupk5VDww'))
    ..add(Exercise('3', 'Squat', 'legs', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1eSVk57A_TV4hw6qkBhIs91W59En_B8RcKIm3Y-R8Mn3EWIQ8'))
    ..add(Exercise('4', 'Bench press', 'chest', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTo5pKedLepyIOKYBHPFcFYyxBwzTQrfwS0zAap3eRnE15tW3SBJA'));    
}