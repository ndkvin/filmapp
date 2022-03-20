import 'package:filmapp/widget/expandeable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({ Key? key }) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
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
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 50,
                  top: 20
                ),
                height: 40,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: const EdgeInsets.only(
                        right: 15
                      ),
                      padding: const EdgeInsets.all(
                        10,
                      ),
                      height: 40,
                      decoration: BoxDecoration(
                        color: const Color(0XFF252932),
                        borderRadius: BorderRadius.circular(7)
                      ),
                      child: const Text(
                        'Supernatural fiction',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0XFFB2B5BB),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 50,
                  top: 30,
                ),
                child: Text(
                  'Storyline',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 50,
                  right: 50,
                  top: 30,
                ),
                child: const ExpandableText(
                  text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis quis malesuada enim. Donec eu erat feugiat, pellentesque lectus ut, eleifend massa. In ornare ante urna, in tempus dolor vestibulum quis. Phasellus malesuada massa arcu. Donec at ultricies nulla. Duis pretium purus pharetra ante consequat mollis. Donec sed mi magna. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla mattis quis ligula vel vehicula. Donec condimentum magna leo, quis dictum massa aliquet vel. Ut ac urna venenatis, dictum leo sed, maximus eros. Praesent at venenatis eros.',
                )
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(
                  horizontal: 50,
                ),
                decoration: BoxDecoration(
                  color: Color(0XFF546EE5),
                  borderRadius: BorderRadius.circular(12)
                ),
                child: const Center(
                  child: Text(
                    'Watch Movie',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ]
          )
        ),
      ),
    );
  }
}