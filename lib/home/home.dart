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
                  elementCreator(
                      roses, const Color.fromARGB(255, 182, 11, 96), "Roses"),
                  const SizedBox(
                    height: 10,
                  ),
                  elementCreator(daisys,
                      const Color.fromARGB(255, 112, 80, 172), "Daisies"),
                  const SizedBox(
                    height: 10,
                  ),
                  elementCreator(
                      green, const Color.fromARGB(255, 81, 158, 138), "green"),
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
      centerTitle: true,
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

  Widget elementCreator(
      List<Flower> list, Color colorscheme, String groupName) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              groupName,
              style: TextStyle(
                  color: colorscheme,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(
          height: 180,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: list.length,
            itemBuilder: (context, index) {
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
                            color: colorscheme,
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
            },
          ),
        )
      ],
    );
  }
}
