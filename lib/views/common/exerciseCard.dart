import 'package:flutter/material.dart';
import 'package:swissfit/model/exercise.dart';
import 'exerciseDetailPage.dart';

class ExerciseCard extends StatefulWidget {
  final Exercise exercise;

  ExerciseCard(this.exercise);

  @override
  _ExerciseCardState createState() => _ExerciseCardState(exercise);

}

class _ExerciseCardState extends State<ExerciseCard>{
  Exercise exercise;

  _ExerciseCardState(this.exercise);

  @override
  Widget build(BuildContext context){
    return InkWell(
      onTap: showExerciseDetail,
      child: new Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: new Container(
          height: 115.0,
          child: new Stack(
            children: <Widget>[
              exerciseCard,
              new Positioned(top: 0, right: 0, child: exerciseImage),
            ],
          ),
        ),
      )
    );
  }

  showExerciseDetail(){
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return ExerciseDetailPage(exercise);
        }
      )
    );
  }

  Widget get exerciseCard {    
    return new Positioned(
      left: 0.0,
      width: 290.0,
      height: 115.0,
      child: Card(
        color: Colors.blueGrey,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 8.0,
            bottom: 8.0,
            left: 10.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              widget.exercise.name, 
              style: Theme.of(context).textTheme.headline
            ),
            Text(
              widget.exercise.muscles, 
              style: Theme.of(context).textTheme.subhead
            ),
          ]
        )
        )
      )
    );
  }
  
  Widget get exerciseImage {
    return Container(
      width: 100.0,
      height: 100.0,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        image: DecorationImage(
          fit: BoxFit.contain,
          image: NetworkImage(exercise.imageUrl ?? ''),
        )
      ),
    );
  }
  
}
