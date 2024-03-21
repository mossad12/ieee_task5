import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home:Scaffold(
          backgroundColor: const Color(0xff270444),
          appBar: AppBar(
            backgroundColor: const Color(0xff3a105d),
            centerTitle: true,
            title: const Text('Card',style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold
            ),),
          ),
          body: Container(
            margin: const EdgeInsets.symmetric(vertical: 60,horizontal: 15),
            decoration: BoxDecoration(
              color: Colors.black26,
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                const BoxShadow(
                  color: Colors.purpleAccent,
                  offset: Offset(1, 1),
                  blurRadius: 3,
                  blurStyle: BlurStyle.outer,

                )
              ]
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 100,
                    backgroundColor: Colors.purple.shade700,
                    child: ClipOval(
                      child: Image.asset('assets/images/ieee.jpg',
                      width: MediaQuery.of(context).size.width*0.47,
                      height: MediaQuery.of(context).size.width*0.47,),
                    ),
                  ),
                ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('Mossad Badawy',style: TextStyle(
                      color: Colors.purple.shade600,
                      fontSize: 22,
                    ),),
                  ),
                  const Text('Flutter Developer',style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 18,
                  ),),

                  const Divider(
                    color: Colors.deepPurple,
                    thickness: 1,
                    height: 65,
                    indent: 30,
                    endIndent: 30,
                  ),
                   Card(
                     color: Colors.purple.shade800,
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(10),
                       side: BorderSide(
                         color: Colors.deepPurple.shade300,
                         width: 2
                       )
                     ),
                     margin: EdgeInsets.symmetric(vertical: 28,horizontal: 20),
                     child: ListTile(
                       leading: Icon(Icons.phone,color: Colors.deepPurple.shade300,),
                         title: Text('+201016988251',style: TextStyle(
                         color: Colors.deepPurple.shade300
                         ),),
                     ),
                   ),
                   Card(
                     color: Colors.purple.shade800,
                     shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(10),
                         side: BorderSide(
                             color: Colors.deepPurple.shade300,
                             width: 2
                         )
                     ),
                     margin: EdgeInsets.symmetric(vertical: 30,horizontal: 20),
                     child: ListTile(
                       leading: Icon(Icons.mail,color: Colors.deepPurple.shade300),
                       title: Text('mossadbadawy@gmail.com',style: TextStyle(
                       color: Colors.deepPurple.shade300
                       ),),
                     ),
                   ),
                ],
              ),
            ),
          ),

        )
    );
  }
}