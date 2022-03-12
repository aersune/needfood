import 'package:flutter/material.dart';
import 'package:projects/home_page.dart';

class FormSample extends StatefulWidget {
  const FormSample({Key? key}) : super(key: key);

  @override
  State<FormSample> createState() => _FormSampleState();
}

class _FormSampleState extends State<FormSample> {
  final _controller = TextEditingController();
  final formKey = GlobalKey<FormState>();
   String _userPassword = "12345678";
   String _userLogin = 'Android';

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    var size = mediaQueryData.size;
    return Form(
      key: formKey,
      child: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width-40,
            child: TextFormField(
              validator: (value){
                if(value!.isEmpty) return 'Loginni kiriting';
                if(value.toString() != _userLogin)
                  return "Login noto'g'ri  kiritildi";
              },
              textInputAction: TextInputAction.next,
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
          SizedBox(height: size.height/45,),
          SizedBox(
            width: size.width-40,
            child: TextFormField(
              controller: _controller,
              validator: (value){
                if(value!.isEmpty) return 'parolni kiriting';
                if(value.length < 8)
                  return "parol kamida 8 ta belgidan iborat bo'lisshi kerak";
                if(value.toString() != _userPassword)
                  return "parol noto'g'ri kiritildi";
              },
              obscureText: true,
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
                fillColor:  Color(0xffE4E4E4),
                labelText: 'Enter your password',
              ),

            )),

          SizedBox(height: size.height/50,),
          const Text('Forgot password ?'),
          SizedBox(height: size.height/40,),
          SizedBox(
            width: size.width-40,
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
                  final isValid = formKey.currentState!.validate();
                  if(isValid){
                    formKey.currentState!.save();
                  }
               if(isValid){
                 Navigator.push(context, MaterialPageRoute(builder: (context) {
                   return HomePage();
                 }));
               }
              },
              child: const Text('Login',style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),),
            ),
          ),
        ],
      ),
    );
  }
}
