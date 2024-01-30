import 'package:flutter/material.dart';


import 'home_menu.dart';

class Services extends StatefulWidget {
  const Services({super.key});

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  bool selectAll = false;
  final List<Items> _items = List.empty(growable: true);
  List<Items> tempItems = [];

  @override
  void initState() {
    super.initState();
    _items.add(Items(
        "Preventative \n Maintenance",
        imageName: "assets/images/maintenance.png",
        false));
    _items.add(Items("Brake", imageName: "assets/images/brake.png", false));
    _items.add(Items("Engines", imageName: 'assets/images/engine.png', false));
    _items.add(Items(
        "Exhaust\nSystem", imageName: "assets/images/exhaust.png", false));
    _items.add(Items(
        "Tires & \n Wheels", imageName: "assets/images/tires.png", false));
    _items.add(Items(
        "Transmission", imageName: "assets/images/transmission.png", false));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                icon: const ImageIcon(AssetImage('assets/images/menuicon.png'),)),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              width: 343,
              height: 41,
              child: Text(
                "Select service(s)",
                style: TextStyle(
                    fontSize: 36,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(0, 102, 179, 1)),
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      if (tempItems.contains(_items[index])) {
                        tempItems.remove(_items[index]);
                      } else {
                        tempItems.add(_items[index]);
                      }
                    });
                  },
                  child: Card(
                    color: Colors.white,
                    margin: const EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: BorderSide(
                          width: 5,
                          color: tempItems.contains(_items[index])
                              ? const Color.fromRGBO(0, 102, 179, 1)
                              : Colors.transparent,
                        )),
                    child: Stack(
                      children: [
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image(
                                  image: AssetImage(
                                      _items[index].imageName.toString())),
                              Text(
                                _items[index].title.toString(),
                                style: const TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(0, 102, 179, 1)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemCount: 6,
            ),
            TextButton(
              onPressed: () {},
              child: Container(
                width: 343,
                height: 41,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.blue,
                ),
                child: const Center(
                  child: Text(
                    'Next',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24.0,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Nunito',
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//   Widget prepareList(int index) {
//
//   }
// }

class Items {
  final String title;
  final String imageName;
  bool selected;
  Items(this.title, this.selected, {required this.imageName});
}
