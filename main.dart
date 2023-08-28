import 'package:animepic/widgets/LogInUi.dart';
import 'package:flutter/material.dart';
import 'package:animepic/widgets/SignUp.dart';

void main() =>
  runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AnimeApp',
      home:HomeScreen(),
    );
  }
}
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const AnimeApp();
  }
}

// log in ui
class AnimeApp extends StatefulWidget {
  const AnimeApp({super.key});

  @override
  State<AnimeApp> createState() => _AnimeAppState();
}

class _AnimeAppState extends State<AnimeApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.red,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: ListView(
            children: [
              Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text("Wellcome!",style: TextStyle(
                  fontSize: 75,
                  fontWeight: FontWeight.bold
                ),),
                const SizedBox(height: 20,),
                Container(
                  height: 270,
                  width:270,
                  decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(150),
                      color: Colors.tealAccent.shade400
                  ),
                  child:const Icon(
                    Icons.computer,
                    size: 200,
                  ),
                ),           //logo
                const Center(
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('company',style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 55,
                        textBaseline: null,
                      )),
                      Text('-in',style: TextStyle(
                        color: Colors.black,
                        fontSize:50,
                        textBaseline: null,
                      ))
                    ],
                  ),
                ),              //nextin
                Center(
                    child: Container(
                      margin: const EdgeInsets.only(top: 20, bottom: 10),
                      padding: const EdgeInsets.only(
                          left: 30, right: 15, top: 15, bottom: 10),
                      width: 350,
                      decoration: BoxDecoration(
                          color: Colors.black, borderRadius: BorderRadius.circular(15)),
                      child: TextButton(
                         onPressed: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context) => const LogInUi()));
                         },
                        child: const Text('Login',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              textBaseline: null,
                            )),
                      ),
                    )),               //login
                Center(
                    child: Container(
                      margin: const EdgeInsets.only(top: 20, bottom: 20),
                      padding: const EdgeInsets.only(
                          left: 30, right: 15, top: 15, bottom: 10),
                      width: 350,
                      decoration: BoxDecoration(
                         // color: Colors.grey.shade300,
                          border: Border.all(color:Colors.black),
                          borderRadius: BorderRadius.circular(15)),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp())
                          );
                        },
                        child: const Text('Sign up',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              textBaseline: null,
                            )),
                      ),
                    )),              //signup
                Center(
                    child: TextButton( onPressed: (){},
                        child:  const Text('Continue as a guest',
                            style: TextStyle(
                              color: Colors.teal,
                              fontSize: 20,
                              textBaseline: null,
                            ))
                    )         //continue
                ),
                const SizedBox(height:10)],
                ),
            ],
          ),
        ),
      ),
    );
  }
}