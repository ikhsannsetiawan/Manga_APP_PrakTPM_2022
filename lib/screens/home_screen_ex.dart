// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:manga_app_2022/providers/data_source.dart';
// import 'package:manga_app_2022/screens/selected_manga_screen.dart';
//
// import '../models/data_hotel.dart';
//
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({Key? key}) : super(key: key);
//
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//
//   final searchController = TextEditingController();
//   int _selectedIndex = 0;
//
//
//   Widget _buttonBuilder(String name, int myIndex, String category){
//     return GestureDetector(
//       onTap: (){
//         setState(() {
//           _selectedIndex = myIndex;
//         });
//       },
//       child: FittedBox(
//         child: Container(
//           margin: EdgeInsets.symmetric(horizontal: 5),
//           padding: EdgeInsets.symmetric(horizontal: 25, vertical: 2.5),
//           decoration: BoxDecoration(
//             color: _selectedIndex == myIndex ? Colors.white : Colors.amber,
//             borderRadius: BorderRadius.circular(8),
//             border: Border.all(
//               color: Colors.amber,
//               width: .8,
//             ),
//           ),
//           child: Text(
//             name,
//             style: TextStyle(
//               fontSize: 17,
//               fontWeight: FontWeight.w600,
//               color: _selectedIndex == myIndex ? Colors.amber : Colors.grey,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//
//   @override
//   void initState(){
//     super.initState();
//     searchController.addListener(_searchControllerHandler);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Container(
//           child: ListView(
//             children: [
//               Padding(
//                 padding: EdgeInsets.only(left: 25, top: 25),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                         'Hi, Budi',
//                       style: GoogleFonts.openSans(
//                         fontSize: 14,
//                         fontWeight: FontWeight.w600,
//                         color: Colors.grey
//                       ),
//                     ),
//                     Text(
//                       'Discover Latest Manga',
//                       style: GoogleFonts.openSans(
//                           fontSize: 22,
//                           fontWeight: FontWeight.w600,
//                           color: Colors.black
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//
//               Container(
//                 height: 39,
//                 margin: EdgeInsets.only(left: 25, right: 25, top: 18),
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   color: Colors.blueGrey
//                 ),
//                 child: Stack(
//                   children: [
//                     TextField(
//                       maxLengthEnforced: true,
//                       style: GoogleFonts.openSans(
//                         fontSize: 12,
//                         color: Colors.black,
//                         fontWeight: FontWeight.w600
//                       ),
//                       decoration: InputDecoration(
//                         contentPadding: EdgeInsets.only(left: 19, right: 50,bottom: 8),
//                         border: InputBorder.none,
//                         hintText: 'Search manga...',
//                         hintStyle: GoogleFonts.openSans(
//                             fontSize: 12,
//                             color: Colors.white30,
//                             fontWeight: FontWeight.w600
//                         ),
//                       ),
//                     ),
//                     Positioned(
//                         right: 0,
//                         child: Container(
//                           width: 39,
//                           height: 39,
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(10),
//                               color: Colors.amber
//                           ),
//                         )
//                     ),
//                     Positioned(
//                       top: 8,
//                       right: 9,
//                         child: Icon(
//                           Icons.search
//                         )
//                     )
//                   ],
//                 ),
//               ),
//
//               Container(
//                 height: 25,
//                 margin: EdgeInsets.only(top: 30),
//                 padding: EdgeInsets.only(left: 25),
//                 child: DefaultTabController(
//                   length: 3,
//                   child: TabBar(
//                     labelPadding: EdgeInsets.all(0),
//                     indicatorPadding: EdgeInsets.all(0),
//                     isScrollable: true,
//                     labelColor: Colors.black,
//                     unselectedLabelColor: Colors.grey,
//                     labelStyle: GoogleFonts.openSans(
//                       fontSize: 14,
//                       fontWeight: FontWeight.w700
//                     ),
//                     unselectedLabelStyle: GoogleFonts.openSans(
//                         fontSize: 14,
//                         fontWeight: FontWeight.w600
//                     ),
//
//                     tabs: [
//                     Tab(
//                       child: Container(
//                         margin: EdgeInsets.only(right: 25),
//                         child: Text('New'),
//                       ),
//                     ),
//                     Tab(
//                       child: Container(
//                         margin: EdgeInsets.only(right: 25),
//                         child: Text('Trending'),
//                       ),
//                     ),
//                     Tab(
//                       child: Container(
//                         margin: EdgeInsets.only(right: 25),
//                         child: Text('Favorite'),
//                       ),
//                     ),
//                   ],),
//                 ),
//               ),
//
//               Container(
//                 margin: EdgeInsets.only(top: 21),
//                 height: 210,
//                 child: ListView.builder(
//                   padding: EdgeInsets.only(left: 25, right: 6),
//                   physics: BouncingScrollPhysics(),
//                   scrollDirection: Axis.horizontal,
//                   itemCount: hotelList.length,
//                   itemBuilder: (context, index) {
//                     //final DataHotel hotel = hotelList[index];
//                     return Container(
//                       margin: EdgeInsets.only(right: 19),
//                       height: 210,
//                       width: 153,
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           color: Colors.blueGrey,
//                         image: DecorationImage(
//                           image: NetworkImage(hotelList[index].imageUrl[0]),
//                         ),
//                       )
//                     );
//                   },
//                 ),
//               ),
//
//               Padding(
//                 padding: EdgeInsets.only(left: 25, top: 25),
//                 child: Text(
//                   'Popular',
//                   style: GoogleFonts.openSans(
//                       fontSize: 20,
//                       fontWeight: FontWeight.w600,
//                       color: Colors.black
//                   ),
//                 ),
//               ),
//
//               ListView.builder(
//                 padding: EdgeInsets.only(top: 25, left: 25, right: 25),
//                   physics: BouncingScrollPhysics(),
//                   shrinkWrap: true,
//                   itemCount:hotelList.length,
//                   itemBuilder: (context, index) {
//                 return GestureDetector(
//                   onTap: (){
//                     print('ListView Tapped');
//                     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SelectedMangaScreen(dataHotel: hotelList[index])));
//                   },
//                   child: Container(
//                     margin: EdgeInsets.only(bottom: 19),
//                     height: 81,
//                     width: MediaQuery.of(context).size.width,
//                     color: Colors.white24,
//                     child: Row(
//                       children: [
//                         Container(
//                           height: 81,
//                           width: 62,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(5),
//                             image: DecorationImage(
//                                 image: NetworkImage(hotelList[index].imageUrl[2])
//                             ),
//                             color: Colors.blueGrey
//                           ),
//                         ),
//                         SizedBox(width: 21,),
//                         Expanded(
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 hotelList[index].name,
//                                 overflow: TextOverflow.fade,
//                                 maxLines: 1,
//                                 softWrap: false,
//                                 style: GoogleFonts.openSans(
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.w600,
//                                   color: Colors.black
//                                 ),
//                               ),
//                               SizedBox(height: 5),
//                               Text(hotelList[index].location, style: GoogleFonts.openSans(
//                                   fontSize: 10,
//                                   fontWeight: FontWeight.w400,
//                                   color: Colors.grey
//                               ),),
//                               SizedBox(height: 5),
//                               Text(hotelList[index].roomPrice, style: GoogleFonts.openSans(
//                                   fontSize: 14,
//                                   fontWeight: FontWeight.w600,
//                                   color: Colors.black
//                               ),),
//                             ],
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                 );
//               }),
//
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   void _searchControllerHandler(){
//     print(searchController.text);
//   }
// }
