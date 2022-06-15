import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/giri%C5%9F%20ekran%C4%B1/giri%C5%9F.dart';
import 'package:flutter_application_1/rota/rota.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: routeGenerations.RouteGeneration,
      title: "Uygulama Çerçevesi",
      home: giris(),
    );
  }
}

class AnaEkran extends StatefulWidget {
  const AnaEkran({Key? key}) : super(key: key);

  @override
  State<AnaEkran> createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran>
    with SingleTickerProviderStateMixin {
  get child => null;
  late AnimationController controller;
  late Animation<Color?> animationrenk;

  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(milliseconds: 2500),
      vsync: this,
    );

    controller.addListener(() {
      setState(() {});
    });

    controller.forward();
    controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller.reverse().orCancel;
      } else if (status == AnimationStatus.dismissed) {
        controller.forward().orCancel;
      }
    });

    animationrenk = ColorTween(
      begin: Colors.black,
      end: Colors.white,
    ).animate(controller);
  }

  @override
  dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Blog Uygulaması"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "giris");
            },
            icon: Icon(Icons.account_box, color: animationrenk.value),
          )
        ],
      ),
      body: ListView(
        children: [
          Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(onPressed: () {}, child: Text("Genel")),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.popAndPushNamed(context, 'gercekhikaye');
                      },
                      child: Text("Gerçek Hikaye"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.popAndPushNamed(context, 'gizem');
                      },
                      child: Text("Gizem"),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.popAndPushNamed(context, 'korku');
                      },
                      child: Text("Korku"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.popAndPushNamed(context, 'mitoloji');
                      },
                      child: Text("Mitoloji"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.popAndPushNamed(context, 'sanat');
                      },
                      child: Text("Sanat"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.popAndPushNamed(context, 'teori');
                      },
                      child: Text("Teori"),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Column(
                  children: [
                    IconButton(
                      icon: Image.asset('assets/images/resim0.jpeg'),
                      iconSize: 700,
                      onPressed: () {
                        Navigator.pushNamed(context, 'mitoloji');
                      },
                    ),
                  ],
                ),
                Container(
                  child: Text(
                    "12 Olimposlu",
                    style: TextStyle(fontSize: 22),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Column(
                  children: [
                    IconButton(
                      icon: Image.asset('assets/images/resim1.webp'),
                      iconSize: 400,
                      onPressed: () {
                        Navigator.pushNamed(context, 'gercekhikaye');
                      },
                    ),
                  ],
                ),
                Container(
                  child: Text(
                    "Tinder Avcısı:SİMON LEVİEV",
                    style: TextStyle(fontSize: 22),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Column(
                  children: [
                    IconButton(
                      icon: Image.asset('assets/images/resim2.webp'),
                      iconSize: 400,
                      onPressed: () {
                        Navigator.pushNamed(context, 'gizem');
                      },
                    ),
                  ],
                ),
                Container(
                  child: Text(
                    "Uyuyan Güzel:Rosalia Lombardo",
                    style: TextStyle(fontSize: 22),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Column(
                  children: [
                    IconButton(
                      icon: Image.asset('assets/images/resim3.webp'),
                      iconSize: 400,
                      onPressed: () {
                        Navigator.pushNamed(context, 'korku');
                      },
                    ),
                  ],
                ),
                Container(
                  child: Text(
                    "İki Yüzlü Adam:Edward Mordrake",
                    style: TextStyle(fontSize: 22),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  child: Image.asset("assets/images/resim4.jpeg"),
                ),
                Container(
                  child: Text(
                    "Titanların Kadehi",
                    style: TextStyle(fontSize: 22),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Column(
                  children: [
                    IconButton(
                      icon: Image.asset('assets/images/resim5.webp'),
                      iconSize: 400,
                      onPressed: () {
                        Navigator.pushNamed(context, 'sanat');
                      },
                    ),
                  ],
                ),
                Container(
                  child: Text(
                    "Vincent Van Gogh- Tutuklular Çemberi",
                    style: TextStyle(fontSize: 22),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Column(
                  children: [
                    IconButton(
                      icon: Image.asset('assets/images/resim6.jpg'),
                      iconSize: 400,
                      onPressed: () {
                        Navigator.pushNamed(context, 'teori');
                      },
                    ),
                  ],
                ),
                Container(
                  child: Text(
                    "Tarihin En Gizemli Deneyi-Philadelphia Deneyi",
                    style: TextStyle(fontSize: 22),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  child: Image.asset("assets/images/resim7.jpg"),
                ),
                Container(
                  child: Text(
                    "13 Yaşında KaybolanÇocuğun Yerine Geçen Genç-Frederic Bourdin",
                    style: TextStyle(fontSize: 22),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  child: Image.asset("assets/images/resim8.jpg"),
                ),
                Container(
                  child: Text(
                    "Apollon ve Daphne:İmkansız Aşk",
                    style: TextStyle(fontSize: 22),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
