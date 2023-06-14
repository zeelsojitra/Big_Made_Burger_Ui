import 'package:flutter/material.dart';

class page extends StatefulWidget {
  const page({Key? key}) : super(key: key);

  @override
  State<page> createState() => _pageState();
}

class _pageState extends State<page> {
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 350,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                  child: PageView(
                    onPageChanged: (value) {
                      setState(() {
                        selected = value;
                      });
                    },
                    children: [
                      Image.asset(
                        'assets/images/burger_logo.jpg',
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'assets/images/Chicken_Burger.png',
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'assets/images/grill_have_hose.jpg',
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
                Positioned(
                    left: 0,
                    right: 0,
                    bottom: 10,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                          3,
                          (index) => Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 3),
                                child: GestureDetector(
                                  onTap: () {
                                    selected = index;
                                  },
                                  child: CircleAvatar(
                                    radius: 5,
                                    backgroundColor: selected == index
                                        ? Colors.orange
                                        : Colors.white,
                                  ),
                                ),
                              )),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
