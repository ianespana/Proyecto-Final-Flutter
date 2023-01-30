import 'package:flutter/material.dart';
import 'package:proyecto_final_flutter/achievement.dart';
import 'package:proyecto_final_flutter/achievements.dart';
import 'package:proyecto_final_flutter/profile.dart';
import 'package:proyecto_final_flutter/stock.dart';
import 'package:proyecto_final_flutter/stocks.dart';

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
      home: Home(
        userName: userName,
        profileImage: profileImage,
        balance: balance,
      ),
    );
  }
}

class Home extends StatefulWidget {
  final String userName;
  final String profileImage;
  final double balance;

  const Home(
      {super.key,
      required this.userName,
      required this.profileImage,
      required this.balance});

  @override
  State<Home> createState() => _HomeState(
      userName: userName, profileImage: profileImage, balance: balance);
}

class _HomeState extends State<Home> {
  final String userName;
  final String profileImage;
  final double balance;

  _HomeState(
      {required this.userName,
      required this.profileImage,
      required this.balance});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          bottomOpacity: 0.0,
          elevation: 0.0,
        ),
        drawer: Drawer(
          backgroundColor: Theme.of(context).colorScheme.background,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              SizedBox(
                height: 64,
                child: DrawerHeader(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.background,
                  ),
                  child: const Text(""),
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
        backgroundColor: Theme.of(context).colorScheme.background,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              TitleBar(
                userName: userName,
              ),
              ProfileCard(
                userName: userName,
                profileImage: profileImage,
                balance: balance,
              ),
              const AchievementsSection(),
              const StocksSection(),
            ],
          ),
        ),
      ),
    );
  }
}

class TitleBar extends StatelessWidget {
  final String userName;

  const TitleBar({super.key, required this.userName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Hola, $userName",
            style: const TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  final String userName;
  final String profileImage;
  final double balance;

  const ProfileCard(
      {super.key,
      required this.userName,
      required this.profileImage,
      required this.balance});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Profile(
                        userName: userName,
                        profileImage: profileImage,
                        balance: balance,
                      )));
        },
        child: Container(
          margin: const EdgeInsets.only(left: 20, right: 20),
          height: 90,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
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
                      "TU BALANCE",
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
    );
  }
}

class AchievementsSection extends StatelessWidget {
  const AchievementsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Logros",
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
                          builder: (context) => const Achievements()));
                },
                child: const Text(
                  "Ver todos",
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
    );
  }
}

class StocksSection extends StatelessWidget {
  const StocksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 20, right: 20, bottom: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Portafolio",
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
                          builder: (context) => const Stocks()));
                },
                child: const Text(
                  "Ver todo",
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
            child: GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              childAspectRatio: 1.3,
              crossAxisCount: 2,
              mainAxisSpacing: 13,
              crossAxisSpacing: 18,
              children: [
                Stock(
                  name: 'AMD',
                  value: 73.12,
                  percentage: -3.06,
                  color: Theme.of(context).colorScheme.primary,
                ),
                Stock(
                  name: 'Apple',
                  value: 143.17,
                  percentage: -1.90,
                  color: Theme.of(context).colorScheme.primary,
                ),
                Stock(
                  name: 'Cisco',
                  value: 48.17,
                  percentage: -0.69,
                  color: Theme.of(context).colorScheme.primary,
                ),
                Stock(
                  name: 'Dell',
                  value: 39.85,
                  percentage: -1.14,
                  color: Theme.of(context).colorScheme.primary,
                ),
                Stock(
                  name: 'Facebook',
                  value: 147.6,
                  percentage: -2.72,
                  color: Theme.of(context).colorScheme.primary,
                ),
                Stock(
                  name: 'Garmin',
                  value: 97.75,
                  percentage: -0.96,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
