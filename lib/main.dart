import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NavigationExample(),
    );
  }

}

class NavigationExample  extends StatefulWidget{
  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample>{
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
   return Scaffold(
   bottomNavigationBar: NavigationBar(
     onDestinationSelected: (int index){
       setState(()
       {
         currentPageIndex = index;
       });
     },
     selectedIndex: currentPageIndex,
     backgroundColor: Colors.amber[800],
     destinations: [
       NavigationDestination(icon: Icon(Icons.home_outlined), label: 'Home',
       selectedIcon: Icon(Icons.home),),
       NavigationDestination(icon: Icon(Icons.school_outlined), label: 'school',
       selectedIcon: Icon(Icons.school),),
       NavigationDestination(icon: Icon(Icons.business_outlined), label: 'business',
       selectedIcon: Icon(Icons.business),
       ),
     ],

   ),
     body: <Widget>[
       Container(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.start,

           children: [
             Padding(padding: EdgeInsets.all(20),
             child: TextField(
               decoration: InputDecoration(
                 labelText: 'enter email address'
               ),
             ),),
             Padding(padding: EdgeInsets.all(20),
             child: TextField(
               decoration: InputDecoration(
                 labelText: 'enter your password'
               ),
             ),),
             ElevatedButton(onPressed: (){}, child: Text('Sign in')),

           ],

         ),
       ),
       Container(
         color: Colors.yellow,
         alignment: Alignment.center,
         child: Text('Schools are organized spaces purposed for teaching and learning. The classrooms where teachers teach and students learn are of central importance. Classrooms may be specialized for certain subjects, such as laboratory classrooms for science education and workshops for industrial arts education.'),
       ),
       Container(
         color: Colors.blue,
         alignment: Alignment.center,
         child: Text('Business management is the process of planning, organizing, directing, and controlling the activities of a business or organization to achieve its goals and objectives. It involves overseeing all aspects of a business, from finance and operations to marketing and human resources.'),
       ),
     ][currentPageIndex]
   );
  }
}

