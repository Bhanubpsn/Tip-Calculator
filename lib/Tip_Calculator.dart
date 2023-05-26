import 'package:flutter/material.dart';
import '../util/hexcolor.dart';

class TipCalculator extends StatefulWidget {
  const TipCalculator({Key? key}) : super(key: key);

  @override
  State<TipCalculator> createState() => _TipCalculatorState();
}

class _TipCalculatorState extends State<TipCalculator> {

  int tipPercentage = 50;
  int personCounter = 1;
  double billAmount = 0;
  Color purple = HexColor("#6908D6");
  int _selectedTab = 0;

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  ThemeMode _themeMode = ThemeMode.system;
  void changeTheme(ThemeMode themeMode) {
    setState(() {
      _themeMode = themeMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        darkTheme: ThemeData.dark(),
        themeMode: _themeMode,
        debugShowCheckedModeBanner: false,

        home: Scaffold(

        bottomNavigationBar: BottomNavigationBar(
          items:const [
            BottomNavigationBarItem(icon: Icon(Icons.nights_stay_rounded,),label: "Dark Mode"),
          BottomNavigationBarItem(icon: Icon(Icons.sunny,),label: "Light Mode"),

        ],
          currentIndex: _selectedTab,
          selectedItemColor: Colors.deepPurple,
          onTap: (int index)
          {
            switch(index) {
              case 1:
                changeTheme(ThemeMode.light);
                _changeTab(index);
                break;

              case 0:
                changeTheme(ThemeMode.dark);
                _changeTab(index);
                break;

          }
        },
      ),

        body: Container(
        margin:const EdgeInsets.only(top: 80.0),
        alignment: Alignment.center,
        child: ListView(
          scrollDirection: Axis.vertical,
          padding:const EdgeInsets.all(20.5),

          children: [
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: purple.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text(
                          "Total Per Person",
                          style: TextStyle(
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.normal,
                            fontSize: 15.0,
                          ),
                      ),
                    ),
                    Text(
                        "\$${((billAmount+billAmount*tipPercentage/100)/personCounter).toStringAsFixed(2)}",
                        style:const TextStyle(
                          color: Colors.deepPurple,
                          fontSize: 32.0,
                          fontWeight: FontWeight.bold,
                        ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin:const EdgeInsets.only(top: 20.0),
              padding:const EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(
                  color: Colors.blueGrey.shade100,
                ),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Column(
                children: [
                  TextField(
                    keyboardType:const TextInputType.numberWithOptions(decimal: true),
                    style:const TextStyle(color: Colors.deepPurple),
                    decoration:const InputDecoration(
                        prefixText: "Bill Amount \$",
                        prefixIcon: Icon(Icons.monetization_on, color: Colors.deepPurple,),
                    ),
                    onChanged: (String value){
                      try{
                        billAmount = double.parse(value);
                      }catch(exception){
                        billAmount = 0.0;
                      }
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Split",
                        style: TextStyle(
                          color: Colors.grey.shade700,
                        ),
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: (){
                              setState(() {
                                if(personCounter > 1)
                                {
                                    personCounter--;
                                }else{
                                  //doNothing
                                }
                              });
                            },
                            child: Container(
                              width: 40.0,
                              height: 40.0,
                              margin:const EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7.0),
                                color: purple.withOpacity(0.1),
                              ),
                              child:const Center(child: Text("-",style: TextStyle(color: Colors.deepPurple,fontWeight: FontWeight.bold,fontSize: 20.0),)),
                            ),
                          ),
                          Text("$personCounter",style:const TextStyle(color: Colors.deepPurple,fontSize: 17.0,fontWeight: FontWeight.bold),),
                          InkWell(
                            onTap: (){
                              setState(() {
                                personCounter++;
                              });
                            },
                            child: Container(
                              height: 40.0,
                              width: 40.0,
                              margin:const EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7.0),
                                color: purple.withOpacity(0.1),
                              ),
                              child:const Center(child: Text("+",style: TextStyle(color: Colors.deepPurple,fontWeight: FontWeight.bold,fontSize: 20.0),)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(width: 5.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                          "Tip",
                          style: TextStyle(
                            color: Colors.grey.shade700,
                          ),
                      ),
                      
                      Row(
                        children: [
                          Container(
                            margin:const EdgeInsets.only(right: 12.0),
                            child: Text(
                                "\$${(billAmount*tipPercentage/100).toStringAsFixed(2)}",
                                style:const TextStyle(
                                  color: Colors.deepPurple,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "$tipPercentage%",
                        style:const TextStyle(
                          color: Colors.deepPurple,
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Slider(
                        max: 100,
                        min: 0,
                        activeColor: Colors.deepPurple,
                        inactiveColor: Colors.grey,
                        divisions: 10,
                        value: tipPercentage.toDouble(),
                        onChanged: (double value){
                          setState(() {
                            tipPercentage = value.round();
                          });

                          },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),

      ),
    )
    );
  }
}
