import 'package:flutter/material.dart';
import 'package:portfolio/constants/app_data.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/widgets/app_logo.dart';
import 'package:portfolio/widgets/header_desktop.dart';
import 'package:portfolio/widgets/header_mobile.dart';
import 'package:portfolio/widgets/menu_desktop.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    final scafoldlKey = GlobalKey<ScaffoldState>();

    return LayoutBuilder(
      builder: (
          context, constraints) {
          return Scaffold(
              backgroundColor: AppColors.backgroundColor,
              key: scafoldlKey,
              endDrawer: Drawer(
                backgroundColor: AppColors.backgroundColor,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 30),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        child: TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Icon(Icons.close,color: AppColors.appWhite,size: 30,),
                          ),
                        ),
                      ),
                      SizedBox(height: 15,),
                      for (int i = 0; i < menu_item.length; i++)
                        TextButton(
                          onPressed: () {},
                          child: Container(
                            width: double.infinity,
                            child: ListTile(
                              title: Text(
                                menu_item[i],
                                style: TextStyle(
                                    color: AppColors.appWhite,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600),
                              ),
                              leading: Icon(menu_item_logo[i],color: AppColors.appWhite,),
                            ),
                          ),
                        )
                    ],
                  ),
                ),
              ),
              body: SingleChildScrollView(
                child: ListView(
                  children: [
                      HeaderDesktop()
                  ],
                ),
              ));
        },
    );
  }
}
// Scaffold(
// backgroundColor: AppColors.backgroundColor,
// key: scafoldlKey,
// endDrawer: Drawer(
// backgroundColor: AppColors.backgroundColor,
// child: Padding(
// padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 30),
// child: Column(
// children: [
// Container(
// width: double.infinity,
// child: TextButton(
// onPressed: () {
// Navigator.pop(context);
// },
// child: Padding(
// padding: const EdgeInsets.all(15),
// child: Icon(Icons.close,color: AppColors.appWhite,size: 30,),
// ),
// ),
// ),
// SizedBox(height: 15,),
// for (int i = 0; i < menu_item.length; i++)
// TextButton(
// onPressed: () {},
// child: Container(
// width: double.infinity,
// child: ListTile(
// title: Text(
// menu_item[i],
// style: TextStyle(
// color: AppColors.appWhite,
// fontSize: 15,
// fontWeight: FontWeight.w600),
// ),
// leading: Icon(menu_item_logo[i],color: AppColors.appWhite,),
// ),
// ),
// )
// ],
// ),
// ),
// ),
// body: SingleChildScrollView(
// child: Column(
// children: [
// Container(
// margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
// padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
// width: double.infinity,
// decoration: BoxDecoration(
// color: Color(0xff303342),
// borderRadius: BorderRadius.circular(30),
// ),
// child: Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// AppLogo(),
// MenuDesktop(),
// IconButton(
// onPressed: () {
// scafoldlKey.currentState?.openEndDrawer();
// },
// icon: Icon(
// Icons.menu,
// color: AppColors.appWhite,
// ),
// ),
//
//
//
// ],
// ),
// ),
// ],
// ),
// )),