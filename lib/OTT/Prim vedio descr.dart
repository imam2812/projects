import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Prime vedio page.dart';

class ott5 extends StatefulWidget {
  const ott5({super.key});

  @override
  State<ott5> createState() => _ott5State();
}

class _ott5State extends State<ott5> {

  List a = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpTfunHSyPPGdZ5pa7GTGv9ENWXYVE1zfsPw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLWY2-6FZ16M49VsVxYjfRlEGkhKVQHXZpJQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ87N_gt-njygP1t-Eu2FPz4UoiY_0-FHdx6g&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRjK8fBbSbb4HwxeozqsGAWuHPoEh_-jF_yg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxs-BQEv4fepmJy0qasks83-bkTD9IC4QLmw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdJ05Z0L5uCCuSzyOrSI7PvDHI8Yp6A6Rqog&usqp=CAU",
  ];

  List b = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQ7pWdPRFbp5gpuro6WXBA4vY5YM_eD3ayJA&usqp=CAU",
    "https://i.ytimg.com/vi/GR-Ui8-V2M0/maxresdefault.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEWH2cfBhdWI9-y4EsRHQ_oS-MTVYGBJZ3AQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxs-BQEv4fepmJy0qasks83-bkTD9IC4QLmw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8M65IYjB7hrZP2Pt42wl_tW2OVvnlD0FEkg&usqp=CAU",
    "https://i.ytimg.com/vi/xWe03YByWEI/maxresdefault.jpg",
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: Colors.black87,
      appBar: AppBar(
      //  backgroundColor: Colors.black87,
        actions: [
          Icon(
            Icons.podcasts,
            color: Colors.greenAccent,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.person,
              color: Colors.blue,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [

              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZbjupnF2Ki-KUKqnaEWO9VoYjyuXOi6VY6A&usqp=CAU"))),
              ),

              SizedBox(
                height: 10,
              ),

              Padding(
                padding: const EdgeInsets.only(right: 380),
                child: Text(
                  "Lover",
                  style: TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
              ),

              Container(
                  color: Colors.grey,
                  height: 80,
                  width: 400,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 60),
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ott6()),
                          );
                        },
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Icon(
                                Icons.play_arrow,
                                color: Colors.redAccent,
                              ),
                            ),
                            Text(
                              "Watch The Movie \n For Free",
                              style: TextStyle(
                                  color: Colors.greenAccent,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ],
                        )),
                  )),
              
              SizedBox(
                height: 15,
              ),
              
              Container(
                  color: Colors.grey,
                  height: 80,
                  width: 400,
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Wtch With Prime \n Start Your 30 - Day Trial",
                        style: TextStyle(
                            color: Colors.redAccent,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ))),
              
              SizedBox(
                height: 20,
              ),
              
              Container(
                height: 100,
                width: double.infinity,
                child: ListView(scrollDirection: Axis.horizontal, children: [
                  SizedBox(width: 10,),
                  TextButton(
                      onPressed: () {},
                      child: Center(
                        child: Column(
                          children: [
                            Icon(Icons.play_circle_fill,color: Colors.blueAccent,),
                            SizedBox(height: 5,),
                            Text("Trailer",style: TextStyle(color: Colors.deepPurple),)
                          ],
                        ),
                      ),
                  ),
                  
                  SizedBox(width: 35,),
                  
                  TextButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          Icon(Icons.watch_later_outlined,color: Colors.blueAccent,),
                      
                      SizedBox(height: 5,),
                      
                      Text("Watchlist",style: TextStyle(color: Colors.deepPurple),)
                        ],
                      )),
                  
                  SizedBox(width: 35,),
                  
                  TextButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          Icon(Icons.thumb_up_off_alt_rounded,color: Colors.blueAccent,),
                          SizedBox(height: 5,),
                          Text("Like",style: TextStyle(color: Colors.deepPurple),)
                        ],
                      )),
                  
                  SizedBox(width: 35,),
                  
                  TextButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          Icon(Icons.thumb_down,color: Colors.blueAccent,),
                          SizedBox(height: 5,),
                          Text("Not For Me",style: TextStyle(color: Colors.deepPurple),)
                        ],
                      )),
                  
                  SizedBox(width: 35,),
                  
                  TextButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          Icon(Icons.share,color: Colors.blueAccent,),
                          SizedBox(height: 5,),
                          Text("Share",style: TextStyle(color: Colors.deepPurple),)
                        ],
                      )),
                ]),
              ),
              
              Text("Arun and Divya's six-year relationship starts \nunraveling as they drift apart, raising the question \nof whether love can withstand such differences.",
                style: TextStyle(
                  fontSize: 20,
                    color: Colors.redAccent),),

              SizedBox(height: 15,),
              
              Padding(
                padding: const EdgeInsets.only(right: 130),
                child: Text(" Romantic * Drama's",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color:Colors.deepOrangeAccent ),),
              ),

              SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.only(right: 390),
                child: Text("IMDb 8.5",
                  style: TextStyle(
                      color: Colors.grey),),
              ),

              SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.only(right: 340),
                child: Text("10 Episodes 2024",
                  style: TextStyle(
                      color: Colors.grey),),
              ),

              SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.only(right: 380),
                child: Text("Languages",
                  style: TextStyle(
                      color: Colors.blueAccent),),
              ),

              Padding(
                padding: const EdgeInsets.only(right: 320),
                child: Text("Audio(4),Subtitles(4)",
                  style: TextStyle(
                      color: Colors.grey),),
              ),

              SizedBox(height: 15,),

              Container(
                height: 180,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: b.length,
                    itemBuilder: (BuildContext context ,int index)
                    {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              height: 150,
                              width: 220,
                              decoration: BoxDecoration(
                                  image: DecorationImage(image: NetworkImage(b[index]),fit: BoxFit.fill)
                              ),
                              //child: Image.network(b[index],fit: f,),
                            ),
                            SizedBox(height: 5,),
                            Padding(
                              padding: const EdgeInsets.only(right: 190),
                              child: Text("Movies",style: TextStyle(fontSize: 5,fontWeight: FontWeight.bold,color: Colors.redAccent),),
                            )
                          ],
                        ),
                      );
                    }
                ),
              ),

              SizedBox(height: 5,),

              Container(
                height: 180,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: a.length,
                    itemBuilder: (BuildContext context ,int index)
                    {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              height: 150,
                              width: 220,
                              decoration: BoxDecoration(
                                  image: DecorationImage(image: NetworkImage(a[index]),fit: BoxFit.fill)
                              ),

                              //    child: Image.network(d[index]),
                            ),
                            SizedBox(height: 5,),
                            Padding(
                              padding: const EdgeInsets.only(right: 190),
                              child: Text("Movies",style: TextStyle(fontSize: 5,fontWeight: FontWeight.bold,color: Colors.redAccent),),
                            )
                          ],
                        ),
                      );
                    }
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
