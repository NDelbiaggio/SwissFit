
import 'package:flutter/foundation.dart';

class Exercise {
  final String id;
  final String name;

  String imageUrl; 

  Exercise(this.id, this.name, this.imageUrl);


}

class AppState {
  final List<Exercise> exercises;

  AppState({
    @required this.exercises
  });

  AppState.initialState() : exercises = List.unmodifiable(<Exercise>[]);
}