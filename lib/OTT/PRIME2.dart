import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'Prim vedio descr.dart';

class ott2 extends StatefulWidget {
  const ott2({super.key});

  @override
  State<ott2> createState() => _ott2State();
}

class _ott2State extends State<ott2> {

  List a= [
    "https://i.ytimg.com/vi/xWe03YByWEI/maxresdefault.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSenELOEVRzpL1Xw8MEccJIJFF6_P1DDKneUw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNZFzEJX41qiSNyj9ssLQJGWtMnbozwRNZrQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwJeIVdMmWvrpiWonlmH7zp8f7tPFNpOCHoQ&usqp=CAU",
    "https://i.ytimg.com/vi/GR-Ui8-V2M0/maxresdefault.jpg",
  ];

  List b = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpTfunHSyPPGdZ5pa7GTGv9ENWXYVE1zfsPw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLWY2-6FZ16M49VsVxYjfRlEGkhKVQHXZpJQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ87N_gt-njygP1t-Eu2FPz4UoiY_0-FHdx6g&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRjK8fBbSbb4HwxeozqsGAWuHPoEh_-jF_yg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxs-BQEv4fepmJy0qasks83-bkTD9IC4QLmw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdJ05Z0L5uCCuSzyOrSI7PvDHI8Yp6A6Rqog&usqp=CAU",
  ];

  List c = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCXagIWWU7-UUzc7vnlgWZz6B4eX-GwqTXdA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQ7pWdPRFbp5gpuro6WXBA4vY5YM_eD3ayJA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8M65IYjB7hrZP2Pt42wl_tW2OVvnlD0FEkg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGXQujvEJ9qQai3pUoAFnmcrK_R4JmTg4UgQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGsMFFNQGIkBf_A1ZYo5SR-wNQqgqKDZfs4g&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpTfunHSyPPGdZ5pa7GTGv9ENWXYVE1zfsPw&usqp=CAU",
  ];

  List d = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQ7pWdPRFbp5gpuro6WXBA4vY5YM_eD3ayJA&usqp=CAU",
    "https://i.ytimg.com/vi/GR-Ui8-V2M0/maxresdefault.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEWH2cfBhdWI9-y4EsRHQ_oS-MTVYGBJZ3AQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxs-BQEv4fepmJy0qasks83-bkTD9IC4QLmw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8M65IYjB7hrZP2Pt42wl_tW2OVvnlD0FEkg&usqp=CAU",
    "https://i.ytimg.com/vi/xWe03YByWEI/maxresdefault.jpg",
  ];

  List e =[
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShBR84jwuOYQW0v020PRCIzQEGOC02LNGcgA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8cNXbMVIMDp1M3X6gU7pmqj4u8g-aL1DPbA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLDFRmiYE1HZZC3VZIMXalQ-Czzd-wBv-MvA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQeWH9sdw9L20R4b6xzQ6Z0wl0vmYc5hP-4qQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0hFw7vjvSp7DkXDByWapMkbs0jNkELjNPCg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRErWgn2OWVGSL2-dHzQ3ziA-_R_Oa7-MWXow&usqp=CAU",
  ];

  int currentindex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //backgroundColor: Colors.black,

      appBar: AppBar(
       // backgroundColor: Colors.black,
        automaticallyImplyLeading: false,

        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.network("https://cdn.mos.cms.futurecdn.net/2aXUxcsySgGxaycbbae4Qk.png"),
        ),

        actions: [
          Icon(Icons.portrait_rounded),
          SizedBox(width: 10,),
          Icon(Icons.person_2_rounded)
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 900,
              child: CarouselSlider.builder(
                  options: CarouselOptions(
                    aspectRatio: 25/15,
                    viewportFraction: 1,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 0,
                    onPageChanged: (index, reason)
                    {
                      setState(() {
                        currentindex = index;
                      });
                    },
                    scrollDirection: Axis.horizontal,
                  ),
                  itemCount: a.length,
                  itemBuilder: (BuildContext context ,int index, int pageIndex)
                  {
                    return Container(
                      height: MediaQuery.of(context).size.height/7,
                      width: MediaQuery.of(context).size.width/1,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: NetworkImage(a[index]),fit: BoxFit.fill)
                      ),

                 //     child: Image.network(a[index]),
                    );
                  },
              ),
            ),

            Center(
              child: DotsIndicator(
                dotsCount: a.length,
                position: currentindex.toInt(),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(right: 150),
              child: Row(
                children: [
                  Text("PRIME -",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blueAccent),),
                  SizedBox(width: 5,),
                  Text("OTT Awards",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),),

                ],
              )),

            Padding(
              padding: const EdgeInsets.only(right: 290),
              child: Text("WINNERS LIST",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900,color: Colors.green),),
            ),

            SizedBox(height: 20,),

            GestureDetector(

              onTap:()
              {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ott5()),
                );
              },

              child: Container(
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
                              height: MediaQuery.of(context).size.height/7,
                              width: MediaQuery.of(context).size.width/2,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: NetworkImage(b[index]),fit: BoxFit.fill)
                              ),
                              //child: Image.network(b[index],fit: f,),
                            ),
                          ],
                        ),
                      );
                    }
                ),
              ),
            ),

            Row(
            children: [
              Text("PRIME -",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blueAccent),),
              SizedBox(width: 5,),
              Text("Watch in your Language",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),),

            ],
          ),

            Container(
              height: 180,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: c.length,
                  itemBuilder: (BuildContext context ,int index)
                  {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height/7,
                            width: MediaQuery.of(context).size.width/2,
                       decoration: BoxDecoration(
                         image: DecorationImage(image: NetworkImage(c[index]),fit: BoxFit.fill)
                       ),
                       //     child: Image.network(c[index]),
                          ),
                        ],
                      ),
                    );
                  }
              ),
            ),

            Row(
              children: [
                Text("PRIME -",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blueAccent),),
                SizedBox(width: 5,),
                Text("Recommended Movies",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),),

              ],
            ),

            Container(
              height: 180,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: d.length,
                  itemBuilder: (BuildContext context ,int index)
                  {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height/7,
                            width: MediaQuery.of(context).size.width/2,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: NetworkImage(c[index]),fit: BoxFit.fill)
                        ),

                        //    child: Image.network(d[index]),
                          ),
                        ],
                      ),
                    );
                  }
              ),
            ),

            Row(
              children: [
                Text("PRIME -",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blueAccent),),
                SizedBox(width: 5,),
                Text("Amazon Original Series",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),),

              ],
            ),

            Container(
              height: 180,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: e.length,
                  itemBuilder: (BuildContext context ,int index)
                  {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height/7,
                            width: MediaQuery.of(context).size.width/2,
                           decoration: BoxDecoration(
                             image: DecorationImage(image: NetworkImage(e[index]),fit: BoxFit.fill),
                           ),

                         //   child: Image.network(e[index]),
                          ),
                        ],
                      ),
                    );
                  }
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text("mini TV - Dubbed",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blueAccent),),
                  SizedBox(width: 5,),
                  Text("Imported Shows -",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),),

                ],
              ),
            ),

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
                            height: MediaQuery.of(context).size.height/7,
                            width: MediaQuery.of(context).size.width/2,
                           decoration: BoxDecoration(
                             image: DecorationImage(image: NetworkImage(a[index]),fit: BoxFit.fill),
                           ),
                  //          child: Image.network(a[index]),
                          ),
                        ],
                      ),
                    );
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
