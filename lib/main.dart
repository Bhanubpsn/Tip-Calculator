import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:bpsn/Projects_Course/Biz%20Card.dart';
import 'package:bpsn/Projects_Course/QuizApp.dart';
import 'package:bpsn/Projects_Course/Tip_Calculator.dart';
import 'package:bpsn/Projects_Course/flutter_map/quakes_map_app/quakes_app.dart';
import 'package:bpsn/Projects_Course/weather_forecast/weather_forecast.dart';
import 'package:bpsn/hello.dart';
//import 'package:bpsn/model/Reading_Writing_in_Device/Read_Write.dart';
import 'package:bpsn/parsing_json/json_parsing.dart';
import 'package:bpsn/parsing_json/json_parsing_map.dart';
import 'package:bpsn/splash.dart';
import 'package:bpsn/util/colors.dart';
import 'package:flutter/material.dart';
import 'Projects_Course/MortgageCalc.dart';
import 'Projects_Course/MovieList.dart';
import 'Projects_Course/Quote_App.dart';
import 'Projects_Course/TODO/ui/Homepage.dart';
import 'Projects_Course/board/board_app.dart';
import 'Projects_Course/flutter_map/simple_google_maps/show_map.dart';
import 'Projects_Course/joke_app_orientation/ui/master_detail_screen.dart';
import 'database_intro/model/user.dart';
import 'ui/Home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'database_intro/util/database_helper.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';



// void main() => (runApp(const Home()));
// void main() => (runApp(const MaterialApp(
//   home : BottomNavigationExample(),
// )));
// void main() => (runApp(const MaterialApp(
//   home : BizCard()
// )));
// void main() => (runApp(const MaterialApp(
//   home: QuoteApp()
// )));

//*****************************************************Slider/TextField/Theme dark and bright***************************************

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       darkTheme: ThemeData.dark(),
//       themeMode: ThemeMode.system,
//       home:const TipCalculator(),
//     );
//   }
// }

// void main() => (runApp(const TipCalculator()));

//*************************************************Theme/Image from device/SnackBar duration*****************************************

// final ThemeData _appTheme = _buildAppTheme();
//
// ThemeData _buildAppTheme(){
//   final ThemeData base = ThemeData.dark();
//
//   return base.copyWith(
//     brightness: Brightness.dark,
//     primaryColor: Colors.green,
//     scaffoldBackgroundColor: Colors.amber,
//     appBarTheme:const AppBarTheme(
//       color: Colors.green,
//     ),
//     textTheme:_appTextTheme(base.textTheme),
//   );
// }
//
// TextTheme _appTextTheme(TextTheme base)
// {
//   return base.copyWith(
//     displayLarge: base.headlineLarge?.copyWith(
//       fontWeight: FontWeight.w900,
//     ),
//     titleLarge: base.titleLarge?.copyWith(
//       fontSize: 30.0,
//     ),
//     bodySmall: base.bodySmall?.copyWith(
//       fontWeight: FontWeight.w400,
//       fontSize: 20.0,
//     ),
//     bodyMedium: base.bodyMedium?.copyWith(
//       fontSize: 20.9,
//       color: Colors.white,
//       fontFamily: "Lobster",
//     ),
//
//     //For Button.......
//     labelLarge: base.labelLarge?.copyWith(
//       letterSpacing: 3.0,
//       fontSize: 20,
//       backgroundColor: Colors.red,
//       // fontFamily: "Lobster",
//     ),
//     //To Apply at all of these at once........
//   ).apply(
//     fontFamily: "Lobster",
//     displayColor: Colors.black
//   );
// }

// void main() => (runApp( MaterialApp(
//   theme: _appTheme,
  // theme: ThemeData(
  //   brightness: Brightness.dark,
  //   primaryColor: Colors.grey[900],
  //
  //   textTheme:const TextTheme(
  //     displayLarge : TextStyle(
  //       fontSize: 34,
  //       fontWeight: FontWeight.bold,
  //     ),
  //
  //     bodyLarge: TextStyle(
  //       fontSize: 16.9,
  //       color: Colors.white,
  //     ),
  //   ),
  // ),


