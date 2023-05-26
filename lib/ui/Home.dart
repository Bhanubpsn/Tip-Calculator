import 'dart:io';

import 'package:flutter/material.dart';

class ScaffoldExample extends State {

  int _selectedTab = 0;

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  _tapButton() {
    debugPrint("Button pressed");
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
          title: const Text("Bhanu"),
          centerTitle: true,
          backgroundColor: Colors.black,
          actions: [
            IconButton(onPressed: () => _tapButton(), icon: const Icon(Icons.add_call)),
            IconButton(onPressed: ()=> _tapButton(), icon: const Icon(Icons.account_circle_sharp)),
            
          ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        child:const Icon(
          Icons.telegram_outlined,
          size: 50.0,
          color: Colors.blue,
        ),
        onPressed: ()
        {
          const snackBar = SnackBar(content: Icon(Icons.telegram_rounded,color: Colors.blue,),
            backgroundColor: Colors.white,
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
      ),
        bottomNavigationBar: BottomNavigationBar(items: const[
          BottomNavigationBarItem(icon: Icon(Icons.email), label: ("Email")),
          BottomNavigationBarItem(icon: Icon(Icons.video_call), label: ("Face Time")),
        ],
          currentIndex: _selectedTab,
          selectedItemColor: Colors.green.shade800,
          onTap: (int index)
          {
            switch(index)
            {
              case 0:
                const snackBar = SnackBar(content: Text("Email?"),
                  backgroundColor: Colors.grey,
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                _changeTab(index);
                break;

              case 1:
                const snackBar = SnackBar(content: Text("FaceTime?"),
                  backgroundColor: Colors.grey,
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                _changeTab(index);
                break;
            }
          },
        ),
      backgroundColor: Colors.white,
      body: Row(
          children: [
              Container(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    const SizedBox(width: 40,),
                    const CustomButton(),
                    const SizedBox(width: 25,),
                    const CustomButton_Like(),
                    const SizedBox(width: 25,),
                    InkWell(
                       child : const Icon(
                              Icons.comment,
                              color : Colors.grey,
                              size: 50.0,
                              ),
                      onTap: ()
                      {
                        const snackBar = SnackBar(content: Text("Comment"),
                          backgroundColor: Colors.grey,
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      },

                    ),
                    const SizedBox(width: 25,),
                    InkWell(
                      child : const Icon(
                            Icons.call,
                            color : Colors.green,
                            size: 50.0,
                          ),
                      onTap: ()
                      {
                        const snackBar = SnackBar(content: Icon(Icons.call,color: Colors.green,),
                                         backgroundColor: Colors.white,
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      },

                    ),
                  ],
                ),

              ),
      ],
      )


    );
  }
}



class CustomButton extends StatelessWidget {
  const CustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        const snackBar = SnackBar(content: Icon(Icons.facebook, color: Colors.blue,),
                         backgroundColor: Colors.white,
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
      // child : Container(
      //   padding: const EdgeInsets.all(10.0),
      //   decoration: BoxDecoration(
      //     color: Colors.green,
      //     borderRadius: BorderRadius.circular(25.0),
      //
      //   ),
      //   child : const Text("+",
      //     style: TextStyle(
      //       fontSize: 25.0,
      //       color: Colors.white,
      //     ),
      //   ),
      //
      // )
      child : const Icon(
            Icons.facebook,
            color: Colors.blue,
            size : 50.0,
      ),
    );
  }
}

class CustomButton_Like extends StatelessWidget {
  const CustomButton_Like({Key? key}) : super(key: key);

  _tapLike()
  {
    debugPrint("Liked");
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        const snackBar = SnackBar(content: Text("Liked"),
        backgroundColor: Colors.green);
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        _tapLike();
      },
      child: const Icon(
        Icons.favorite,
        color: Colors.red,
        size: 50.0,
      ),
    );
  }
}

class BottomNavigationExample extends StatefulWidget {
  const BottomNavigationExample({Key? key}) : super(key: key);

  @override
  ScaffoldExample createState() =>
      ScaffoldExample();
}



