import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Home", style: TextStyle(fontSize: 24),),
            ElevatedButton(onPressed: (){
              // Navigation Route home -> Route settings
              //  Navigator.typeofNavigation(current location, destination);
              Navigator.push(context, MaterialPageRoute(
                builder: (context)=>SettingsScreen(),
              ),
              );

            }, child: Text("Go to Settings"),
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context)=>OrderssScreen(),
              ),
              );

            }, child: Text("Go to Orders"),
            ),
          ],
        ),
      ),
    );
  }
}

//Route settings
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Settings"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Settings", style: TextStyle(fontSize: 24),),
            ElevatedButton(onPressed: (){
           Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>HomeScreen()), (route) => false);
               }, child:Text("Home"))


          ],
        ),
      ),
    );
  }
}
// Route Orders
class OrderssScreen extends StatelessWidget   {
  const OrderssScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Orders"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Orders", style: TextStyle(fontSize: 24),),
            TextButton(onPressed: (){

              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SettingsScreen() ));
            }, child: Text(" Go to settings"),
            ),
        TextButton(onPressed: (){
         //Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen() ));
          Navigator.pop(context);
        }, child: Text(" Go to Home"),)
          ],
        ),
      ),
    );
  }
}


