import 'package:flutter/material.dart';

import 'font.dart';

class match_listcard extends StatelessWidget {
  const match_listcard({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Container(
        height: (151 / XDsize.XdH) * size.height,
        width: (690 / XDsize.XdW) * size.width,
        decoration: BoxDecoration(
            color: Color(0xffffffff),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 7,
                offset: Offset(0, 5), // changes position of shadow
              ),
            ]),
        child: Stack(
          children: [
            Positioned(
              top: (20 / XDsize.XdH) * size.height,
              left: (28 / XDsize.XdW) * size.width,
              child: Text(
                "2021년 09월 02일 20:00",
                style: TextStyle(fontSize: 11),
              ),
            ),
            Positioned(
              top: (70 / XDsize.XdH) * size.height,
              left: (69 / XDsize.XdW) * size.width,
              child: Row(
                children: [
                  Text(
                    "토트넘 홋스퍼",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    width: (11 / XDsize.XdH) * size.height,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 4,
                          offset: Offset(2, 0), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Image.asset(
                      "assets/png/to.png",
                      height: (45 / XDsize.XdH) * size.height,
                      width: (45 / XDsize.XdH) * size.height,
                    ),
                  ),
                  SizedBox(
                    width: (16 / XDsize.XdH) * size.height,
                  ),
                  Text(
                    "VS",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    width: (16 / XDsize.XdH) * size.height,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 4,
                          offset: Offset(2, 0), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Image.asset(
                      "assets/png/city.png",
                      height: (45 / XDsize.XdH) * size.height,
                      width: (45 / XDsize.XdH) * size.height,
                    ),
                  ),
                  SizedBox(
                    width: (11 / XDsize.XdH) * size.height,
                  ),
                  Text(
                    "맨체스터 시티",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: (60 / XDsize.XdH) * size.height,
              left: (620 / XDsize.XdW) * size.width,
              child: Image.asset(
                "assets/png/noti-s.png",
                height: (45 / XDsize.XdH) * size.height,
                width: (45 / XDsize.XdH) * size.height,
              ),
            )
          ],
        ),
      ),
    );
  }
}
