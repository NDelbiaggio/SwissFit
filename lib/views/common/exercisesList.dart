import 'package:flutter/material.dart';

import 'exerciseCard.dart';
import 'package:swissfit/model/exercise.dart';

class ExerciseList extends StatelessWidget {

  final List<Exercise> exercises;

  ExerciseList(this.exercises);

   @override
  Widget build(BuildContext context) {
    return _buildList(context);
  }

  ListView _buildList(context) {
    return ListView.builder(
      itemCount: exercises.length,
      itemBuilder: (context, int) {
        return ExerciseCard(exercises[int]);
      },
    );
  }


}