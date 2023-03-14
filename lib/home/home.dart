import 'package:flutter/material.dart';

import '../About/about.dart';
import 'flowers.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: diplayAppBar(context),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      const Text(
                        "Explore",
                        style: TextStyle(
                            color: Color.fromARGB(255, 87, 55, 85),
                            fontSize: 60,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'TitleFlowers'),
                      ),
                      Image.network(
                        "https://static.vecteezy.com/system/resources/previews/002/930/058/large_2x/stylized-lotus-flower-icon-free-vector.jpg",
                        fit: BoxFit.cover,
                        width: 80,
                        height: 80,
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Text(
                        "Roses",
                        style: TextStyle(
                            color: Color.fromARGB(255, 182, 11, 96),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 180,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: roses.length,
                      itemBuilder: (context, index) {
                        return elementCreator(roses, index,
                            const Color.fromARGB(255, 182, 11, 96));
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const [
                      Text(
                        "Daisys",
                        style: TextStyle(
                            color: Color.fromARGB(255, 112, 80, 172),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 180,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: daisys.length,
                      itemBuilder: (context, index) {
                        return elementCreator(daisys, index,
                            const Color.fromARGB(255, 112, 80, 172));
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const [
                      Text(
                        "Greens",
                        style: TextStyle(
                            color: Color.fromARGB(255, 81, 158, 138),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 180,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: green.length,
                      itemBuilder: (context, index) {
                        return elementCreator(green, index,
                            const Color.fromARGB(255, 81, 158, 138));
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }

  AppBar diplayAppBar(context) {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      foregroundColor: const Color.fromARGB(255, 236, 57, 148),
      title: const Text(
        "Scent of Spring",
        style: TextStyle(
          fontFamily: 'SquigglyFlowers',
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
      leading: const Icon(Icons.sunny),
      actions: [
        InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const About()),
              );
            },
            child: const Icon(Icons.info)),
        const SizedBox(width: 10),
      ],
    );
  }

  Widget elementCreator(List<Flower> list, index, Color color) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              list[index].imageurl,
              fit: BoxFit.cover,
              width: 250,
              height: 160,
            ),
          ),
          ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                  color: color,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      list[index].name,
                      style: const TextStyle(
                          color: Colors.white,
                          fontFamily: 'StraightFlowers',
                          fontSize: 10),
                    ),
                  ))),
        ],
      ),
    );
  }
}
