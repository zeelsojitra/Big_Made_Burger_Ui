import 'package:flutter/material.dart';

import 'order_detils.dart';

class detils extends StatefulWidget {
  const detils({Key? key}) : super(key: key);

  @override
  State<detils> createState() => _detilsState();
}

class _detilsState extends State<detils> {
  List name = [
    'Potato wedges',
    'Corn on the cob',
    'Corn on the cob',
  ];

  int selected = 0;
  int selected1 = 0;
  bool like = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 380,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                  child: PageView(
                    //scrollDirection: Axis.vertical,
                    onPageChanged: (value) {
                      setState(() {
                        selected = value;
                      });
                    },
                    children: [
                      Image.network(
                        'https://st2.depositphotos.com/1000339/5752/i/600/depositphotos_57527967-stock-photo-burger-and-french-fries.jpg',
                        height: 350,
                        fit: BoxFit.cover,
                      ),
                      Image.network(
                        'https://media.istockphoto.com/photos/fresh-tasty-burger-picture-id495204032?k=20&m=495204032&s=612x612&w=0&h=x44AnT8kHv-apqnG9t1ILwf2sIr4uq14CUB7MBaiuOI=',
                        height: 350,
                        fit: BoxFit.cover,
                      ),
                      Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThJJLHo1Fa28cqLvZVTy7gI95rWvBnGujaBQ&usqp=CAU',
                        height: 350,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_back,
                            size: 30,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              like = !like;
                            });
                          },
                          icon: like == true
                              ? Icon(
                                  Icons.favorite,
                                  size: 30,
                                  color: Colors.red,
                                )
                              : Icon(
                                  Icons.favorite_border,
                                  size: 30,
                                  color: Colors.orange,
                                )),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        3,
                        (index) => Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 3),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selected = index;
                                  });
                                },
                                child: CircleAvatar(
                                  radius: 5,
                                  backgroundColor: selected == index
                                      ? Colors.orange
                                      : Colors.white,
                                ),
                              ),
                            )),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Text(
                'Big Mad Burger',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Text(
                'Potato Bun, cheaddar cheese,beef,cucumber,red\nonioon, iceberg lettuce, avocado, tomato',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Choose addition',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Required',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Icon(
                      Icons.keyboard_arrow_up_outlined,
                      color: Colors.grey,
                      size: 30,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 180,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      ListTile(
                        leading: GestureDetector(
                          onTap: () {
                            setState(() {
                              selected1 = index;
                            });
                          },
                          child: Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                              color: selected1 == index
                                  ? Colors.green
                                  : Colors.white,
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: selected1 == index
                                    ? Colors.white
                                    : Colors.grey,
                              ),
                            ),
                            child: Center(
                              child: Icon(
                                Icons.check,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                          ),
                        ),
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              name[index],
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            index == 0
                                ? Text(
                                    'Recommended',
                                    style: TextStyle(
                                      color: Colors.orange,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  )
                                : SizedBox(),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => oder_detils(),
                    ));
              },
              child: Container(
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Center(
                  child: Container(
                    height: 55,
                    width: 360,
                    decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        'Add (1) to cart -12.90',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
