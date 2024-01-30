import 'package:car_care/services.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class HomeMenu extends StatefulWidget {
  const HomeMenu({super.key});

  @override
  State<HomeMenu> createState() => _HomeMenuState();
}

class _HomeMenuState extends State<HomeMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
            Color.fromRGBO(0, 102, 179, 1),
            Color.fromRGBO(146, 214, 227, 1)
          ])),
      child: Column(
        children: [
          AppBar(
            backgroundColor: Colors.transparent,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Image(
                  image: AssetImage('assets/images/logo.png'),
                ),
                IconButton(
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => const Home()));
                    },
                    icon: const Icon(Icons.cancel)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: () {},
              child: Container(
                width: 800,
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                //padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: const Center(
                  child: Text(
                    'About Us',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24.0,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Nunito',
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: () {
               Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Services()));
              },
              child: Container(
                width: 500,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                //padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: const Center(
                  child: Text(
                    'Services',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24.0,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Nunito',
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: () {},
              child: Container(
                width: 500,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color.fromRGBO(146, 214, 227, 1),
                ),
                //padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: const Center(
                  child: Text(
                    'Book Now',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24.0,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Nunito',
                    ),
                  ),
                ),
              ),
            ),
          ),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.only(bottom: 10, top: 25),
              child: Image(
                image:
                AssetImage('assets/images/car-illustration.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
