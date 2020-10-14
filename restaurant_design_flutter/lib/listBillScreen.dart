import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class ListBillScreen extends StatefulWidget {
  // ListBillScreen({Key key}) : super(key: key);
  @override
  _ListBillScreenState createState() => _ListBillScreenState();
}

enum BottomIcons {
  Order,
  Complete,
}

class _ListBillScreenState extends State<ListBillScreen> {
  // final controller = PageController();
  BottomIcons bottomIcons = BottomIcons.Order;
  @override
  Widget build(BuildContext context) {
    // return DefaultTabController(
    //   length: 2,
    //   child:  Scaffold(
    //     resizeToAvoidBottomInset: false,
    //     resizeToAvoidBottomPadding: true,
    //     appBar: AppBar(
    //       centerTitle: true,
    //       backgroundColor: Colors.transparent,
    //       elevation: 0,
    //         toolbarHeight: 170,
    //       flexibleSpace: Image(
    //         image: AssetImage('assests/image/moda_wallpaper.jpg'),
    //         fit: BoxFit.cover,
    //       ),
    //       title: Container(
    //         child: Row(
    //           children: [
    //             CircleAvatar(
    //               radius: 60,
    //               backgroundColor: Colors.transparent,
    //               child: CircleAvatar(
    //                 radius: 55,
    //                 backgroundImage: AssetImage(
    //                   'assests/image/modo-logo.jpg',
    //                 ),
    //               ),
    //             ),
    //             SizedBox(width: 20,),
    //             Text('Moda Coffee House'),
    //           ],
    //         ),
    //       ),
    //       bottom: TabBar(
    //         unselectedLabelColor: Colors.green,
    //         // indicatorSize: TabBarIndicatorSize.label,
    //         indicator: BoxDecoration(
    //             borderRadius: BorderRadius.circular(50),  color: Colors.grey.shade200.withOpacity(0.5)),
    //         tabs: [
    //           Tab(
    //             child: Container(
    //               padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
    //               child: Row(
    //                 crossAxisAlignment: CrossAxisAlignment.center,
    //                 children: [
    //                   Icon(
    //                     Icons.timer,
    //                     color: Colors.black,
    //                   ),
    //                   SizedBox(
    //                     width: 5,
    //                   ),
    //                   Text(
    //                     'The Order',
    //                     style: TextStyle(color: Colors.black, fontSize: 15),
    //                   ),
    //                 ],
    //               ),
    //             ),
    //           ),
    //           Tab(
    //             child: Container(
    //               padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
    //               child: Row(
    //                 crossAxisAlignment: CrossAxisAlignment.center,
    //                 children: [
    //                   Icon(
    //                     Icons.done,
    //                     color: Colors.black,
    //                   ),
    //                   SizedBox(
    //                     width: 5,
    //                   ),
    //                   Text(
    //                     'completed order',
    //                     style: TextStyle(color: Colors.black, fontSize: 15),
    //                   ),
    //                 ],
    //               ),
    //             ),
    //           )
    //         ],
    //       ),
    //     ),
    //     body: SafeArea(
    //       child: TabBarView(
    //         children: [
    //           //Bill mới được order
    //           Container(
    //             padding: EdgeInsets.only(top: 10),
    //             child: Center(
    //               child: ListView(
    //                 children: ListTile.divideTiles(
    //                   context: context,
    //                   tiles: [
    //                     Container(
    //                       width: MediaQuery.of(context).size.width,
    //                       child: SingleChildScrollView(
    //                         child: Container(
    //                           child: Column(
    //                             crossAxisAlignment: CrossAxisAlignment.start,
    //                             children: [
    //                               Container(
    //
    //                                 child: FlatButton(
    //                                   onPressed: (){
    //                                     // Navigator.push(context, MaterialPageRoute(builder: (context) => BillDetail(),),);
    //                                   },
    //                                   child: Container(
    //
    //                                     // padding: EdgeInsets.all(5),
    //                                     width: MediaQuery.of(context).size.width,
    //                                     decoration: BoxDecoration(
    //                                       // color: Colors.black,
    //                                       border: Border.all(width: 1.0),
    //                                       borderRadius: BorderRadius.all(
    //                                         Radius.circular(10.0),
    //                                       ),
    //                                     ),
    //                                     child: Row(
    //                                       children: <Widget>[
    //                                         Expanded(
    //                                           flex: 3,
    //                                           child: Container(
    //                                            child:CircleAvatar(
    //                                              radius: 50,
    //                                              backgroundColor: Colors.transparent,
    //                                              child: CircleAvatar(
    //                                                radius: 45,
    //                                                backgroundImage: AssetImage(
    //                                                  'assests/image/modo-logo.jpg',
    //                                                ),
    //                                              ),
    //                                            ),
    //                                           ),
    //                                         ),
    //                                         SizedBox(width: 15,),
    //                                         Expanded(
    //                                           flex: 6,
    //                                           child: Container(
    //                                             padding: EdgeInsets.all(0),
    //                                             child: Column(
    //                                               crossAxisAlignment: CrossAxisAlignment.start,
    //                                               children: [
    //                                                 Text('Mã đơn hàng:', style: TextStyle(fontSize: 15),),
    //                                                 Text('Khách hàng:',style: TextStyle(fontSize: 15),),
    //                                                 Text('Thời gian đặt:', style: TextStyle(fontSize: 15),),
    //                                                 Text('Giá tiền:', style: TextStyle(fontSize: 15),),
    //                                               ],
    //                                             ),
    //                                           ),
    //                                         ),
    //                                       ],
    //                                     ),
    //                                   ),
    //                                 ),
    //                               ),
    //                               SizedBox(height: 10,),
    //                             ],
    //                           ),
    //                         ),
    //                       ),
    //                     )
    //                   ],
    //                 ).toList(),
    //               ),
    //             ),
    //           ),
    //
    //           //Bill đã hoàn thành
    //           Container(
    //             padding: EdgeInsets.only(top: 10),
    //             child: Center(
    //               child: ListView(
    //                 children: ListTile.divideTiles(
    //                   context: context,
    //                   tiles: [
    //                     Container(
    //                       width: MediaQuery.of(context).size.width,
    //                       child: SingleChildScrollView(
    //                         child: Container(
    //                           child: Column(
    //                             // crossAxisAlignment: CrossAxisAlignment.start,
    //                             children: [
    //                               Container(
    //                                 child: FlatButton(
    //                                   onPressed: (){
    //                                     // Navigator.push(context, MaterialPageRoute(builder: (context) => BillDetail(),),);
    //                                   },
    //                                   child: Container(
    //                                     // padding: EdgeInsets.all(5),
    //                                     width: MediaQuery.of(context).size.width,
    //                                     decoration: BoxDecoration(
    //                                       // color: Colors.black,
    //                                       border: Border.all(width: 1.0),
    //                                       borderRadius: BorderRadius.all(
    //                                         Radius.circular(10.0),
    //                                       ),
    //                                     ),
    //                                     child: Row(
    //                                       children: <Widget>[
    //                                         Expanded(
    //                                           flex: 3,
    //                                           child: Container(
    //                                             child:CircleAvatar(
    //                                               radius: 50,
    //                                               backgroundColor: Colors.transparent,
    //                                               child: CircleAvatar(
    //                                                 radius: 45,
    //                                                 backgroundImage: AssetImage(
    //                                                   'assests/image/modo-logo.jpg',
    //                                                 ),
    //                                               ),
    //                                             ),
    //                                           ),
    //                                         ),
    //                                         SizedBox(width: 15,),
    //                                         Expanded(
    //                                           flex: 6,
    //                                           child: Container(
    //                                             padding: EdgeInsets.all(0),
    //                                             child: Column(
    //                                               crossAxisAlignment: CrossAxisAlignment.start,
    //                                               children: [
    //                                                 Text('Mã đơn hàng:', style: TextStyle(fontSize: 20),),
    //                                                 Text('Khách hàng:',style: TextStyle(fontSize: 20),),
    //                                                 Text('Thời gian đặt:', style: TextStyle(fontSize: 20),),
    //                                                 Text('Giá tiền:', style: TextStyle(fontSize: 20),),
    //                                               ],
    //                                             ),
    //                                           ),
    //                                         ),
    //                                       ],
    //                                     ),
    //                                   ),
    //                                 ),
    //                               ),
    //                               SizedBox(height: 10,),
    //                             ],
    //                           ),
    //                         ),
    //                       ),
    //                     )
    //                   ],
    //                 ).toList(),
    //               ),
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 170,
        flexibleSpace: Image(
          image: AssetImage('assests/image/moda_wallpaper.jpg'),
          fit: BoxFit.cover,
        ),
        title: Container(
          child: Row(
            children: [
              CircleAvatar(
                radius: 60,
                backgroundColor: Colors.transparent,
                child: CircleAvatar(
                  radius: 55,
                  backgroundImage: AssetImage(
                    'assests/image/modo-logo.jpg',
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Text('Moda Coffee House'),
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          bottomIcons == BottomIcons.Order
              ?  Scaffold(
                  body: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10,),
                        Container(
                          child: FlatButton(
                            onPressed: (){
                              // Navigator.push(context, MaterialPageRoute(builder: (context) => BillDetail(),),);
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 100,
                              decoration: BoxDecoration(
                                // color: Colors.black,
                                border: Border.all(width: 1.0),
                                // borderRadius: BorderRadius.all(
                                //   Radius.circular(10.0),
                                // ),
                              ),
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        // color: Colors.green,
                                        // border: Border.all(width: 1.0),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10.0),
                                        ),
                                      ),
                                      padding: EdgeInsets.all(5),
                                      child:   CircleAvatar(
                                        radius: 60,
                                        backgroundColor: Colors.transparent,
                                        child: CircleAvatar(
                                          radius: 55,
                                          backgroundImage: AssetImage(
                                            'assests/image/modo-logo.jpg',
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 15,),
                                  Expanded(
                                    flex: 7,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        // color: Colors.yellow,
                                        // border: Border.all(width: 1.0),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10.0),
                                        ),
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(height: 6,),
                                          Text('Mã đơn hàng:'),
                                          Text('Khách hàng:'),
                                          Text('Thời gian đặt:'),
                                          Text('Giá tiền:'),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                      ],
                    ),
                  ),
                )
              : Container(),
          bottomIcons == BottomIcons.Complete
              ? Scaffold(
            body: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10,),
                  Container(
                    child: FlatButton(
                      onPressed: (){
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => BillDetail(),),);
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 100,
                        decoration: BoxDecoration(
                          // color: Colors.black,
                          border: Border.all(width: 1.0),
                          // borderRadius: BorderRadius.all(
                          //   Radius.circular(10.0),
                          // ),
                        ),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 3,
                              child: Container(
                                decoration: BoxDecoration(
                                  // color: Colors.green,
                                  // border: Border.all(width: 1.0),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                ),
                                padding: EdgeInsets.all(5),
                                child:   CircleAvatar(
                                  radius: 60,
                                  backgroundColor: Colors.transparent,
                                  child: CircleAvatar(
                                    radius: 55,
                                    backgroundImage: AssetImage(
                                      'assests/image/modo-logo.jpg',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 15,),
                            Expanded(
                              flex: 7,
                              child: Container(
                                decoration: BoxDecoration(
                                  // color: Colors.yellow,
                                  // border: Border.all(width: 1.0),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 6,),
                                    Text('Mã đơn hàng:'),
                                    Text('Khách hàng:'),
                                    Text('Thời gian đặt:'),
                                    Text('Giá tiền:'),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),

                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                ],
              ),
            ),
                )
              : Container(),
          Container(
            child: Container(
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  padding:
                      EdgeInsets.only(left: 14, right: 24, bottom: 10, top: 10),
                  decoration: BoxDecoration(
                    color: Colors.green.withOpacity(0.4),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            bottomIcons = BottomIcons.Complete;
                          });
                        },
                        child: bottomIcons == BottomIcons.Complete
                            ? Container(
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.6),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          padding: EdgeInsets.only(
                              left: 16, bottom: 8, top: 8, right: 16),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                EvaIcons.doneAll,
                                color: Colors.indigo,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                'Bill Order',
                                style: TextStyle(
                                    color: Colors.indigoAccent,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                            ],
                          ),
                        )
                            : Icon(EvaIcons.doneAll),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            bottomIcons = BottomIcons.Order;
                          });
                        },
                        child: bottomIcons == BottomIcons.Order
                            ? Container(
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.6),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          padding: EdgeInsets.only(
                              left: 16, bottom: 8, top: 8, right: 16),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                EvaIcons.clockOutline,
                                color: Colors.indigo,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                'Bill complete',
                                style: TextStyle(
                                    color: Colors.indigoAccent,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                            ],
                          ),
                        )
                            : Icon(EvaIcons.clockOutline),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