//   home :const QuizApp()
// )));

//********************************************************ListView/Images From network/New Screen**********************************


// void main() => (runApp(const MaterialApp(
//   home : MovieListView()
// )));

//**********************************************************Theme*******************************************************************

// final ThemeData _mortgageTheme = _buildMortgageTheme();
//
// _buildMortgageTextTheme(TextTheme base)
// {
//   return base.copyWith(
//     bodyLarge:const TextStyle(
//       color: textOnPrimaryBlack,
//       fontSize: 16,
//     ).apply(fontFamily: "Lobster"),
//
//   );
// }
//
//
//
// ThemeData _buildMortgageTheme() {
//   final ThemeData base = ThemeData.light();
//
//   return base.copyWith(
//     brightness: Brightness.light,
//     scaffoldBackgroundColor: secondaryBackgroundWhite,
//     hintColor: textOnPrimaryBlack,
//     cardColor: secondaryDeepPurple,
//     appBarTheme:const AppBarTheme(
//       color: primaryIndigo200,
//     ), colorScheme: ColorScheme.fromSwatch().copyWith(secondary: primaryIndigoDark),
//     textTheme:_buildMortgageTextTheme(base.textTheme),
//     inputDecorationTheme: InputDecorationTheme(
//       border: OutlineInputBorder(
//         borderSide:const BorderSide(color: primaryIndigoLight),
//         borderRadius: BorderRadius.circular(12),
//       )
//     ),
//     floatingActionButtonTheme: base.floatingActionButtonTheme.copyWith(
//       elevation: 7,
//       splashColor: Colors.black,
//       backgroundColor: secondaryDeepPurple,
//     ),
//   );
// }
// void main() => (runApp( MaterialApp(
//   theme: _mortgageTheme,
//
//   home:const MortgageCalc(),
// )));

//**************************************************************JSON Parsing**********************************************************

// void main() => (runApp(const MaterialApp(
//   home: JsonParsingMap(),
// )));

// void main() => (runApp(const MaterialApp(
//   home: weather_forecast(),
// )));

//***********************************************************Google Maps**************************************************************

// void main() => (runApp(const MaterialApp(
//   home: ShowSimpleMap(),
// )));

// void main() => (runApp(const MaterialApp(
//   home: QuakesApp(),
// )));

//********************************************************FireBase FireStore**********************************************************


// void main() async{
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
//   );
//   runApp(
//       const MaterialApp(
//           home: BoardApp(),
//       )
//   );
// }

//***********************************************************Orientation/Splash Screen************************************************************


// void main() => runApp(const Home());
//
// class Home extends StatelessWidget {
//   const Home({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Jokes',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: AnimatedSplashScreen(
//           duration: 1000,
//           splashTransition: SplashTransition.fadeTransition,
//           backgroundColor: Colors.black12,
//           splash: Center(
//             child: Container(
//               height: 500,
//               width: 500,
//               child: Image.asset(
//                 "images/splash.png",
//                 width: 500.0,
//                 height: 300.0,
//               ),
//             ),
//           ),
//           nextScreen: MasterDetailScreen()
//       ),
//     );
//   }
// }

//******************************************************************Reading Writing Data***********************************************

// void main() async{
//   var data = await readData();
//
//   if(data != null)
//   {
//     String message = await readData();
//   }
//
//   runApp(new MaterialApp(
//     title: 'IO',
//     home: Home(),
//   ));
// }

