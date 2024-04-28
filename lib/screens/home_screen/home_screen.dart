import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffcbcbcb),
      drawer: Drawer(),
      appBar: AppBar(
      iconTheme: IconThemeData(color: Colors.black),
        title: Text('Home', 
        style: TextStyle(
          color: Colors.black,
          fontSize: 17
        )),
        actions: [
          CircleAvatar(
            radius: 12,
            backgroundColor: Color(0xffd4d181),
            child: Icon(Icons.search,
              size: 17,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CircleAvatar(
              radius: 12,
              backgroundColor: Color(0xffd4d181),
              child: Icon(
                Icons.shop,
                size: 17,
                color: Colors.black,
              ),
            ),
          )
        ],
        backgroundColor: Color(0xffd6b738),
      ),
    body: Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2i4Jq7wTc-JLXl8MALO4FSuiqUS83lUcF7_impXdPmQ&s")
              ),
              color: Colors.red,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 130, bottom: 10),
                          child: Container(
                            height: 50,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Color(0xffd1ad17),
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(50),
                                bottomLeft: Radius.circular(50)
                              )
                            ),
                            child: Center(
                              child: Text('Vegi',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                shadows: [
                                  BoxShadow(
                                    color: Colors.green,
                                    blurRadius: 10,
                                    offset: Offset(3,3)
                                  )
                                ]
                               )
                              ),
                            ),
                          )
                        ),
                        Text('30% Off',
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.green[100],
                          fontWeight: FontWeight.bold)
                        ),
                        Padding(
                           padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            'on all vegetables products',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
                Expanded(
                  child: Container(

                  ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Herbs Seasonings'),
                Text('view all', style: TextStyle(color: Colors.grey),),
              ],
            ),
          ),
          Row(
            children: [
              Container(
                height: 230,
                width: 160,
                decoration: BoxDecoration(
                  color: Color(0xffd9dad9),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Image.network('https://3.bp.blogspot.com/-uVCk6d03XBY/VbnUhKOwcsI/AAAAAAAAONI/PKKAXtDLjE0/s1600/FRESH%2BBASIL.jpg'),
                      
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 5,
                        ),
                        child: Column(
                          crossAxisAlignment:CrossAxisAlignment.start ,
                          children: [
                            Text(
                              'Bayam Fresh', 
                            style: TextStyle(
                              color: Colors.black, 
                              fontWeight: FontWeight.bold
                              )
                              ),
                            Text(
                              '55k/50 Gram',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                            ),
                            Container(
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: 
                              ),
                              child: OutlinedButton(
                                onPressed: () {},
                              ),
                            )
                          ],
                        ),
                      )
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    ),
    );
  }
}