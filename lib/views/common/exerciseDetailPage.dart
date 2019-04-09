import 'package:flutter/material.dart';
import 'package:swissfit/model/exercise.dart';

class ExerciseDetailPage extends StatefulWidget {
  final Exercise exercise;

  ExerciseDetailPage(this.exercise);

  @override
  _ExerciseDetailPageState createState() => _ExerciseDetailPageState();
}

class _ExerciseDetailPageState extends State<ExerciseDetailPage>{

  final double exerciseAvatarSize = 150.0;


  Widget get exerciseImage {
    return Container(
      height: exerciseAvatarSize,
      width: exerciseAvatarSize,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          const BoxShadow(
            offset: const Offset(1.0, 2.0),
            blurRadius: 2.0,
            spreadRadius: -1.0,
            color: const Color(0x33000000)
          ),
          const BoxShadow(
              offset: const Offset(2.0, 1.0),
              blurRadius: 3.0,
              spreadRadius: 0.0,
              color: const Color(0x24000000)),
          const BoxShadow(
              offset: const Offset(3.0, 1.0),
              blurRadius: 4.0,
              spreadRadius: 2.0,
              color: const Color(0x1F000000)),          
        ],
        image: DecorationImage(
          fit: BoxFit.fill,
          image: NetworkImage(widget.exercise.imageUrl),
        )
      ),
    );
  }

  Widget get exerciseDetails {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical: 32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          exerciseImage,
          Text(
            widget.exercise.name, 
            style: TextStyle(fontSize: 20.0),
          ),
          Text(
            widget.exercise.muscles
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('${widget.exercise.name}'),
      ),
      body: exerciseDetails,
    );
  }

}
