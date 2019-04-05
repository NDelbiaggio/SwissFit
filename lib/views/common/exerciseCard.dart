import 'package:flutter/material.dart';
import 'package:swissfit/model/exercise.dart';

class ExerciseCard extends StatefulWidget {
  final Exercise exercise;

  ExerciseCard(this.exercise);

  @override
  _ExerciseCardState createState() => _ExerciseCardState(exercise);

  Widget build(BuildContext context){
    return Container(
      height: 115.0,
      child: Stack(
        children: <Widget>[
          
        ],
      ),
    );
  }

  

}

class _ExerciseCardState extends State<ExerciseCard>{
  Exercise exercise;

  _ExerciseCardState(this.exercise);

  @override

  Widget build(BuildContext context){
    return Container(
      child: new Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: new Container(
          height: 115.0,
          child: new Stack(
            children: <Widget>[
              exerciseCard,
              new Positioned(top: 7.5, child: exerciseImage),
            ],
          ),
        ),
      )
    );
  }

  Widget get exerciseCard{
    return new Positioned(
      right: 0.0,
      width: 290.0,
      height: 115.0,
      child: Card(
        color: Colors.blueGrey,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 8.0,
            bottom: 8.0,
            left: 64.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(
              widget.exercise.name, 
              style: Theme.of(context).textTheme.headline
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
          shape: BoxShape.circle,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(exercise.imageUrl ?? ''),
          )
        ),
      );
    }
  


}
