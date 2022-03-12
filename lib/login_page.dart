
import 'package:flutter/material.dart';
import 'package:projects/form_sample.dart';
import 'package:projects/home_page.dart';


class LoginPage extends StatefulWidget {
   LoginPage({key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final focusNode = FocusNode();
  final focusNode2 = FocusNode();

  var _controller = TextEditingController();
  bool _isFocused = false;
  bool _isFocused2 = false;

  @override
  void initState(){
    super.initState();

    focusNode.addListener(() {
      print(focusNode.hasFocus);
        setState(() {
          _isFocused2 = false;
          _isFocused = focusNode.hasFocus;
        });
    });
    focusNode2.addListener(() {
      print(focusNode2.hasFocus);
      setState(() {
        _isFocused = false;
        _isFocused2 = focusNode2.hasFocus;
      });
    });

    _controller.addListener(() { });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          const SizedBox(height: 15.5,),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height/4,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/rectenge.png")
              )
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const[
                  Image(image: AssetImage('assets/burger1.png'),),
                  Text('Need', style: TextStyle(color: Colors.white, fontSize: 36, fontWeight: FontWeight.w500),),
                  Text('Food', style: TextStyle(color: Colors.white, fontSize: 36, fontWeight: FontWeight.w400),),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/bg.png'),alignment: Alignment.centerRight,
                )
              ),
              child: Column(
                children: [
                  const SizedBox(height: 63,),
                  Text('Sign In',style: const TextStyle( fontWeight: FontWeight.w600, fontSize: 36),),
                  SizedBox(height: 24,),

                  FormSample(),
                  // SizedBox(
                  //   width: MediaQuery.of(context).size.width-40,
                  //   child:  TextField(
                  //     textInputAction: TextInputAction.next,
                  //     style: const TextStyle(
                  //       fontWeight: FontWeight.w600,
                  //       fontSize: 14,
                  //       color: Color(0xff343434)
                  //     ),
                  //     decoration: InputDecoration(
                  //       enabledBorder: OutlineInputBorder(
                  //         borderSide: const BorderSide(color: Colors.transparent),
                  //           borderRadius: BorderRadius.circular(10.0)
                  //       ),
                  //       focusedBorder:  OutlineInputBorder(
                  //         borderSide: BorderSide(color: Colors.blue),
                  //         borderRadius: BorderRadius.circular(10.0)
                  //
                  //       ),
                  //       filled: true,
                  //       fillColor: _isFocused ? Colors.white : Color(0xffE4E4E4),
                  //       labelText: 'login',
                  //     ),
                  //   ),
                  // ),
                  // const SizedBox(height: 14,),
                  // SizedBox(
                  //   width: MediaQuery.of(context).size.width-40,
                  //   child:  TextField(
                  //     obscureText: true,
                  //     style: const TextStyle(
                  //       fontWeight: FontWeight.w600,
                  //       fontSize: 14,
                  //       color: Color(0xff343434)
                  //     ),
                  //     decoration: InputDecoration(
                  //       enabledBorder: OutlineInputBorder(
                  //         borderSide: const BorderSide(color: Colors.transparent),
                  //           borderRadius: BorderRadius.circular(10.0)
                  //       ),
                  //       focusedBorder:  OutlineInputBorder(
                  //         borderSide: BorderSide(color: Colors.blue),
                  //         borderRadius: BorderRadius.circular(10.0)
                  //
                  //       ),
                  //       filled: true,
                  //       fillColor:  Color(0xffE4E4E4),
                  //       labelText: 'Enter your password',
                  //     ),
                  //   ),
                  // ),

                  Expanded(child: Container()),
                ],
              ),
            ),
          ),
          Text('No account yet ?'),
          SizedBox(height: 7,),
          InkWell(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                Text('Sign up now', style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.blue.shade600),),
                SizedBox(width: 8,),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue.shade600),
                    borderRadius: BorderRadius.circular(20,),
                  ),
                  child: Icon(Icons.navigate_next, size: 10, color: Colors.blue.shade600,),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 22,
          )
        ],
      ),
    );
  }
}
