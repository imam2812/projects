import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class ott3 extends StatefulWidget {
  const ott3({super.key});

  @override
  State<ott3> createState() => _ott3State();
}

class _ott3State extends State<ott3> {

  List a= [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_cZR91XhueZxhUQnjCxlSkmtDb7_m5vAs_w&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSd3l4xSuRykvocmqhjccxz0P67vow4YhWNAA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlOvZp2jyesEFHkXY6iggBQBEXTFJIPkt5tQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOA_Nt2g-FuHu28ue3c7KxcN4RpO95pW0Dsg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgiXTawpfTa6nfcu1wFmD-BIFnumenTMdWAg&usqp=CAU",
  ];

  List b = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpTfunHSyPPGdZ5pa7GTGv9ENWXYVE1zfsPw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLWY2-6FZ16M49VsVxYjfRlEGkhKVQHXZpJQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQ7pWdPRFbp5gpuro6WXBA4vY5YM_eD3ayJA&usqp=CAU",
    "https://i.ytimg.com/vi/GR-Ui8-V2M0/maxresdefault.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEWH2cfBhdWI9-y4EsRHQ_oS-MTVYGBJZ3AQ&usqp=CAU",
  ];

  List c = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxs-BQEv4fepmJy0qasks83-bkTD9IC4QLmw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8M65IYjB7hrZP2Pt42wl_tW2OVvnlD0FEkg&usqp=CAU",
    "https://i.ytimg.com/vi/xWe03YByWEI/maxresdefault.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8M65IYjB7hrZP2Pt42wl_tW2OVvnlD0FEkg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGXQujvEJ9qQai3pUoAFnmcrK_R4JmTg4UgQ&usqp=CAU",
  ];

  List d = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGsMFFNQGIkBf_A1ZYo5SR-wNQqgqKDZfs4g&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpTfunHSyPPGdZ5pa7GTGv9ENWXYVE1zfsPw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0hFw7vjvSp7DkXDByWapMkbs0jNkELjNPCg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRjK8fBbSbb4HwxeozqsGAWuHPoEh_-jF_yg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxs-BQEv4fepmJy0qasks83-bkTD9IC4QLmw&usqp=CAU",
  ];

  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //  backgroundColor: Colors.black,
      appBar: AppBar(
       // backgroundColor: Colors.black,
        title: Container(
          height: 35,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),child:
        TextFormField(
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(Icons.search),
            hintText: "Search here",
          ),
        ),
        ),
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
                  dotsCount: a.length ,
                position: currentindex.toInt(),
              ),
            ),

            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.only(right: 300),
              child: Text("Lionsgate play-MostPopular>",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color: Colors.blue),),
            ),

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
                            height: MediaQuery.of(context).size.height/8,
                            width: MediaQuery.of(context).size.width/2,
                            decoration: BoxDecoration(
                                image: DecorationImage(image: NetworkImage(b[index]),fit: BoxFit.fill),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 165),
                            child: Text("Subscribe",style: TextStyle(fontSize: 10,color: Colors.yellow),),
                          )
                        ],
                      ),
                    );
                  }
              ),
            ),

            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.only(right: 310),
              child: Text("Discovery+ -MostPopular>",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color: Colors.blue),),
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
                            height: MediaQuery.of(context).size.height/8,
                            width: MediaQuery.of(context).size.width/2,
                            decoration: BoxDecoration(
                              image: DecorationImage(image: NetworkImage(c[index]),fit: BoxFit.fill),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 130),
                            child: Text("First Episode Free",style: TextStyle(fontSize: 10,color: Colors.yellow),),
                          )
                        ],
                      ),
                    );
                  }
              ),
            ),

            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.only(right: 360),
              child: Text("In the Spotght>",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color: Colors.blue),),
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
                            height: MediaQuery.of(context).size.height/8,
                            width: MediaQuery.of(context).size.width/2,
                            decoration: BoxDecoration(
                              image: DecorationImage(image: NetworkImage(d[index]),fit: BoxFit.fill),
                            ),
                            //   child: Image.network(e[index]),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 170),
                            child: Text("Subscribe",style: TextStyle(fontSize: 10,color: Colors.yellow),),
                          )
                        ],
                      ),
                    );
                  }
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(right: 365),
              child: Text("Horror Movies",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color: Colors.blue),),
            ),

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
                            height: MediaQuery.of(context).size.height/8,
                            width: MediaQuery.of(context).size.width/2,
                            decoration: BoxDecoration(
                              image: DecorationImage(image: NetworkImage(b[index]),fit: BoxFit.fill),
                            ),
                            //   child: Image.network(e[index]),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 190),
                            child: Text("Rent",style: TextStyle(fontSize: 10,color: Colors.yellow),),
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
    );
  }
}
