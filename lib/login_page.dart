

import 'package:flutter/material.dart';
import 'package:projects/home_page.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
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
                  SizedBox(
                    width: MediaQuery.of(context).size.width-40,
                    child:  TextField(
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Color(0xff343434)
                      ),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(10.0)
                        ),
                        focusedBorder:  OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                          borderRadius: BorderRadius.circular(10.0)

                        ),
                        filled: true,
                        fillColor: Color(0xffE4E4E4),
                        labelText: 'login',
                      ),
                    ),
                  ),
                  const SizedBox(height: 14,),
                  SizedBox(
                    width: MediaQuery.of(context).size.width-40,
                    child:  TextField(
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Color(0xff343434)
                      ),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(10.0)
                        ),
                        focusedBorder:  OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                          borderRadius: BorderRadius.circular(10.0)

                        ),
                        filled: true,
                        fillColor: Color(0xffE4E4E4),
                        labelText: 'Enter your password',
                      ),
                    ),
                  ),
                  const SizedBox(height: 14,),
                  const Text('Forgot password ?'),
                  const SizedBox(height: 25,),
                  SizedBox(
                    width: MediaQuery.of(context).size.width-40,
                    height: 50,
                    child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(const Color(0xff5FC5FF)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),

                        ),
                       ),
                    ),
                      onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return HomePage();
                      }));
                      },
                      child: const Text('Login',style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),),
                    ),
                  ),
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
