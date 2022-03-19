import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.all(
                30
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    color: Colors.red,
                    icon: const Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                      size: 26,
                    ),
                    onPressed: () {
                      print('asdasd');
                    },
                  ),
                  const Text(
                    'Details Movie',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.bookmark_border_outlined,
                      color: Colors.white,
                      size: 26,
                    ),
                    onPressed: () {
                      print('asdasd');
                    },
                  ),
                ],
              )
            ),
            Container(
              height: 370,
              margin: const EdgeInsets.symmetric(
                horizontal: 30,
              ),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/PictMovie.png'
                  )
                )
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 50,
              ),
              child: Text(
                'Behind Her Eyes',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),  
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 50,
              ),
              child: Row(
                children: [
                  const Text(
                  'Director: Erik Richter Strand',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0XFFBABFC9),
                    ),  
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                  '|',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0XFFBABFC9),
                    ),  
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Wrap(
                    children: List.generate(5, (index) {
                      return Icon(
                        Icons.star_rate_rounded,
                        color: index + 1<= 4 ?const Color(0XFFFFA235) : const Color(0XFFE0E0E0),
                        size: 18,
                      );
                    }),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}