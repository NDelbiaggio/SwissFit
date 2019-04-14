import 'package:flutter/material.dart';
import 'package:swissfit/model/exercise.dart';

class AddExerciseFormPage extends StatefulWidget{
  @override
  _AddExerciseFormPageState createState() => _AddExerciseFormPageState();
}

class _AddExerciseFormPageState extends State<AddExerciseFormPage>{

  TextEditingController nameController = TextEditingController();
  TextEditingController musclesController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Add a new exercise"),
        backgroundColor: Colors.redAccent,
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 8.0,
            horizontal: 32.0
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: TextField(
                  controller: nameController,
                  onChanged: (name)=>nameController.text = name,
                  decoration: InputDecoration(
                    labelText: "Exercise Name"
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: TextField(
                  controller: musclesController,
                  onChanged: (muscles)=>musclesController.text = muscles,
                  decoration: InputDecoration(
                    labelText: "Muscles trained"
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Builder(
                  builder: (context){
                    return RaisedButton(
                      onPressed: ()=> submitExercise(context),
                      color: Colors.indigoAccent,
                      child: Text("Save Exercise"),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void submitExercise(BuildContext context){
    if(nameController.text.isEmpty){
      Scaffold.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.redAccent,
          content: Text("Name is required")
        )
      );
      print("Exercise needs a name!");
    }else{
      var newExercise = Exercise(DateTime.now().toString(),nameController.text, musclesController.text,"");
      Navigator.of(context).pop(newExercise);
    }
  }
}