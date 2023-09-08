import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),);
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color f = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Posts"),
        backgroundColor: const Color.fromARGB(255, 8, 58, 109),
      ),
      body: Center(
        child: Container(
          width: 400,
          height: 500,
          decoration: BoxDecoration(color: const Color.fromARGB(255, 238, 238, 238),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 230, 230, 230),
              blurRadius: 4,
              offset: Offset(3, 3)
            )
          ]),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(20),
                child: Row(
                  children: [
                    CircleAvatar(backgroundImage: AssetImage("assets/images.jpg"),radius: 30,),
                    SizedBox(width: 10,),
                    Text("Juhaina Ali")
                  ],
                ),
              ),
              Container(
                child: Image(image: AssetImage("assets/images.jpg"),width: 400,height: 300,fit: BoxFit.cover,)),
              Row(
                children: [
                  Column(
                    children: [
                  IconButton(onPressed: (){
                    f = Colors.red;
      
                    setState(() {
                      
                    });
                  }, icon: Icon(Icons.favorite,
                  color: f,)),
                  Text("100")
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(onPressed: (){
                    Color f = Colors.red;
      
                    setState(() {
                      
                    });
                  }, icon: Icon(Icons.chat)), 
                  Text("100")
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}


// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   int count = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Title"),
//         backgroundColor: Colors.blue[700],
//         actions: [
//           IconButton(onPressed: (){
//             count++;
//             setState((){});
//           }, 
//           icon: Icon(Icons.add))
//         ],
//       ),
//       body: Text(

//       ),
//     );
//   }
// }