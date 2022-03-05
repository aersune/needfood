import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projects/dashboard.dart';
import 'package:projects/favorites.dart';
import 'package:projects/messege.dart';
import 'package:projects/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int currentTab = 0;
  final List<Widget> screens =[
    Dashboard(),
    Favorites(),
    Card(),
    Messege(),
    Profile(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Dashboard();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
          bucket: bucket,
          child: currentScreen),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        elevation: 2.0,
        onPressed: (){},
        child: Icon(Icons.shopping_cart_outlined, color: Color(0xff6D6D6D),size: 25,),
      ),floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 5,
        child: Container(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 10,),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState(() {
                        currentScreen = Dashboard();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ImageIcon(AssetImage('assets/Vector.png'),
                          size: 30,
                          color: currentTab == 0 ? Colors.blue : Color(0xff6D6D6D),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 20,),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState(() {
                        currentScreen = Favorites();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ImageIcon(AssetImage('assets/like.png'),
                          size: 30,
                          color: currentTab == 1 ? Colors.blue : Color(0xff6D6D6D),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState(() {
                        currentScreen = Messege();
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ImageIcon(AssetImage('assets/chat.png'),
                          size: 30,
                          color: currentTab == 2 ? Colors.blue : Color(0xff6D6D6D),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 20,),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState(() {
                        currentScreen = Profile();
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ImageIcon(AssetImage('assets/user.png'),
                          size: 30,
                          color: currentTab == 3 ? Colors.blue : Color(0xff6D6D6D),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

