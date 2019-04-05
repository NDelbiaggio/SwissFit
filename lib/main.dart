import 'package:flutter/material.dart';
import 'package:swissfit/model/exercise.dart';
import 'package:swissfit/views/common/exerciseCard.dart';
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
    ..add(Exercise('1', 'pull ups', 'http://abetree.us/wp-content/assets/how-to-draw-com-5.jpg'))
    ..add(Exercise('2', 'arms', 'http://abetree.us/wp-content/assets/how-to-draw-com-5.jpg'))
    ..add(Exercise('3', 'legs', 'http://abetree.us/wp-content/assets/how-to-draw-com-5.jpg'))
    ..add(Exercise('4', 'chest', 'http://abetree.us/wp-content/assets/how-to-draw-com-5.jpg'));    
}