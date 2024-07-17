import 'package:flutter/material.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.blue),
        debugShowCheckedModeBanner: false,
        darkTheme: ThemeData(primarySwatch: Colors.amber),
        home: const HomeActivity());
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});
  MySanckBar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Inventory'),
          toolbarHeight: 70,
          titleSpacing: 40,
          toolbarOpacity: 0.7,
          elevation: 80,
          backgroundColor: Colors.greenAccent,
          actions: [
            IconButton(
                onPressed: () {
                  MySanckBar('comment', context);
                },
                icon: Icon(Icons.comment)),
            IconButton(
                onPressed: () {
                  MySanckBar('setting', context);
                },
                icon: Icon(Icons.search)),
            IconButton(
                onPressed: () {
                  MySanckBar('search', context);
                },
                icon: Icon(Icons.settings)),
            IconButton(
                onPressed: () {
                  MySanckBar('message', context);
                },
                icon: Icon(Icons.email)),
          ],
        ),
            body:Container(
            height: 200,
                width:500,
              decoration:BoxDecoration(
                color: Colors.greenAccent,
                border: Border.all(color:Colors.black,width:6),

              ),
              padding:EdgeInsets.fromLTRB(40,40,50,50),
              child: Image.network('https://resources.tallysolutions.com/us/wp-content/uploads/2023/02/11302252_How-Inventory-Control-Helps-Your-Business.jpg'),
              margin: EdgeInsets.all(40),
            ),
        floatingActionButton: FloatingActionButton(
          elevation: 20,
          child: Icon(Icons.add),
          backgroundColor: Colors.greenAccent,
          onPressed: () {
            MySanckBar('i am floating', context);
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: 0,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.message), label: 'Contact'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'Profile')
            ],
            onTap: (int Index) {
              if (Index == 0) {
                MySanckBar('I am home menu', context);
              }
              if (Index == 1) {
                MySanckBar('I am contact menu', context);
              }
              if (Index == 2) {
                MySanckBar('I am profile menu', context);
              }
            }),
        drawer: Drawer(
            child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.purpleAccent),
              accountName:
                  Text('Afsana', style: TextStyle(color: Colors.black)),
              accountEmail: Text('asfsana234@gmail.com',
                  style: TextStyle(color: Colors.black)),
              currentAccountPicture: Image.network(
                  'https://cdn.iconscout.com/icon/free/png-512/free-flutter-2038877-1720090.png?f=webp&w=256'),
            )),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                MySanckBar('hello', context);
              },
            ),
            ListTile(leading: Icon(Icons.email), title: Text('Email')),
            ListTile(leading: Icon(Icons.phone), title: Text('phone')),
            ListTile(leading: Icon(Icons.person), title: Text('prifile'))
          ],
        )));

  }
}
