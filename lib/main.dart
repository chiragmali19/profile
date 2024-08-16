import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('John Doe'),
              accountEmail: Text('johndoe@example.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('https://via.placeholder.com/150'),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                // Handle tap on Home
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                // Handle tap on Settings
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Welcome to my app!'),
      ),
    );
  }
}




// Here are the key points to remember in this code:

//1 MaterialApp: The MaterialApp widget is the root of the Flutter application. It provides the material design theme and other essential features.
//2 ThemeData: The ThemeData object is used to customize the appearance of the application. In this code, it's used to set the primary color scheme to deep purple.
//3 Scaffold: The Scaffold widget is a top-level container for a MaterialApp. It provides a basic material design layout structure, including an app bar, body, and drawer.
//4 Drawer: The Drawer widget is used to create a navigation drawer that can be opened by swiping from the left edge of the screen.
//5 ListView: The ListView widget is used to display a list of items in the drawer. In this code, it's used to display a list of ListTile widgets.
//6 UserAccountsDrawerHeader: The UserAccountsDrawerHeader widget is used to display a header in the drawer that shows the user's account information.
//7 ListTile: The ListTile widget is used to display a single item in the list. In this code, it's used to display a title, leading icon, and onTap callback.
//8 AppBar: The AppBar widget is used to display a title at the top of the screen.
//9 Body: The body property of the Scaffold widget is used to display the main content of the screen.
//10 Center: The Center widget is used to center its child widget horizontally and vertically.
//11 Additionally, here are some best practices to keep in mind:

//- Use meaningful variable names and follow the Flutter coding conventions.
//- Keep the code organized and structured, with each widget having a clear purpose.
//- Use the const keyword to optimize performance by creating immutable widgets.
//- Use the @override annotation to indicate when a method is overriding a parent class method.
