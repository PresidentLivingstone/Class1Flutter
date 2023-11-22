import 'package:flutter/material.dart';
import 'package:firstapp/chatScreen.dart';
import 'package:firstapp/secondScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WELCOME ,LIVINGSTONE'),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 1, 11, 18).withOpacity(.8),
        child: Column(
          children: [
            const SizedBox(height: 20),
            const CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('assets/images/avatar.jpg'),
            ),
            buildListTile('Home'),
            buildListTile('Profile'),
            buildListTile('Settings'),
            buildListTile('Help'),
            buildListTile('Logout'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ChatScreen()));
        },
        backgroundColor: Colors.orange,
        child: const Icon(Icons.chat, color: Colors.white),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SecondScreen()));
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.orange,
            ),
            child: const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text("NEXT PAGE ,CLICK HRERE  !!"),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.black87,
    );
  }

  // Helper method to create a ListTile with white text color
  Widget buildListTile(String title) {
    return ListTile(
      title: Text(title, style: const TextStyle(color: Colors.white)),
    );
  }
}
