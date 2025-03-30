import 'package:flutter/material.dart';
import 'package:project/ahsan.dart';
import 'package:project/chand.dart';
import 'package:project/shami.dart';
import 'package:project/siraj.dart';
import 'package:project/yasir.dart';
import 'package:project/zia.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData.dark(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

//

class _MyAppState extends State<MyApp> {
  // Trigerred everytime there is change in state   and initstate?
  Widget build(BuildContext context) {
    // what is work of MaterialApp
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 280,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/Images/khatapic.png'),
                      fit: BoxFit.fitWidth,
                      colorFilter: ColorFilter.srgbToLinearGamma())),
              // color: Colors.cyan,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: const Text("About Me"),
                leading: const Icon(Icons.man),
                onTap: () {
                  launchUrl(Uri.parse(
                      'https://ziazehri.github.io/Personal-Portfolio/'));
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: const Text("Contact Me"),
                leading: const Icon(Icons.mail),
                onTap: () {
                  launchUrl(Uri.parse('mailto:ziazehri798@gmail.com'));
                },
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text(
          "Khata Book",
        ),
        centerTitle: true,
      ),
      // add ScrollView

      body: Container(
          padding: const EdgeInsets.all(10),
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFGMNyVE0PVU3xJypYrN2fOfQr9JUsWYSLXw&s'),
                fit: BoxFit.cover),
          ),
          child: SingleChildScrollView(
            // scrollDirection: Axis.horizontal,
            scrollDirection: Axis.vertical,

            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Siraj()),
                        );
                      },
                      child: Container(
                        height: 240,
                        width: 140,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage('assets/Images/siraj.jpeg'),
                                fit: BoxFit.fitHeight),
                            borderRadius: BorderRadius.circular(20)),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Murshad Shb',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,

                                // fontFamily: ,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Zia()),
                        );
                      },
                      child: Container(
                        height: 240,
                        width: 140,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage('assets/Images/zia.jpeg'),
                                fit: BoxFit.fitHeight),
                            borderRadius: BorderRadius.circular(20)),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Zia Zehri',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                // const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Ahsan()),
                        );
                      },
                      child: Container(
                        height: 240,
                        width: 140,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage('assets/Images/ahsan.png'),
                                fit: BoxFit.fitHeight),
                            borderRadius: BorderRadius.circular(20)),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Nawab Ahsan',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Sham()),
                        );
                      },
                      child: Container(
                        height: 240,
                        width: 140,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage('assets/Images/sham.png'),
                                fit: BoxFit.fitHeight),
                            borderRadius: BorderRadius.circular(20)),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'M Sham',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                // const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Chand()),
                        );
                      },
                      child: Container(
                        height: 240,
                        width: 140,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage('assets/Images/rehan.png'),
                                fit: BoxFit.fitHeight),
                            borderRadius: BorderRadius.circular(20)),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Rehan Faiz',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Yasir()),
                        );
                      },
                      child: Container(
                        height: 240,
                        width: 140,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage('assets/Images/yasir.jpeg'),
                                fit: BoxFit.fitHeight),
                            borderRadius: BorderRadius.circular(20)),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Yasir Tufail',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // const SizedBox(height: 10),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
