import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class College_Screen extends StatefulWidget {
  const College_Screen({Key? key}) : super(key: key);

  @override
  State<College_Screen> createState() => _College_ScreenState();
}

class _College_ScreenState extends State<College_Screen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    TextEditingController searchctrlr = TextEditingController();
    var pName =[
      "About College",
      "Hostel",
      "Q&A",
      "Event",
    ];
    var imagelist = [
      'images/description.png',
      'images/hostel.jpg',
      'images/college2.png'

    ];
    List<String> Stuimagelist = [
      'images/1.jpg',
      'images/2.jpg',
      'images/3.jpg',
      'images/4.jpg',
      'images/5.jpg',
    ];

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: height * 0.2,
                  width: width,
                  color: Colors.blue[800],
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Container(
                                  height: height * 0.1,
                                  width: width * 0.7,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: TextFormField(
                                    controller: searchctrlr,
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 25),
                                      hintText: "Search For Colleges, Schools.....",
                                      border: InputBorder.none,
                                      prefixIcon: searchctrlr.text.isEmpty
                                          ? const Icon(Icons.search)
                                          : GestureDetector(
                                          onTap: () {
                                            searchctrlr.text = "";
                                            setState(() {});
                                          },
                                          child: Icon(Icons.clear)),
                                    ),
                                    onChanged: (value) {
                                      setState(() {});
                                    },
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                height: height * 0.08,
                                width: width * 0.15,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15)),
                                child: Icon(
                                  Icons.keyboard_voice,
                                  size: 30,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: height * 0.2,
                  width: width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        'images/clg3.jpg', //College Image
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "GHJK Engineering college",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: height * 0.1,
                        width: width * 0.7,
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Felis consectetur nulla pharetra praesent hendrerit vulputate viverra. Pellentesque aliquam tempus faucibus est.",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: height * 0.055,
                        width: width * 0.19,
                        decoration: BoxDecoration(
                          color: CupertinoColors.systemGreen,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Row(
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Text(
                                    "4.3",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.white,
                                  size: 30,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 1,
              color: Colors.black,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  for (int i = 0; i < 3; i++)
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      padding: EdgeInsets.only(left: 10),
                      width: width ,
                      height: height,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child:Row(
                        children: [
                          Column(
                            children: [
                              Row(
                                 children: [
                                   Text(pName[i],style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),)
                                 ],
                              ),
                              SizedBox(height: 5,),
                              Row(
                                children: [
                                  Container(
                                    height: height*0.2,
                                    width: width*0.9,
                                    child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere mauris. Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices."),
                                  )
                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  Container(
                                    height: height*0.3,
                                    width: width*0.9,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.fill,
                                          image: AssetImage(imagelist[i],
                                          )
                                      )
                                    ),
                                  )
                                ],
                              ),SizedBox(height: 20,),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Student Review',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                    SizedBox(width:width*0.35,),
                                    Text("See All",
                                      style: TextStyle(
                                          color: Colors.black54
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Row(
                                    children: [
                                      for(var j=0;j<5;j++)
                                        Container(
                                          height:50,
                                          width: 50,
                                          margin: EdgeInsets.all(8),
                                          decoration: BoxDecoration(
                                              color: Color(0xFFD4ECF7),
                                              borderRadius: BorderRadius.circular(10),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black26,
                                                  blurRadius: 4,
                                                  spreadRadius: 2,
                                                )
                                              ]
                                          ),
                                          child: Padding(padding:EdgeInsets.all(6),
                                            child: Image.asset(Stuimagelist[j]),
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  Container(
                                    height: height*0.25,
                                    width: width*0.85,
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Text("Arun Sal",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize:15),)
                                          ],
                                        ),
                                        SizedBox(height: 10,),
                                        Row(
                                          children: [
                                            Container(height:80,width:width*0.8,child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nec sed lorem nunc varius rutrum eget dolor, quis. Nulla sit magna suscipit tellus malesuada in facilisis a.",style: TextStyle(color: Colors.black54),))
                                          ],
                                        ),
                                          SizedBox(height: 10,),
                                          Row(
                                            children: [
                                              for(var i=0;i<5;i++)
                                              Column(
                                                children: [
                                                  Icon(Icons.star,color: Colors.yellow,),
                                                ],
                                              ),
                                            ],
                                          ),
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      )

                    )
                ],
              ),

            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 15,
          child:InkWell(
            onTap: (){},
            child: Container(
              height: 50,
              width: width,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
              child:Center(child: Text('Apply Now',style: TextStyle(fontSize:25,fontWeight: FontWeight.bold,color: Colors.white),)),
            ),
          ),
      ),
    );
  }
}
