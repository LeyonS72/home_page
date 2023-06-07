import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),);
  }

}
class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});


  MySnackBar(massage, context){
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(massage))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Leyon Rayhan"),
        backgroundColor: Colors.deepOrange,
        
        actions: [
          IconButton(onPressed: () {MySnackBar("hello", context);},
              icon: Icon(Icons.search))
        ],

      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
      child: Icon(Icons.add),
      backgroundColor: Colors.deepOrange,
      onPressed: (){
        MySnackBar("Snackbar", context);
      },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon:Icon(Icons.person), label: "Profile")
        ],
        onTap: (int index){
          if(index==0){
            MySnackBar("Hello", context);
            if(index==1){
              MySnackBar("Mash Madarchud", context);
            }
          }
        },
        
      ),
    drawer: Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
          decoration: BoxDecoration(color: Colors.black),
      accountName: Text("Leyon Rayhan", style: TextStyle(color: Colors.deepOrange),),
      accountEmail: Text("info@hello.com"),
      onDetailsPressed: (){
            MySnackBar("This Is profile", context);
      },
      currentAccountPicture: Image.network("https://purepng.com/public/uploads/large/purepng.com-mariomariofictional-charactervideo-gamefranchisenintendodesigner-1701528634653vywuz.png")
      )

          ),

          ListTile(title: Text("Home"),
              leading: Icon(Icons.home),
              onTap: (){ MySnackBar("Home is Here", context);
          }
          ),
          ListTile(title: Text("Settings"))

        ],
      ),
    ),
    );
  }
}