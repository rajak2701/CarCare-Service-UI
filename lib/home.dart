import 'package:car_care/home_menu.dart';
import 'package:car_care/services.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(0, 102, 179, 1),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Image(
                image: AssetImage('assets/images/logo.png'),
              ),
              IconButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => const HomeMenu()));
                  },
                  icon: const ImageIcon(AssetImage('assets/images/menuicon.png'), color: Colors.white,)),
            ],
          ),
        ),
        body: SizedBox.expand(
          child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                  Color.fromRGBO(0, 102, 179, 1),
                  Color.fromRGBO(146, 214, 227, 1)
                ])),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "by Raja razz",
                      style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "Total Car Care & ",
                      style: TextStyle(
                          fontSize: 30,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Auto Repair",
                      style: TextStyle(
                          fontSize: 30,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Services",
                      style: TextStyle(
                          fontSize: 30,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextButton(
                      onPressed: () {;
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Services()));
                      },
                      child: Container(
                        width: 180,
                        height: 60,
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
                              fontSize: 20.0,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Nunito',
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
              ),
            ),
          ),
        ));
  }
}
