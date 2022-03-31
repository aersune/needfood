import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:projects/login_page.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) =>Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 70,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title:  Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: const[
            SizedBox(
                height: 40,
                child: Image(image: AssetImage('assets/burger1.png',),fit: BoxFit.cover,)),
            Text("Need", style: TextStyle(color: Color(0xff343434), fontSize: 24, fontWeight: FontWeight.bold),),
            Text("Food", style: TextStyle(color: Color(0xff343434), fontSize: 24, fontWeight: FontWeight.w500),)
          ],
        ),

      ),
      body: IntroductionScreen(
        nextStyle: TextButton.styleFrom(alignment: Alignment.bottomRight,
            padding: EdgeInsets.only(right: 30, bottom: 20),
          splashFactory: NoSplash.splashFactory,

        ),
        doneStyle: TextButton.styleFrom(alignment: Alignment.bottomRight,
          padding: EdgeInsets.only(right: 30, bottom: 20),
        ),
        controlsMargin: EdgeInsets.only(left: 12),
        dotsFlex: 0,
        nextFlex: 1,
        curve: Curves.easeInOut,
        skipOrBackFlex: 0,
        globalBackgroundColor: Colors.white,
        pages: [
          PageViewModel(
            image: buildImage('assets/intro/intro1.png'),
            decoration: getPageDecoration(),
            titleWidget: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                SizedBox(width: 15,),
                Text('Pilih menu \nfavoritemu', style: TextStyle(fontSize: 36, fontWeight: FontWeight.w700, fontFamily: 'Montserrat',),)
              ],
            ),
            bodyWidget: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                SizedBox(width: 15,),
                Text('Ada banyak jenis makanan \nyang tersedia disini', style: TextStyle(fontSize: 18, color: Color(0xff6D6D6D)),)
              ],
            )
          ),
          PageViewModel(
            image: buildImage('assets/intro/intro2.png'),
            decoration: getPageDecoration(),
            titleWidget: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                SizedBox(width: 15,),
                Text('Temukan \nharga terbaik', style: TextStyle(fontSize: 36, fontWeight: FontWeight.w700, fontFamily: 'Roboto',),)
              ],
            ),
            bodyWidget: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                SizedBox(width: 15,),
                Text('Ada banyak jenis makanan \nyang tersedia disini', style: TextStyle(fontSize: 18, color: Color(0xff6D6D6D)),)
              ],
            ),
          ),
          PageViewModel(
            image: buildImage('assets/intro/intro3.png'),
            decoration: getPageDecoration(),
            titleWidget: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                SizedBox(width: 15,),
                Text('Makananmu \nsiap diantarkan ', style: TextStyle(fontSize: 36, fontWeight: FontWeight.w700, fontFamily: 'Roboto',),)
              ],
            ),
            bodyWidget: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                SizedBox(width: 15,),
                Text('Ada banyak jenis makanan \nyang tersedia disini', style: TextStyle(fontSize: 18, color: Color(0xff6D6D6D)),)
              ],
            ),
          ),
        ],
        done: Container(
          width: 50,
          height: 50,
            decoration: BoxDecoration(
              color: const Color(0xff5FC5FF),
              borderRadius: BorderRadius.circular(30),
            ),
            child: const Icon(Icons.navigate_next, size: 30, color: Colors.white,)),
        next: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                color: const Color(0xff5FC5FF),
                borderRadius: BorderRadius.circular(30)
            ),
            child: const Icon(Icons.navigate_next, size: 30, color: Colors.white,)),
        onDone: () => goToHome(context),
        dotsDecorator: getDotDecoration(),
        isProgressTap: false,
        baseBtnStyle: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
        ),
        // showSkipButton: true,
        // skip: Text('skip'),

      )
  );
 void goToHome(context) => Navigator.of(context).pushReplacement(
   MaterialPageRoute(builder: (_) =>  LoginPage()),
 );
  buildImage(String path) =>
    Center(child: Image.asset(path,width: 350,),);

  DotsDecorator getDotDecoration() => DotsDecorator(
    // spacing: EdgeInsets.only(right: 10),
    spacing: const EdgeInsets.symmetric(horizontal: 3.0),
    color: const Color(0xffFFD7D4),
    size: const Size(16,16),
    activeColor: const Color(0xffFF8982),
    activeSize: const Size(41,16),
    activeShape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24)
  ),
  );

  PageDecoration getPageDecoration() => const PageDecoration(
    bodyPadding: EdgeInsets.only(bottom: 50),
    bodyAlignment: Alignment.bottomLeft,
  );

}
