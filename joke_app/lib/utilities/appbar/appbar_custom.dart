import 'package:flutter/material.dart';

PreferredSize customAppBar() {
  return const PreferredSize(
    preferredSize: Size.fromHeight(100),
    child: SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://th.bing.com/th/id/R.8b167af653c2399dd93b952a48740620?rik=%2fIwzk0n3LnH7dA&pid=ImgRaw&r=0'),
              radius: 35,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('Handcrafted by'),
                    Text('Jim HLS'),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://th.bing.com/th/id/R.8b167af653c2399dd93b952a48740620?rik=%2fIwzk0n3LnH7dA&pid=ImgRaw&r=0'),
                  radius: 35,
                ),
              ],
            )
          ],
        ),
      ),
    ),
  );
}
