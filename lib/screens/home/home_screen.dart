import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Widget singleProducts() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: 230,
      width: 160,
      decoration: BoxDecoration(
        color: Color(0xffd9dad5),
      ),
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Image.network(
                'https://pngimg.com/uploads/spinach/spinach_PNG10.png'),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 4, right: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Fresh Basil',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                  Text('50\$ 50 Gram ', style: TextStyle(color: Colors.grey)),
                  Row(
                    children: [
                      Expanded(
                          child: Container(
                        padding: EdgeInsets.only(left: 5),
                        height: 30,
                        width: 50,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text('50 gram',
                                  style: TextStyle(fontSize: 12)),
                            ),
                            Center(
                              child: Icon(
                                Icons.arrow_drop_down,
                                size: 20,
                                color: Colors.yellow,
                              ),
                            )
                          ],
                        ),
                      )),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                          child: Container(
                        height: 30,
                        width: 50,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.remove,
                              size: 15,
                              color: Color(0xffd0b84c),
                            ),
                            Text('1',
                                style: TextStyle(color: Color(0xffd0b84c))),
                            Icon(
                              Icons.add,
                              size: 15,
                              color: Color(0xffd0b84c),
                            )
                          ],
                        ),
                      )),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffcbcbcb),
        drawer: Drawer(),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          title:
              Text("Home", style: TextStyle(color: Colors.black, fontSize: 17)),
          actions: [
            CircleAvatar(
              radius: 12,
              backgroundColor: Color(0xffd4d181),
              child: Icon(Icons.search, size: 17, color: Colors.black),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: CircleAvatar(
                radius: 12,
                backgroundColor: Color(0xffd4d181),
                child: Icon(Icons.shop, size: 17, color: Colors.black),
              ),
            )
          ],
          backgroundColor: Color(0xffd6b738),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: ListView(
            children: [
              Container(
                height: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://img.freepik.com/free-photo/healthy-vegetables-wooden-table_1150-38014.jpg?w=2000")),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                          child: Column(
                        children: [
                          Padding(
                              padding: const EdgeInsets.only(right: 120),
                              child: Container(
                                height: 50,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: Color(0xffd1ad17),
                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(50),
                                        bottomLeft: Radius.circular(50))),
                                child: Center(
                                  child: Text('Vegi',
                                      style: TextStyle(
                                          fontSize: 25,
                                          color: Colors.white,
                                          shadows: [
                                            BoxShadow(
                                                color: Colors.green,
                                                blurRadius: 10,
                                                offset: Offset(3, 3))
                                          ])),
                                ),
                              )),
                          Text('30% Off',
                              style: TextStyle(
                                fontSize: 40,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              )),
                          Text('on all vegetable products',
                              style: TextStyle(
                                color: Colors.white,
                              ))
                        ],
                      )),
                    ),
                    Expanded(
                      child: Container(),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Herbs Seasonings'),
                    Text('View All', style: TextStyle(color: Colors.grey)),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    singleProducts(),
                    singleProducts(),
                    singleProducts(),
                    singleProducts(),
                    singleProducts(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Fresh Fruits'),
                    Text('View All', style: TextStyle(color: Colors.grey)),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    singleProducts(),
                    singleProducts(),
                    singleProducts(),
                    singleProducts(),
                    singleProducts(),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
