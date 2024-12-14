import 'package:flutter/material.dart';
import 'package:flutter_application_1/api/service.dart';
import 'package:flutter_application_1/dashboard.dart';
import 'package:get/get.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {

  final _formState = GlobalKey<FormState>();
  TextEditingController _user = TextEditingController();
  TextEditingController _pass = TextEditingController();

  Future _masuk() async{
  var response = await DataService().LoginService(_user.text, _pass.text);
  if (response == true) {
    Get.offAll(Dashboard());
  } else {
    Get.defaultDialog(
      title: 'user/pass Salah'
    );
  }
  }

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
        child: Form(
          key: _formState,
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
              TextFormField(
                validator: (value) {
                  if (value == ''){
                    return "username tidak boleh kosong";
                  }
                  return null;
                } ,
                controller: _user,
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
               TextFormField(
                validator: (value) {
                  if (value == ''){
                    return "password tidak boleh kosong";
                  }
                  return null;
                } ,
                controller: _pass,
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
                  if (_formState.currentState!.validate()){
                    _masuk();
                  }
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
      ),
    );
  }
}