//*************************************************************Database Using SQFLite************************************************
// List? _users;
// void main() async{
//
//   var db = new DatabaseHelper();
//
//   //Add User
//   await db.saveUser(new User("Bhanu","1651863520"));  //Jitni baar ye chlega utni baar naye user add hote rahenge.
//   //print("User saved $savedUser");    //Output 1
//
//   //Count of users
//   int? count = await db.getCount();
//   print("Count : $count");
//
//   //Get all users
//   _users = await db.getAllUsers();
//   for(int i =0; i < _users!.length; i++)
//   {
//     User user = User.map(_users?[i]);
//     print("${user.username}, User Id : ${user.id} ");
//   }
//
//   //getting user whose id is 1.
//   User? getauser = await db.getUser(1);
//   print(getauser?.username);
//
//   //Delete a User whose id is 2
//   int userDeleted = await db.deleteUser(2);
//   // Here the return type is int which does not represents something it just tells us that the deletion happened.
//   //Returns 1. If deleted successfully.
//
//   //Update a User
//   User gettheuser = User.fromMap({
//     "username" : "UpdatedUser",
//     "password" : "updatedpassword",   //ye isiliye krra kyuki these are private members.
//     "id" : 1
//   });
//   await db.updateUser(gettheuser);
//
//   runApp(MaterialApp(
//     title: "Database",
//     home: Home(),
//   ));
// }
//
//
// class Home extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("Database"),
//           centerTitle: true,
//           backgroundColor: Colors.greenAccent,
//         ),
//         body: ListView.builder(
//             itemCount: _users?.length,
//             itemBuilder: (BuildContext Context,int position){
//               return Card(
//                 color: Colors.white,
//                 elevation: 2,
//                 child: ListTile(
//                   leading: CircleAvatar(
//                     child: Text("${User.fromMap(_users?[position]).username[0]}"),
//                   ),
//                   title: Text("User: ${User.fromMap(_users?[position]).username}"),
//                   subtitle: Text("Id: ${User.fromMap(_users?[position]).id}"),
//                   onTap: (){
//                     debugPrint("${User.fromMap(_users?[position]).password}");
//                   },
//                 ),
//               );
//             }
//         )
//     );
//   }
// }


//***************************************************************TODOApp**********************************************************
//SQFLITE ka USE and How to remove debug tag on a app.

// void main(){
//   runApp(const MaterialApp(
//     home : MyApp(),
//   ));
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'TODO',
//       home: Homepage(),
//     );
//   }
// }


//*********************************************************FireBase Sign In/Authorization***********************************************************
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Auth - Firebase',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: MyHomePage(),
    );
  }
}



late String photoUrl; 
late String name;


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Board"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  googleLogin();
                },
                child: Text("Google-Sign In"),
            ),
            ElevatedButton(
                onPressed:() => logout(),
                child: Text("Log Out")
            ),
            ElevatedButton(
                onPressed: () {},
                child: Text("Create Account")
            )
          ],
        ),
      ),
    );
  }





  googleLogin() async {
    print("googleLogin method Called");
    GoogleSignIn _googleSignIn = GoogleSignIn();
    try {
      var result = await _googleSignIn.signIn();
      if (result == null) {
        return;
      }

      final userData = await result.authentication;
      final credential = GoogleAuthProvider.credential(
          accessToken: userData.accessToken, idToken: userData.idToken);
      var finalResult = await FirebaseAuth.instance.signInWithCredential(credential);
      print("Result $result");
      print(result.displayName);
      print(result.email);
      print(result.photoUrl);
      setState(() {
        photoUrl = result.photoUrl!;
        name = result.displayName!;
      });
      Navigator.push(context, MaterialPageRoute(builder: (context) =>display(photoUrl,name)));

    } catch (error) {
      print(error);
    }
  }

  Future<void> logout() async {
    await GoogleSignIn().disconnect();
    FirebaseAuth.instance.signOut();
  }
  
}


class display extends StatelessWidget {
  String photoUrl;
  String name;
  
  display(this.photoUrl,this.name);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                "Welcome",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.green,
                ),
            ),
            const SizedBox(height: 20,),
            Text(
                name,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: Colors.greenAccent,
                ),
            ),
            const SizedBox(height: 18,),
            Divider(thickness: 2.3,),
            InkWell(
              child: Container(
                height: 150.0,
                width: 150.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(150.0)),
                  image:DecorationImage(image: NetworkImage(photoUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              onTap: () => Navigator.pop(context),
            ),
            Divider(thickness: 2.3,),
          ],
        ),
      ),
    );
  }
}






















