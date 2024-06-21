import 'dart:math';
import 'package:flutter/material.dart';

class calci extends StatefulWidget {
  const calci({super.key});

  @override
  State<calci> createState() => _calciState();
}

class _calciState extends State<calci> {
  TextEditingController imam =TextEditingController();
  TextEditingController originalAmountcontroller =TextEditingController();
  TextEditingController GSTRatecontroller =TextEditingController();

  TextEditingController medi =TextEditingController();
  TextEditingController hospi =TextEditingController();

  double gstamount = 0 ;
  double totalamount = 0 ;
  double ingst= 0;
  double totalamount2=0;

  double hinm=0;
  double h2=0;
  double bmi=0;


  String num1="",num2="",operator="";
  bool click=false;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
         appBar: AppBar(
           actions: [
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Icon(Icons.more_vert),
             )
           ],
         ),
          body: Column(
            children: [
              TabBar(tabs: [
                Tab(text: "Calculator",),
                Tab(text: "GST Calculator"),
                Tab(text: "BMI Calculator",)
              ]),
              SizedBox(height: 150,),
              Expanded(
                child: TabBarView(
                  children:[
                    Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(height:15 ,),
                        Center(
                          child: Container(
                            width: 350,
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.right,
                              controller: imam,
                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ElevatedButton(onPressed: (){
                                imam.text="";
                                operator="";
                                click=false;
                                num1="";
                                num2="";
                              }, child: Text("AC",style: TextStyle(fontSize: 15,color: Colors.green),)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: ElevatedButton(onPressed: (){
                                imam.text="℃";
                              }, child: Text("℃",style: TextStyle(fontSize: 20,color: Colors.green),)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 25),
                              child: ElevatedButton(onPressed: (){
                                imam.text="";
                              }, child: Icon(Icons.backspace_outlined)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: ElevatedButton(onPressed: (){
                                imam.text="×";
                                operator="×";
                                click=true;
                              }, child: Text("×",style: TextStyle(fontSize: 20,color: Colors.green)),
                            )),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ElevatedButton(onPressed: (){
                                if(click){
                                  num2+="7";
                                  imam.text=num2;
                                }
                                else{
                                  num1+="7";
                                  imam.text=num1;
                                }
                              }, child: Text("7",style: TextStyle(fontSize: 25,color: Colors.black),)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: ElevatedButton(onPressed: (){
                                if(click){
                                  num2+="8";
                                  imam.text=num2;
                                }
                                else{
                                  num1+="8";
                                  imam.text=num1;
                                }
                              }, child: Text("8",style: TextStyle(fontSize: 25,color: Colors.black),)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 35),
                              child: ElevatedButton(onPressed: (){
                                if(click){
                                  num2+="9";
                                  imam.text=num2;
                                }
                                else{
                                  num1+="9";
                                  imam.text=num1;
                                }
                              }, child: Text("9",style: TextStyle(fontSize: 25,color: Colors.black),)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 25),
                              child: ElevatedButton(onPressed: (){
                                imam.text="-";
                                operator="-";
                                click=true;
                              }, child: Text("-",style: TextStyle(fontSize: 25,color: Colors.green),)),
                            ),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ElevatedButton(onPressed: (){
                                if(click){
                                  num2+="4";
                                  imam.text=num2;
                                }
                                else{
                                  num1+="4";
                                  imam.text=num1;
                                }
                              }, child: Text("4",style: TextStyle(fontSize: 25,color: Colors.black),)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: ElevatedButton(onPressed: (){
                                if(click){
                                  num2+="5";
                                  imam.text=num2;
                                }
                                else{
                                  num1+="5";
                                  imam.text=num1;
                                }
                              }, child: Text("5",style: TextStyle(fontSize: 25,color: Colors.black),)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 25),
                              child: ElevatedButton(onPressed: (){
                                if(click){
                                  num2+="6";
                                  imam.text=num2;
                                }
                                else{
                                  num1+="6";
                                  imam.text=num1;
                                }
                              }, child: Text("6",style: TextStyle(fontSize: 25,color: Colors.black),)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: ElevatedButton(onPressed: (){
                                imam.text="+";
                                operator="+";
                                click=true;
                              }, child: Text("+",style: TextStyle(fontSize: 25,color: Colors.green),)),
                            ),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ElevatedButton(onPressed: (){
                                if(click){
                                  num2+="1";
                                  imam.text=num2;
                                }
                                else{
                                  num1+="1";
                                  imam.text=num1;
                                }
                              }, child: Text("1",style: TextStyle(fontSize: 25,color: Colors.black),)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: ElevatedButton(onPressed: (){
                                if(click){
                                  num2+="2";
                                  imam.text=num2;
                                }
                                else{
                                  num1+="2";
                                  imam.text=num1;
                                }
                              }, child: Text("2",style: TextStyle(fontSize: 25,color: Colors.black),)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 35),
                              child: ElevatedButton(onPressed: (){
                                if(click){
                                  num2+="3";
                                  imam.text=num2;
                                }
                                else{
                                  num1+="3";
                                  imam.text=num1;
                                }
                              }, child: Text("3",style: TextStyle(fontSize: 25,color: Colors.black),)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 25),
                              child: ElevatedButton(onPressed: (){
                                imam.text="÷";
                                operator="÷";
                                click=true;
                              }, child: Text("÷",style: TextStyle(fontSize: 25,color: Colors.green),)),
                            ),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ElevatedButton(onPressed: (){
                                imam.text="%";
                                operator="%";
                                click=true;
                              }, child: Text("%",style: TextStyle(fontSize: 25,color: Colors.black),)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: ElevatedButton(onPressed: (){
                                if(click){
                                  num2+="0";
                                  imam.text=num2;
                                }
                                else{
                                  num1+="0";
                                  imam.text=num1;
                                }
                              }, child: Text("0",style: TextStyle(fontSize: 25,color: Colors.black),)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 25),
                              child: ElevatedButton(onPressed: (){
                                if(click){
                                  num2+=".";
                                  imam.text=num2;
                                }
                                else{
                                  num1+=".";
                                  imam.text=num1;
                                }
                              }, child: Text(".",style: TextStyle(fontSize: 25,color: Colors.black),)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 25),
                              child: ElevatedButton(onPressed: ()
                              {
                                if(operator=="+"){
                                  double a=double.parse(num1);
                                  double b=double.parse(num2);
                                  double c=a+b;
                                  imam.text= c.toString();
                                }
                                else if(operator=="×"){
                                  double a=double.parse(num1);
                                  double b=double.parse(num2);
                                  double c=a*b;
                                  imam.text= c.toString();
                                }
                                else if(operator=="-"){
                                  double a=double.parse(num1);
                                  double b=double.parse(num2);
                                  double c=a-b;
                                  imam.text= c.toString();
                                }
                                else if(operator=="÷"){
                                  double a=double.parse(num1);
                                  double b=double.parse(num2);
                                  double c=a/b;
                                  imam.text= c.toString();
                                }
                                else if(operator=="√"){
                                  double a=double.parse(num1);
                                  num c= pow(a,1/2);
                                  imam.text= c.toString();
                                }
                                else if(operator=="|"){
                                  double a=double.parse(num1);
                                  double b=double.parse(num2);
                                  double c=a%b;
                                  imam.text= c.toString();
                                }
                                else if(operator=="%"){
                                  double a=double.parse(num1);
                                  double b=double.parse(num2);
                                  double c=b/a*100;
                                  imam.text= c.toString();
                                }
                              }, child: Text("=",style: TextStyle(fontSize: 25,color: Colors.green),)),
                            ),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(onPressed: (){
                              imam.text="√";
                              operator="√";
                              click=true;
                            }, child: Text("√",style: TextStyle(fontSize: 30,color: Colors.redAccent),)),
                            ElevatedButton(onPressed: (){
                              imam.text="|";
                              operator="|";
                              click=true;
                            }, child: Text("Mod",style: TextStyle(fontSize: 20),))
                          ],
                        ),
                        SizedBox(height: 5,),
                      ],
                    ),
                  ),
                    Column(
                      children: [
                        SizedBox(height: 50,),
                        Container(
                          height: 100,
                          width: 200,
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            controller: originalAmountcontroller,
                            decoration: InputDecoration(
                              hintText: "Amount",
                              border: OutlineInputBorder()
                            ),
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 200,
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            controller: GSTRatecontroller,
                            decoration: InputDecoration(
                              hintText: "GST Percentage",
                                border: OutlineInputBorder()
                            ),
                          ),
                        ),
                        ElevatedButton(onPressed: (){
                          setState(() {
                            double amount= double.tryParse(originalAmountcontroller.text)??0;
                            double gst = double.tryParse(GSTRatecontroller.text)?? 0;

                            gstamount = (amount*gst)/100;
                            totalamount = amount+gstamount;

                            ingst=amount-(amount*(100/(100+gst)));
                            totalamount2= amount-ingst;

                            showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                title: Center(child: Text('ALERT FOR GST')),
                                content: Container(
                                  height: 150,
                                  child: Column(
                                    children: [
                                      Text("Exclusive GST",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                                      Text("GST is: $gstamount"),
                                      Text("Total is: $totalamount"),
                                      SizedBox(height: 15,),
                                      Text("Inclusive GST",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                                      Text("GST is: $ingst"),
                                      Text("Total is: $totalamount2"),
                                    ],
                                  ),
                                ),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () => Navigator.pop(context, 'OK'),
                                    child: const Text('OK'),
                                  ),
                                ],
                              ),
                            );
                          });

                        }, child: Text("Calculate")),


                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(height: 20,),
                        Container(
                          height: 100,
                          width: 200,
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            controller: medi,
                            decoration: InputDecoration(
                                hintText: "Height in CM",
                                border: OutlineInputBorder()
                            ),
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 200,
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            controller: hospi,
                            decoration: InputDecoration(
                                hintText: "Weight in KG",
                                border: OutlineInputBorder()
                            ),
                          ),
                        ),
                        ElevatedButton(onPressed: (){

                          setState(() {
                            double h1 = double.tryParse(medi.text)??0;
                            double w1 = double.tryParse(hospi.text)?? 0;

                            hinm=h1/100;
                            h2=hinm*hinm;
                            bmi=w1/h2;

                            if (bmi<18.5)
                            {
                              showModalBottomSheet(
                                  context: context,
                                  builder: (BuildContext context)
                                  {
                                    return Container(
                                        color: Colors.orange,
                                        height: 200,
                                        width: double.infinity,
                                        child: Center(child: Container(
                                          child: Column(
                                            children: [
                                              SizedBox(height: 35,),
                                              Center(child: Text("Under Weight 😥")),
                                              Text("RESULTS:  $bmi",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black),
                                              ),
                                            ],
                                          ),
                                        ),
                                        ),
                                    );

                                  }
                              );
                            }


                            else if (bmi>=18.5  && bmi<25)
                            {
                            showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context)
                            {
                            return Container(
                            color: Colors.green,
                            height: 200,
                            width: double.infinity,
                            child: Center(child:
                            Container(
                              child: Column(
                                children: [
                                  SizedBox(height: 35,),
                                  Center(child: Text(" NOrmal 😍 ")),
                                  Text("RESULTS: $bmi",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                            ),
                            );
                            }
                            );
                            }

                            else if (bmi >= 25)
                            {
                            showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context)
                            {
                            return Container(
                            color: Colors.redAccent,
                            height: 200,
                            width: double.infinity,
                            child: Center(child: Container(
                              child: Column(
                                children: [
                                  SizedBox(height: 35,),
                                  Text("High Weight  👿👊"),
                                  Text(
                                    "RESULTS: "
                                        " $bmi",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                            ),
                            );

                            }
                            );
                            }
                          });
                        }, child: Text("Calculate",style: TextStyle(fontWeight: FontWeight.bold))),
                      ],
                    ),

                  ]
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
