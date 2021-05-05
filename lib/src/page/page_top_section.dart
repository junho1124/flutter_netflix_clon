import 'package:flutter/material.dart';

Stack PageTopSection(bool input) {
  bool isTop = input;
  return Stack(
    children: [
      Image.network(
        'https://occ-0-2794-2218.1.nflxso.net/dnm/api/v6/6AYY37jfdO6hpXcMjf9Yu5cnmO0/AAAABbHnaQCB_svwI0G5jr8e3RncCYALx09BCDJH2uhF0_xdCrS4DZ1B7M6TuHndYEHQAq80hSbU8L3Uji8Kwonk8RWqVay8.webp?r=c6e',
        height: 280,
        fit: BoxFit.cover,
      ),
      Positioned(
        left: 16,
        bottom: 40,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AnimatedContainer(
              duration: Duration(seconds: 2),
              height: isTop ? 140 : 70,
              child: Image.network(
                'https://occ-0-2794-2218.1.nflxso.net/dnm/api/v6/LmEnxtiAuzezXBjYXPuDgfZ4zZQ/AAAABVdFKBMen7V38j53KO7sYsiH_93NyAeZ1IGBNMxdoB_h6ekByN8ye2SsaLMEjB4YTeSQUT-PN3weFZQnze9VtszVwUDfoaNOG7hB.webp?r=2f8',
              ),
              curve: Curves.easeInOut,
            ),
            AnimatedContainer(
              duration: Duration(seconds: 2),
              height: isTop ? 40 : 20,
              child: Text(
                '설명',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              curve: Curves.easeInOut,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(
                          Icons.play_arrow,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 4.0,
                        ),
                        Text(
                          '재생',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                    )),
                SizedBox(
                  width: 10.0,
                ),
                ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(Icons.info_outline),
                        SizedBox(
                          width: 8.0,
                        ),
                        Text('상세 정보'),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(122, 122, 122, 0.5),
                    )),
              ],
            )
          ],
        ),
      ),
    ],
  );
}
