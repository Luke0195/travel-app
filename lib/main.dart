import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Home();
  }
}

class _Home extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    void onScroll() {
      print('Ss');
    }

    final PageController pageController = PageController(
      initialPage: 0,
    )..addListener(() {
        onScroll();
      });

    return MaterialApp(
        home: Scaffold(
      body: PageView(
        controller: pageController,
        scrollDirection: Axis.horizontal,
        children: [
          makePage(
              imagePath: 'assets/images/one.jpg',
              title: 'Yosemite National Park',
              description:
                  'Yosemite National Park is in California’s Sierra Nevada mountains. It’s famed for its giant, ancient sequoia trees, and for Tunnel View, the iconic vista of towering Bridalveil Fall and the granite cliffs of El Capitan and Half Dome.'),
          makePage(
              imagePath: 'assets/images/two.jpg',
              title: 'Golden Gate Bridge',
              description:
                  'The Golden Gate Bridge is a suspension bridge spanning the Golden Gate, the one-mile-wide strait connecting San Francisco Bay and the Pacific Ocean.'),
          makePage(
              imagePath: 'assets/images/three.jpg',
              title: 'Sedona',
              description:
                  "Sedona is regularly described as one of America's most beautiful places. Nowhere else will you find a landscape as dramatically colorful."),
          makePage(
              imagePath: 'assets/images/four.jpg',
              title: 'Savannah',
              description:
                  "Savannah, with its Spanish moss, Southern accents and creepy graveyards, is a lot like Charleston, South Carolina. But this city about 100 miles to the south has an eccentric streak."),
        ],
      ),
    ));
  }

  Widget makePage({required imagePath, required title, required description}) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover),
      ),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomRight,
                stops: const [
              0.3,
              0.9
            ],
                colors: [
              Colors.black.withOpacity(0.9),
              Colors.black.withOpacity(.2)
            ])),
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              textBaseline: TextBaseline.alphabetic,
              children: [
                SizedBox(
                  height: 90,
                ),
                Text('1',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                    )),
                Text('/4',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ))
              ],
            ),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 4),
                      child: const Icon(Icons.star,
                          color: Colors.yellow, size: 15),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 4),
                      child: const Icon(Icons.star,
                          color: Colors.yellow, size: 15),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 4),
                      child: const Icon(Icons.star,
                          color: Colors.yellow, size: 15),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 4),
                      child: const Icon(Icons.star,
                          color: Colors.yellow, size: 15),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 4),
                      child:
                          const Icon(Icons.star, color: Colors.grey, size: 15),
                    ),
                    const Text(
                      '4.0',
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      '(2300)',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(right: 50),
                  child: Text(description,
                      style: TextStyle(
                          fontFamily: 'Nunito',
                          color: Colors.white.withOpacity(0.6),
                          height: 1.9,
                          fontSize: 15)),
                ),
                const SizedBox(height: 20),
                const Text('ReadMe')
              ],
            )),
          ],
        ),
      ),
    );
  }
}
