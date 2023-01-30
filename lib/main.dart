import 'package:flutter/material.dart';
import 'package:proyecto_final_flutter/achievements.dart';
import 'package:proyecto_final_flutter/profile.dart';
import 'package:proyecto_final_flutter/stock.dart';
import 'achievement.dart';

const Color backgroundColor = Color(0xFF1D1E23);
const Color primaryColor = Color(0xff2a292f);
const Color secondaryColor = Color(0xff2a292f);
const Color errorColor = Color(0xfff83838);

void main() {
  runApp(const MyApp(
      userName: 'John',
      profileImage:
          'https://img.freepik.com/free-vector/businessman-character-avatar-isolated_24877-60111.jpg',
      balance: 10000));
}

class MyApp extends StatelessWidget {
  final String userName;
  final String profileImage;
  final double balance;

  const MyApp(
      {super.key,
      required this.userName,
      required this.profileImage,
      required this.balance});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: const ColorScheme(
          brightness: Brightness.dark,
          primary: primaryColor,
          onPrimary: Colors.white,
          secondary: secondaryColor,
          onSecondary: Colors.white,
          error: errorColor,
          onError: Colors.black,
          background: backgroundColor,
          onBackground: Colors.white,
          surface: primaryColor,
          onSurface: Colors.white,
        ),
      ),
      home: Builder(
        builder: (context) => Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            bottomOpacity: 0.0,
            elevation: 0.0,
          ),
          drawer: Drawer(
            backgroundColor: backgroundColor,
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                const SizedBox(
                  height: 64,
                  child: DrawerHeader(
                    decoration: BoxDecoration(
                      color: backgroundColor,
                    ),
                    child: Text(""),
                  ),
                ),
                ListTile(
                  title: const Text(
                    'Item 1',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text(
                    'Item 2',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
          backgroundColor: backgroundColor,
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Hello, $userName",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                            const Profile()));
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 20, right: 20),
                    height: 90,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 30),
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: NetworkImage(profileImage),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "YOUR BALANCE",
                                style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "\$$balance",
                                style: const TextStyle(
                                  color: Colors.white70,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          const Flexible(fit: FlexFit.tight, child: SizedBox()),
                          const Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white70,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Achievements",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const Achievements()));
                          },
                          child: const Text(
                            "See all",
                            style: TextStyle(
                              color: Colors.orange,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Achievement(
                                name: 'Racha de una semana',
                                icon: Icons.spa,
                                color: Color(0xFFFF9444)),
                            Achievement(
                              name: 'Racha de dos semanas',
                              icon: Icons.spa,
                              color: Color(0xFFBEE8B9),
                              margin: EdgeInsets.only(left: 10),
                            ),
                            Achievement(
                              name: 'Racha de tres semanas',
                              icon: Icons.spa,
                              color: Color(0xFFADF1FA),
                              margin: EdgeInsets.only(left: 10),
                            ),
                            Achievement(
                              name: 'Racha de cuatro semanas',
                              icon: Icons.spa,
                              color: Color(0xFFFFC3DF),
                              margin: EdgeInsets.only(left: 10),
                            ),
                            Achievement(
                              name: 'Racha de cinco semanas',
                              icon: Icons.spa,
                              color: Color(0xFFFF9444),
                              margin: EdgeInsets.only(left: 10),
                            ),
                            Achievement(
                              name: 'Racha de seis semanas',
                              icon: Icons.spa,
                              color: Color(0xFFBEE8B9),
                              margin: EdgeInsets.only(left: 10),
                            ),
                            Achievement(
                              name: 'Racha de siete semanas',
                              icon: Icons.spa,
                              color: Color(0xFFADF1FA),
                              margin: EdgeInsets.only(left: 10),
                            ),
                            Achievement(
                              name: 'Racha de ocho semanas',
                              icon: Icons.spa,
                              color: Color(0xFFFFC3DF),
                              margin: EdgeInsets.only(left: 10),
                            ),
                            Achievement(
                              name: 'Racha de nueve semanas',
                              icon: Icons.spa,
                              color: Color(0xFFFF9444),
                              margin: EdgeInsets.only(left: 10),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Investment Portfolio",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const Achievements()));
                          },
                          child: const Text(
                            "See all",
                            style: TextStyle(
                              color: Colors.orange,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: GridView.count(
                          shrinkWrap: true,
                          crossAxisCount: 2,
                          children: const [
                            Stock(
                              name: '1 week streak',
                              value: 0.0,
                              percentage: 0.0,
                              isUp: false,
                              icon: Icons.spa,
                              color: primaryColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ));
  }
}
