import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  final String userName;
  final String profileImage;
  final double balance;

  const Profile(
      {super.key,
        required this.userName,
        required this.profileImage,
        required this.balance});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Perfil"),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(profileImage),
                      radius: 50,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Text(
                      userName,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      "@${userName.toLowerCase().replaceAll(' ', '_')}",
                      style: const TextStyle(
                        color: Colors.white60,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15, bottom: 15),
                    child: Container(
                      color: Theme.of(context).colorScheme.primary,
                      padding: const EdgeInsets.only(top: 10),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10, bottom: 10),
                              child: Text(
                                "Ajustes Generales",
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.onPrimary,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            const OptionCard(optionName: "Cuenta", icon: Icons.person,),
                            const OptionCard(optionName: "Notificaciones", icon: Icons.notifications,),
                            const OptionCard(optionName: "Seguridad y Privacidad", icon: Icons.lock,),
                            const OptionCard(optionName: "Apariencia", icon: Icons.palette,),
                            const OptionCard(optionName: "Dashboard", icon: Icons.dashboard_customize,),
                            const OptionCard(optionName: "Soporte", icon: Icons.support,),
                            const OptionCard(optionName: "Acerca De", icon: Icons.question_mark,),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OptionCard extends StatelessWidget {
  final String optionName;
  final IconData icon;
  const OptionCard({super.key, required this.optionName, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      height: 60,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              icon
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                optionName,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSecondary,
                  fontSize: 20,
                ),
              ),
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
    );
  }
}