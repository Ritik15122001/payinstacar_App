import 'package:flutter/material.dart';
import 'package:payinstacard/sort.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var pName =[
      "Top Colleges",
      "Top Schools",
      "Exam",
    ];
    var content=[
      "Search through thousands of accredited colleges and universities online to find the right one for you.  Apply in 3 min, and connect with your future.",
      "Searching for the best school for you just got easier! With our Advanced School Search, you can easily filter out the schools that are fit for you.",
      "Find an end to end information about the exams that are happening in India",
    ];
    var imagelist = [
      'images/college2.png',
      'images/college.jpg',
      'images/college2.png'

    ];
    bool checkBoxBooleanValueVariable=false;
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
                  height: height*0.35,
                  width:  width,
                  decoration:  BoxDecoration(
                    color: Colors.blue[800],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    )
                  ),
                  child:  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top:height*0.08,left:width*0.05),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Text("Find Your Own Way",style: TextStyle(color:Colors.white,fontSize:25,fontWeight: FontWeight.bold),),
                              ],
                            ),
                            SizedBox(
                              width: 60,
                            ),
                            Column(
                              children: [
                                Container(
                                 child: Icon(Icons.notification_add_rounded,color: Colors.white,size:30,),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left:width*0.05),
                        child: Row(
                          children: [
                            Text("Search in 600 Colleges around!",style: TextStyle(fontSize:18,color: Colors.white),)
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Container(
                                  height: height*0.1,
                                  width: width*0.7,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50),
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
            Row(
              children: [
                    Container(
                      height: height*0.54,
                      width: width,
                      child: GridView.builder(
                        itemCount: pName.length,
                        physics: AlwaysScrollableScrollPhysics(), // Make the GridView scrollable
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 1.8,
                          crossAxisCount: 1,
                        ),
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                margin: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                      imagelist[index],
                                    ),
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                  color: Color(0xFFD4ECF7),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black26,
                                      blurRadius: 4,
                                      spreadRadius: 2,
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(12),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Center(
                                            child: Text(
                                              pName[index],
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                          Icon(
                                            Icons.favorite,
                                            color: Colors.redAccent,
                                          ),
                                        ],
                                      ),

                                      SizedBox(height: 5),
                                      Padding(
                                        padding: EdgeInsets.all(5),
                                        child: Column(
                                          children: [
                                            Container(
                                              child: Padding(
                                                padding: const EdgeInsets.only(right:115),
                                                child: Text(
                                                  content[index],
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.black.withOpacity(0.8),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    )
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.sort_rounded),
        backgroundColor: Colors.blue,
        onPressed: (){
          setState(() {
            showModalBottomSheet(
              context: context,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      topLeft: Radius.circular(50)
                  )
              ),
              builder: (BuildContext context) {
                return Container(
                    height: height*0.8, // Adjust the height as needed
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(top: height*0.02,left: width*0.1),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Text("Sort By",style: TextStyle(fontSize:20,fontWeight: FontWeight.bold,color:Colors.black87),),
                                ],
                              ),
                              SizedBox(
                                width: 200,
                              ),
                              InkWell(
                                onTap: (){
                                  Navigator.of(context).pop();
                                },
                                child: Column(
                                  children: [
                                    Icon(Icons.cancel_rounded,size: 35,)
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Divider(thickness: 3,),
                        StatefulBuilder(
                          builder: (BuildContext context, void Function(void Function()) setState) {
                            return CheckboxListTile(
                              title: const Text(
                                'Bachelor of Technology',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              value: checkBoxBooleanValueVariable,
                              onChanged: (value) {
                                setState(() {
                                  checkBoxBooleanValueVariable = value!;
                                });
                              },
                            );
                          },
                        ),

                        StatefulBuilder(
                          builder: (BuildContext context, void Function(void Function()) setState) {
                            return CheckboxListTile(
                              title: const Text(
                                'Bachelor of Architecture',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              value: checkBoxBooleanValueVariable,
                              onChanged: (value) {
                                setState(() {
                                  checkBoxBooleanValueVariable = value!;
                                });
                              },
                            );
                          },
                        ),
                        StatefulBuilder(
                          builder: (BuildContext context, void Function(void Function()) setState) {
                            return CheckboxListTile(
                              title: const Text(
                                'Pharmacy',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              value: checkBoxBooleanValueVariable,
                              onChanged: (value) {
                                setState(() {
                                  checkBoxBooleanValueVariable = value!;
                                });
                              },
                            );
                          },
                        ),
                        StatefulBuilder(
                          builder: (BuildContext context, void Function(void Function()) setState) {
                            return CheckboxListTile(
                              title: const Text(
                                'Law',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              value: checkBoxBooleanValueVariable,
                              onChanged: (value) {
                                setState(() {
                                  checkBoxBooleanValueVariable = value!;
                                });
                              },
                            );
                          },
                        ),
                        StatefulBuilder(
                          builder: (BuildContext context, void Function(void Function()) setState) {
                            return CheckboxListTile(
                              title: const Text(
                                'Management',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              value: checkBoxBooleanValueVariable,
                              onChanged: (value) {
                                setState(() {
                                  checkBoxBooleanValueVariable = value!;
                                });
                              },
                            );
                          },
                        ),
                        InkWell(
                          onTap: (){
                           Navigator.of(context).pushReplacement(_fadeInPageRoute());
                          },
                          child: Padding(
                            padding:  EdgeInsets.only(left: width*0.25),
                            child: Container(
                              height: 50,
                              width:width * 0.5,
                              decoration: const BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(50),
                                  topRight: Radius.circular(50),
                                  bottomRight: Radius.circular(50),
                                  bottomLeft: Radius.circular(50),
                                ),
                              ),

                              child: const Center(
                                child: Text(
                                  "Search",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),

                              ),
                            ),
                          ),
                        ),
                      ],)
                );
              },
            );
          });

        },
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
    pageBuilder: (context, animation, secondaryAnimation) =>Sort_screen(),
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
