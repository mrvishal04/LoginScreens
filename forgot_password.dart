import 'package:animepic/widgets/LogInUi.dart';
import 'package:flutter/material.dart';
class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AnimeApp',
      home:SafeArea(
        child:Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(alignment: Alignment.topLeft,
                        child: IconButton(onPressed: (){
                          Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>LogInUi())
                          );
                        }, icon:const Icon(Icons.arrow_back_ios,size: 30,)),
                      ),
                    ),                        //back button
                    const Text("Forgot Password ?",
                      style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 40),),                      //forgot text
                    const Padding(
                      padding:EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                      child:  Text("Don't worry ! It occurs. Please enter the email address linke with your accojunt.",style: TextStyle(
                        fontSize: 15,color: Colors.grey
                      ),),
                    ),                   //dont worry text
                    const Padding(
                      padding: EdgeInsets.only(left: 30,right: 30,top: 30),
                      child:  TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter your Email'
                        ),

                      ),
                    ),                   //input email
                    const SizedBox(height: 30,),
                    Container(width: 340,
                      padding: const EdgeInsets.all(7),
                      decoration:BoxDecoration(
                        color:Colors.black,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: TextButton(onPressed: (){}, child: const Text('Send Code',style: TextStyle(
                        fontSize: 20,color: Colors.white
                      ),)),
                    )//email
                  ],
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   const Text('Remember the password?'),
                    TextButton(onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=>LogInUi())
                      );
                    }, child: const Text("Log in"))
                  ],
                ),
              ],
            ),
          ),
        )
      )
    );
  }
}
