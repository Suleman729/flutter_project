import 'dart:io';

import 'package:fixhome2/screens/HomePage.dart';
import 'package:fixhome2/screens/profile.dart';
import 'package:fixhome2/sharedwidget/bottomnav.dart';
import 'package:fixhome2/sharedwidget/drawer.dart';
import 'package:fixhome2/sharedwidget/floatig%20.dart';
import 'package:flutter/material.dart';

class OrderHistory extends StatelessWidget {
  const OrderHistory({Key key}) : super(key: key);

  get w800 => null;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
//     return DefaultTabController(
//         length: 3,
//         child: Scaffold(
//           appBar: AppBar(
//             backgroundColor: Color(0xFFC2185B),
//             bottom: const TabBar(
//               tabs: [
//                 Tab(icon: Icon(Icons.directions_car)),
//                 Tab(icon: Icon(Icons.directions_transit)),
//                 Tab(icon: Icon(Icons.directions_bike)),
//               ],
//             ),
//             title: const Text('Tabs Demo'),
//           ),
//           body: const TabBarView(
//             children: [
//               Icon(Icons.directions_car),
//               Icon(Icons.directions_transit),
//               Icon(Icons.directions_bike),
//             ],
//           ),
//         ),

//     );
//   }
// }
    return Scaffold(backgroundColor: Color(0xFFE0E0E0),

      appBar:AppBar(
     
      actions: [
        
      IconButton(
        
        icon: Image.asset('assets/user.gif',height: 80,width: 80,),
        onPressed: () {Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Profile ();
                            },
                          ),
                        );

        },
      ),
    ],
      backgroundColor: Color(0xFFC2185B),
        iconTheme: IconThemeData(color: Colors.white,),
    ) ,
      drawer: MyDrawer(),
      body: OrderHistorycont(),
 
      floatingActionButton:Floart(),
        bottomNavigationBar: Mynav(),
    );
  }
}

class OrderHistorycont extends StatelessWidget {
  const OrderHistorycont({Key key}) : super(key: key);

  get w800 => null;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
          Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              height: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
                border:Border.all(
                    color: Colors.grey,
                    width: 1,
                  ),
              ),
              child: ListTile(
                
                  title: Text("Plumber" ,style: TextStyle(color:Color(0xFFC2185B)),),
                  subtitle: Text("syed Asghar Ali\n  20-oct-2021\n" ,style: TextStyle(color:Colors.black) ),
                 
                  trailing: Icon(
                    Icons.star,
                    color: Colors.amber.shade800,
                  ))),
        ),
        
       Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              height: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
                border:Border.all(
                    color: Colors.grey,
                    width: 1,
                  ),
              ),
              child: ListTile(
                
               title: Text("Plumber" ,style: TextStyle(color:Color(0xFFC2185B)),),
                  subtitle: Text("syed Asghar Ali\n  20-oct-2021\n" ,style: TextStyle(color:Colors.black) ),
                 
                  trailing: Icon(
                    Icons.star,
                    color: Colors.amber.shade800,
                  ))),
        ),
        


      ],
    );
  }
}
