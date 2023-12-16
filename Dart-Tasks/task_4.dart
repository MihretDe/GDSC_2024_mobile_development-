import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/image/AASTU_Logo_1.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Firstpage()),
                );
              },
              child: const Text("Get started"),
            ),
          ),
        ),
      ),
    );
  }
}

class Firstpage extends StatelessWidget {
  const Firstpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Page"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Icon(Icons.ac_unit),
              Text(" TODO list"),
              Icon(Icons.more_vert),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/image/AASTU_Logo_1.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            height: 200,
          ),
          Text("Tasks list"),
          // Add your task list containers here
           Container(
            padding: EdgeInsets.all(10), // added padding around the text
            margin: EdgeInsets.all(10), // added margin around the container
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black), // added border around the container
              borderRadius: BorderRadius.circular(10), // added border radius to give rounded corners
            ),
            child: Text(
              "U UI/UX App Design, 29, 2023",
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              "U UI/UX App Design, 29, 2023",
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              "V View candidates, 29, 2023",
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              "U UI/UX App Design, 29, 2023",
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Create()),
                );
              },
              child: const Text("Create Task"),
            ),
          ),

        ],
      ),
    );
  }
}


class Create extends StatelessWidget {
  const Create({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Icon(Icons.ac_unit),
              Text(" TODO list"),
              Icon(Icons.more_vert),
            ],
          ),
          Text("Create New Task"),
          Text("Main Task Name"),
          TextField(
            decoration: InputDecoration(prefixIcon: Icon(Icons.input)),
            border: OutlineInputBorder(),
          ),
          Text("Due Date"),
          TextField(
            decoration: InputDecoration(prefixIcon: Icon(Icons.date_range)),
            border: OutlineInputBorder(),
          ),
          Text("Description"),
          TextField(
            decoration: InputDecoration(prefixIcon: Icon(Icons.input)),
            border: OutlineInputBorder(),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Taskdetail()),
                );
              },
              child: const Text("Add Task"),
            ),
          ),
        ],
      ),
    );
  }
}
Class Taskdetail extends StatelessWidget {
  const Taskdetail({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Taskdetail"),
      ),
  body: Column(
        children: [
          Row(
            children: [
              Icon(Icons.ac_unit),
              Text("Task Details"),
              Icon(Icons.more_vert),
            ],
          ),
          Text("Title"),
          // Add your task list containers here
           Container(
            padding: EdgeInsets.all(10), // added padding around the text
            margin: EdgeInsets.all(10), // added margin around the container
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black), // added border around the container
              borderRadius: BorderRadius.circular(10), // added border radius to give rounded corners
            ),
            child: Text(
              "UI/UX App Design",
            ),
          ),
          Text("Description"),
          // Add your task list containers here
           Container(
            padding: EdgeInsets.all(10), // added padding around the text
            margin: EdgeInsets.all(10), // added margin around the container
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black), // added border around the container
              borderRadius: BorderRadius.circular(10), // added border radius to give rounded corners
            ),
            child: Text(
              "First i have to ",
            ),
          ),
          Text("Deadline"),
          // Add your task list containers here
           Container(
            padding: EdgeInsets.all(10), // added padding around the text
            margin: EdgeInsets.all(10), // added margin around the container
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black), // added border around the container
              borderRadius: BorderRadius.circular(10), // added border radius to give rounded corners
            ),
            child: Text(
              "April 23 2023",
            ),
          ),

          ]


  )

}
}
