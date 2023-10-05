import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'College_Screens.dart';
class Sort_screen extends StatefulWidget {
  const Sort_screen({super.key});

  @override
  State<Sort_screen> createState() => _Sort_screenState();
}

class _Sort_screenState extends State<Sort_screen> {
  @override
  Widget build(BuildContext context) {
    var pName =[
      "GHJK Engineering college",
      "NIET College",
      "VIT University",
      "Galgotiya University",
      "Nalanda College"
    ];
    var imagelist = [
      'images/clg1.jpg',
      'images/clg2.jpg',
      'images/clg3.jpg',
      'images/clg4.jpg',
      'images/clg5.jpg',

    ];
    bool? isChecked = false;
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    int currentTab=0;
    int _value =0;
    TextEditingController searchctrlr = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: height*0.2,
                  width:  width,
                  decoration:  BoxDecoration(
                      color: Colors.blue[800],
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                      )
                  ),
                  child:  Column(
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
                                  height: height*0.1,
                                  width: width*0.7,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: TextFormField(
                                    controller: searchctrlr,
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical:25),
                                      hintText: "Search For Colleges,Schools.....",
                                      border: InputBorder.none,
                                      prefixIcon: searchctrlr.text.isEmpty ? const Icon(Icons.search) :
                                      GestureDetector(
                                          onTap: (){
                                            searchctrlr.text = "" ;
                                            setState(() {
                                            });
                                          },
                                          child: Icon(Icons.clear)),
                                    ),
                                    onChanged: (value){
                                      setState(() {

                                      });
                                    },
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                height: height*0.08,
                                width: width*0.15,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15)
                                ),
                                child: Icon(Icons.keyboard_voice,size:30,),
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
            SingleChildScrollView(
              child: Row(
                children: [
                  Container(
                    height: height,
                    width: width,
                    child: GridView.builder(
                      itemCount: 6,
                      physics: AlwaysScrollableScrollPhysics(), // Make the GridView scrollable
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 1.3,
                        crossAxisCount: 1,
                      ),
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.of(context).pushReplacement(_fadeInPageRoute());
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              margin: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xFFD4ECF7),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 4,
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    height: height*0.15,
                                    width:width,
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage(
                                         imagelist[index],             //Collge Image
                                        )
                                      )
                                    ),
                                     child: Padding(
                                       padding: const EdgeInsets.all(8.0),
                                       child: Row(
                                         crossAxisAlignment: CrossAxisAlignment.start,
                                         children: [
                                           InkWell(
                                             onTap:(){},
                                             child: Container(
                                               height:height*0.05,
                                               width: width*0.1,
                                               decoration: BoxDecoration(
                                                 color: Colors.white,
                                                 borderRadius: BorderRadius.circular(10),

                                               ),
                                               child: Icon(
                                                 Icons.share_outlined,
                                                 color: Colors.black,
                                               ),
                                             ),
                                           ),
                                           SizedBox(width: width*0.68,),
                                           InkWell(
                                             onTap: (){},
                                             child: Container(
                                               height:height*0.045,
                                               width: width*0.1,
                                               decoration: BoxDecoration(
                                                 color: Colors.white,
                                                 borderRadius: BorderRadius.circular(10),
                                               ),
                                               child: Icon(
                                                 Icons.bookmark_add,
                                                 color: Colors.black,
                                               ),
                                             ),
                                           ),
                                         ],
                                       ),
                                     ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Row(                     //College Name Row
                                      children: [
                                         Column(
                                           children: [
                                             Text(pName[index],style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                                           ],
                                         ),
                                        SizedBox(
                                          width: width*0.05,
                                        ),
                                        Column(
                                          children: [
                                            Container(
                                              height:height*0.045,
                                              width: width*0.19,
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
                                                        child: Text("4.3",style: TextStyle(color: Colors.white,fontSize:15,fontWeight: FontWeight.bold),),
                                                      )
                                                    ],
                                                  ),
                                                  SizedBox(width:5,),
                                                  Column(
                                                    children: [
                                                      Icon(Icons.star,color: Colors.white,size:25,)
                                                    ],
                                                  )
                                                ],
                                              ),
                                            )

                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  Row(                      //College Description Row
                                    children: [
                                      Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left:5),
                                            child: Container(
                                               height:height*0.05,
                                                width: width*0.5,
                                                child: Text(' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu ut imperdiet sed nec ullamcorper.,')
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(width:50,),
                                      Column(
                                        children: [
                                           Container(
                                               height: height*0.05,
                                               width: width*0.25,
                                             decoration: BoxDecoration(
                                               color: Colors.blue[900],
                                               borderRadius: BorderRadius.circular(10)
                                             ),
                                             child: Center(
                                               child: Text(
                                                 "Apply Now",
                                                 style: TextStyle(fontSize:16,color: Colors.white),
                                               ),
                                             ),
                                           )
                                        ],
                                      )
                                    ],
                                  ),
                                  Divider(thickness:1,color: Colors.black,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Row(
                                      children: [
                                        Column(
                                          children: [
                                            Container(
                                              height: height*0.039,
                                              width: width*0.08,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.circular(15)
                                              ),
                                              child: Center(
                                                child: Icon(Icons.thumb_up,color: Colors.blue,),
                                                ),
                                              ),
                                          ],

                                        ),
                                        SizedBox(width:20,),
                                        Center(
                                          child: Column(
                                            children: [
                                              Text("More than 1000+ students have been placed",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                                            ],
                                          ),
                                        ),
                                        SizedBox(width: 5,),
                                        const Column(
                                          children: [
                                           Icon(Icons.remove_red_eye),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Text(" 468+"),
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                              ]
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.sort_rounded),
        backgroundColor: Colors.blue,
        onPressed: (){},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 15,
          child:Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      minWidth: 40,
                      onPressed: (){
                        setState(() {
                          currentTab=0;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.home,
                            color: currentTab==0?Colors.blue:Colors.grey,
                          ),
                          Text(
                            'Home',
                            style: TextStyle(color: currentTab==0?Colors.blue:Colors.grey),
                          )
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: (){
                        setState(() {
                          currentTab=1;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.bookmark_add,
                            color: currentTab==1?Colors.red:Colors.grey,
                          ),
                          Text(
                            'Saved',
                            style: TextStyle(color: currentTab==1?Colors.red:Colors.grey),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width:width*0.1,),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: (){
                        setState(() {
                          currentTab=2;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.list_alt,
                            color: currentTab==2?Colors.red:Colors.grey,
                          ),
                          Text(
                            'List',
                            style: TextStyle(color: currentTab==2?Colors.red:Colors.grey),
                          )
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: (){
                        setState(() {
                          currentTab=3;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.person,
                            color: currentTab==3?Colors.red:Colors.grey,
                          ),
                          Text(
                            'Profile',
                            style: TextStyle(color: currentTab==3?Colors.red:Colors.grey),
                          )
                        ],
                      ),
                    ),

                  ],
                )
              ],
            ),
          )
      ),
    );
  }
}
PageRouteBuilder _fadeInPageRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>College_Screen(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = 0.0;
      const end = 1.0;
      var tween = Tween(begin: begin, end: end);
      var opacityAnimation = animation.drive(tween);

      return FadeTransition(
        opacity: opacityAnimation,
        child: child,
      );
    },
  );
}