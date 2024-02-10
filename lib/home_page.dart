import 'package:flutter/material.dart';
import 'package:practice_15/add_new_course.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  opi() {
    showModalBottomSheet(
        backgroundColor: Colors.red,
        context: context,
        builder: (context) => AddNewCourse());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "Home Page",
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          opi();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
