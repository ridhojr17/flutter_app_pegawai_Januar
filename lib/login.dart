import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aplikasi',
        style: TextStyle(color: Colors.white,),
        ), 
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.blue, Colors.purple]),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            print('ini adalah tombol menu');
          },
          icon: Icon(Icons.menu),
          color: Colors.white,
          ),
         actions: [
          IconButton(
            onPressed: () {
            print('ini setting');
          }, 
            icon: Icon(Icons.settings),
            color: Colors.white,
            ),
          IconButton(
            onPressed: () {
            print('ini pencarian');
          },
            icon: Icon(Icons.search),
            color: Colors.white,
            ),
         ],
        // backgroundColor: Colors.blueAccent
      ),
      body: Padding(
        padding: EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 100,
              backgroundImage: NetworkImage(
                'https://media2.giphy.com/media/v1.Y2lkPTc5MGI3NjExcmN1dm1neHJ0d2x6Nm9rZ2Z6eHV4ZHU3aDc4cmtyYTVkcDEybzNrdiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/12uXi1GXBibALC/giphy.webp'
                 ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0)),
                  labelText: 'username',
                  prefixIcon: Icon(Icons.person),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0)),
                  labelText: 'password',
                  prefixIcon: Icon(Icons.password),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
              print('ini tombol masuk');
            }, 
            style: ElevatedButton.styleFrom(
              minimumSize: Size.fromHeight(50),
              backgroundColor: Colors.blueAccent,
              shadowColor: Colors.blueGrey,
              elevation: 10,
            ),
            child: Text('MASUK',
            style: TextStyle(color:Colors.white),
            )),
          ],
        ),
      ),
    );
  }
}