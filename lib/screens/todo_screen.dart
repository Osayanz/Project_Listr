import 'package:flutter/material.dart';
import '../widgets/todo_card.dart';
import './dialogs/add_task_dialog.dart';

class ToDoScreen extends StatelessWidget {
  const ToDoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('To-Do List'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: [
            const ToDoCard('Attend to the Meeting', '9:30 AM', Icons.school),
            const ToDoCard('Vehicle Repair', '2:00 PM', Icons.build),
            const ToDoCard('Cleaning my room', '4:00 PM', Icons.cleaning_services),
            const ToDoCard('Continue Reading', '8:00 PM', Icons.book),
            const ToDoCard('Continue Project', '10:00 PM', Icons.school),
            GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return const AddTaskDialog();
                  },
                );
              },
              child: const Card(
                color: Colors.teal,
                child: Center(
                  child: Icon(
                    Icons.add,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.teal,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('User Info'),
              onTap: () {
                Navigator.pushNamed(context, '/user');
              },
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('Developer Info'),
              onTap: () {
                Navigator.pushNamed(context, '/developer');
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/login');
              },
            ),
          ],
        ),
      ),
    );
  }
}
