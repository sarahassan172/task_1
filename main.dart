import 'package:flutter/material.dart';
import 'package:task_1/Home.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
var email=TextEditingController();
var password=TextEditingController();
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        toolbarHeight: 150,
shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.vertical(bottom:Radius.circular(30)),
),
        backgroundColor:Color(0xFF4A6CF7),
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
            Text('Welcome Back',style: TextStyle(color: Color(0xFFEEF0FD),fontSize: 12)),
            SizedBox(height: 10,),
            Text('Sign In',style: TextStyle(color:Colors.white,fontSize: 25)),
            SizedBox(height: 3,),
            Text('Enter your Credential to Continue',style: TextStyle(color: Color(0xFFEEF0FD),fontSize:15),),

          ],
        ),
      ),
      body:Padding(padding: EdgeInsets.all(30),
        child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [

   Text('Email Address'),
   SizedBox(height: 10,),
   SizedBox(width: 300,height: 35,
 child:   TextField(


      controller: email,
      decoration: InputDecoration(
        hintText: 'your@gmail.com',

        prefixIcon: Icon(Icons.email_outlined,color: Colors.grey,),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        )
      ),

    ),
   ),
    SizedBox(height: 40,),

    Text('Password'),
    SizedBox(height: 10,),
    SizedBox(width: 300,height: 35,
      child:   TextField(



        controller: email,
        decoration: InputDecoration(
            hintText: 'Enter Password',


            prefixIcon: Icon(Icons.lock,color: Colors.grey,),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            )
        ),

      ),
    ),
    SizedBox(height: 20,),
    ElevatedButton(style:ElevatedButton.styleFrom(

    ),onPressed:(){
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HomeScreen(email: email.text),
        ),
      );
    }, child:Center(
      child: Text('Login'),
    )

    ),SizedBox(height: 10,),
    Center(
   child:  Text('Forget Password?',style: TextStyle(color:Color(0xFF4A6CF7)),)
    ),
    SizedBox(height: 25,),
    Center(
    child: Text('Already have a account? Sign Up',style: TextStyle(color: Colors.grey[800],fontSize: 12),))

  ],

      ),

      ),

      );
  }
}
