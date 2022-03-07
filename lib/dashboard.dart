import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Theme(
        data: ThemeData(
            fontFamily: 'Poppins'
        ),
        child: Scaffold(
          appBar: AppBar(
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
            actions: [
              Row(
                children: [
                  Container(
                      width: 44,
                      height: 44,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30,),
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.15),
                              spreadRadius: 1,
                              blurRadius: 7,
                              offset: Offset(0,3),
                            )
                          ]
                      ),
                      child:IconButton(
                        onPressed: (){},
                        icon: const Icon(Icons.search, color: Colors.black,size: 30,),
                      )
                  ),
                  const SizedBox(width: 20,)
                ],
              )
            ],

          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width-28,
                    height: 157,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/row_banner.png')
                        )
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 10, top: 38),
                          child: Text("Paket Cheese\nBurger komplit", style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins'
                          ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10,top: 8),
                          child: SizedBox(
                            width: 110,
                            height: 21,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(const Color(0xffF6291C)),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),

                                  ),
                                ),
                              ),
                              onPressed: (){},
                              child:  const Text('Order Now',style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Poppins"
                              ),),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 21),
                  child: Text("Categories",style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black
                  ),),
                ),
                Row(
                  children: [
                    const SizedBox(width: 45,),
                    categoryCard(context,"assets/menu1.png","Burger"),
                    const SizedBox(width: 33,),
                    categoryCard(context,"assets/cat2.png","Drink"),
                    const SizedBox(width: 33,),
                    categoryCard(context,"assets/food2.png","Pizza"),

                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 21,top: 20),
                  child: Text("Popular Now",style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Row(
                    children: [
                      const SizedBox(width: 10,),
                      popularCard(context, 'assets/popular1.png', 'Beef Burger', 'Mcdi', "Rp. 20.000"),                    const SizedBox(width: 10,),
                      const SizedBox(width: 19,),
                      popularCard(context, 'assets/popular2.png', 'Pizza Fruit', 'Pijja hut', "RRp. 40.000"),
                      const SizedBox(width: 19,),
                      popularCard(context, 'assets/sandwich2.png', 'Sandwich', 'Roti r', "Rp. 10.000"),
                      const SizedBox(width: 10,),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 21),
                  child: Text("Categories",style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black
                  ),),
                ),
                const SizedBox(height: 13,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      const SizedBox(width: 25,),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                              image: NetworkImage('https://media.istockphoto.com/photos/hamburger-with-cheese-and-french-fries-picture-id1188412964?k=20&m=1188412964&s=612x612&w=0&h=Ow-uMeygg90_1sxoCz-vh60SQDssmjP06uGXcZ2MzPY='),
                            )
                        ),
                        height: 153,
                        width: 230,
                      ),
                      const SizedBox(width: 15,),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                              image: NetworkImage('https://media.istockphoto.com/photos/delicious-homemade-hamburger-and-french-fries-picture-id1254672762?b=1&k=20&m=1254672762&s=170667a&w=0&h=nKrG40G2jj9O8wzJ8wDD2zmUKNp00mcdVWK_f_zixug='),
                            )
                        ),
                        height: 153,
                        width: 230,
                      ),
                      const SizedBox(width: 15,),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                              image: NetworkImage('https://img.freepik.com/free-photo/front-view-meat-burger-with-cheese-salad-tomatoes-dark-floor_140725-89524.jpg'),
                            )
                        ),
                        height: 153,
                        width: 230,
                      ),
                      const SizedBox(width: 15,),
                    ],
                  ),
                ),
                const SizedBox(height: 15,),
              ],
            ),
          ),
        ),
      ),);
  }
}

Widget categoryCard(BuildContext context,img,text){
  return Padding(
    padding: const EdgeInsets.only(top: 15),
    child: Container(
      height: 88,
      width: 86,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.15),
              spreadRadius: 1,
              blurRadius: 7,
              offset: Offset(0,3),
            )
          ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(image: AssetImage(img)),
          Text(text, style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500
          ),)
        ],
      ),
    ),
  );
}

Widget popularCard(BuildContext context, img, text, text2,price){
  return Padding(
    padding: const EdgeInsets.only(top: 15),
    child: Container(
      height: 190,
      width: 152,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.15),
              spreadRadius: 1,
              blurRadius: 7,
              offset: Offset(0,3),
            )
          ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
              height: 98,
              child: Image(image: AssetImage(img),fit: BoxFit.cover,)),
          Text(text, style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500
          ),),
          Text(text2, style: const TextStyle(
              fontSize: 13,
              color: Color(0xff6D6D6D)
          ),),
          const SizedBox(height: 7,),
          Text(price, style: const TextStyle(
            fontSize: 18,
          ),),

        ],
      ),
    ),
  );
}

