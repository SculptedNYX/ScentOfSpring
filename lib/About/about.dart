import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "This app was made by Yehya Mohey an IEEE student undersuper vision by Abdullah Yehia,\nIt's a flower store where i tried to revise all the concepts we took and implement what i can from the concepts that were introduced last session except a small few",
              style: TextStyle(
                  color: Color.fromARGB(255, 81, 158, 138),
                  fontSize: 30,
                  fontFamily: 'StraightFlowers'),
            )
          ],
        ),
      ),
    );
  }
}
