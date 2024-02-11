import 'package:clean_architecture/core/constants/palette.dart';
import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 16),
        height: 300,
        width: MediaQuery.of(context).size.width - (2 * 16),
        child: Stack(
          children: [
            Container(
                height: 260,
                color: Palette.lightGrey,
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRkDetDN8Bw6doc3odXqXwbHfBGDtcJPbiWg&usqp=CAU',
                  fit: BoxFit.cover,
                )),
            Positioned(
                left: 16,
                right: 16,
                bottom: 0,
                child: Container(
                    height: 80,
                    decoration: const BoxDecoration(boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 2),
                          blurRadius: 4,
                          color: Colors.black12),
                    ], color: Colors.white),
                    child: const Padding(
                        padding: EdgeInsets.all(16),
                        child: Center(
                          child: Text("News title",
                              maxLines: 2,
                              style: TextStyle(
                                  overflow: TextOverflow.ellipsis,
                                  color: Palette.deepBlue,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold)),
                        ))))
          ],
        ));
  }
}
