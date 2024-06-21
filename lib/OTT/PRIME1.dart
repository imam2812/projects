import 'package:flutter/material.dart';
import 'package:project/OTT/authservice.dart';
import 'package:project/OTT/signup.dart';
import 'BOTNAVI.dart';

class ott1 extends StatefulWidget {
  const ott1({super.key});

  @override
  State<ott1> createState() => _ott1State();
}

class _ott1State extends State<ott1> {

  TextEditingController imam5 = TextEditingController();
  TextEditingController imam4 = TextEditingController();

  final imam3 = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/1/11/Amazon_Prime_Video_logo.svg/2560px-Amazon_Prime_Video_logo.svg.png"),
        ),
        title: Center(child: Text("Login Page")),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.person),
          )
        ],
      ),

      body: Form(
        key: imam3,
        child: Column(
          children: [

            SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 80,
                width: 400,
                child: TextFormField(
                  controller: imam4,
                  keyboardType: TextInputType.name,
                  validator: (int){
                    if(int==null   || int.isEmpty){
                      return "Enter Valid Name";
                    }
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    icon: Icon(Icons.person),
                    hintText: "Enter Your Name"
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 80,
                width: 400,
                child: TextFormField(
                  controller: imam5,
                  validator: (input){
                    if(input==null  ||  input.isEmpty || input.length!=8)
                      return "Enter Valid Password";
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      icon: Icon(Icons.keyboard),
                      hintText: "Enter Your Password"
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 130),
              child: Row(
                children: [
                  ElevatedButton(onPressed: ()async{

                    final message = await AuthService().login(
                        email: imam4.text,
                        password: imam5.text);

                    if(imam3.currentState!.validate()){
                      if (message!.contains("Success")){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => prime()),
                        );

                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Successfully Logged In"))
                        );
                      }
                      else { ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Does Not Exist"))
                      );
                      }


                    }
                  }, child: Text("Login")),
                  SizedBox(width: 25,),
                  ElevatedButton(onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ott7()),
                    );
                  }, child: Text("Sign up")),

                ],
              ),
            ),
            
            SizedBox(height: 10,),

            Center(
              child: Container(
                height: 250,
                width: 400,
                child: Image.network("https://images.squarespace-cdn.com/content/v1/56feec9dcf80a1095e4b8d26/1563892196700-TPSQ15CHYXDCO80QQ9GL/towergif.gif"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
