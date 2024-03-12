import 'dart:math';

import 'package:flutter/material.dart';
import 'package:joke_app/utilities/appbar/appbar_custom.dart';
import 'package:joke_app/utilities/const/const.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  String joke = jokes[Random().nextInt(jokes.length)];
  int length = jokes.length;
  late int tempIndex;
  @override
  Widget build(BuildContext context) {
    index = jokes.indexOf(joke);
    return Scaffold(
      appBar: customAppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              color: Colors.green,
              child: const Center(
                child: Text.rich(
                  TextSpan(
                    text: 'A joke day keeps the doctor away \n',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                    children: <InlineSpan>[
                      TextSpan(
                        text:
                            '\nIf you joke wrong way, your teeth have to pay. (Serious)',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: SizedBox(
                height: 300,
                child: Text(
                  joke,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                customButton(Colors.blue, 'This is Funny!', () {
                  setState(() {
                    if (length > 1) {
                      jokes.removeAt(index);
                      length = length - 1;
                      index = Random().nextInt(length);
                      joke = jokes[index];
                    } else {
                      joke =
                          "That's all jokes for today! Come back another day!";
                    }
                  });
                }),
                customButton(Colors.green, 'This is not funny.', () {
                  setState(() {
                    if (length > 1) {
                      jokes.removeAt(index);
                      length = length - 1;
                      index = Random().nextInt(length);
                      joke = jokes[index];
                    } else {
                      joke =
                          "That's all jokes for today! Come back another day!";
                    }
                  });
                }),
              ],
            ),
            const Divider(
              color: Colors.grey,
            ),
            const Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                'This app is created as part of Hlsolutions program. The materials contained on this website are provided for general information only and do not constitute any form of device. HLS assumes no responsibility for the accuracy of any particular statement and accepts no liability for any loss or damage which may arise from reliance on the information contained on this site.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 12),
              child: Text(
                'Copyright 2021 HLS',
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget customButton(Color color, String text, Function() onTap) {
    return InkWell(
      onTap: onTap,
      child: Container(
        color: color,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
