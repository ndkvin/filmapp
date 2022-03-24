import 'package:filmapp/data/data.dart';
import 'package:filmapp/data/movie_data.dart';
import 'package:filmapp/data/tv_seris_data.dart';
import 'package:filmapp/pages/detail_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  MainPage({ Key? key }) : super(key: key);

  List<data> MovieData = movie_data; 
  List<data> TvSerisData = tv_seris; 

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                        top: 30,
                        left: 30,
                        right: 15
                      ),
                      height: 48,
                      width: 48,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                            'assets/images/Profile.png',
                          )
                        )
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        top: 33
                      ),
                      height: 41,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Good Morning',
                            style: TextStyle(
                              color: Color(0XFF696D74),
                              fontSize: 12,
                              fontWeight: FontWeight.w400
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Andika',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Color(0XFFFFFFFF),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(
                    right: 45,
                    top: 45,
                  ),
                  child: const Icon(
                    Icons.notifications,
                    color: Colors.white,
                    size: 18,
                  ),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 30,
                top: 30,
              ),
              child: const Text(
                'Top Movie',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 30
              ),
              height: 310,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: MovieData.length,
                itemBuilder: (BuildContext context, int index) {
                  data movie = MovieData[index];
                  return InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return DetailPage(dataDetail: movie,);
                      }));
                    },
                    child: Container(
                      margin: const EdgeInsets.only(
                        right: 20,
                      ),
                      height: 306,
                      width: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 250,
                            width: 190,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage(
                                  movie.image,
                                )
                              )
                            )
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 4,
                            ),
                            child: Text(
                              movie.name,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Wrap(
                                children: List.generate(5, (index) {
                                  return Icon(
                                    Icons.star_rate_rounded,
                                    color: index + 1<= movie.rating ?const Color(0XFFFFA235) : const Color(0XFFE0E0E0),
                                    size: 18,
                                  );
                                }),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 30,
                top: 30,
              ),
              child: const Text(
                'Tv Series',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 30,
                bottom: 30
              ),
              height: 220,
              child: ListView.builder(
                itemCount: TvSerisData.length,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  data TvSeris = TvSerisData[index];
                  return InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return DetailPage(dataDetail: TvSeris,);
                      }));
                    },
                    child: Container(
                      height: 100,
                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                              bottom: 20,
                            ),
                            height: 76,
                            width: 76,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                  TvSeris.image,
                                )
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                              left: 10,
                              bottom: 10
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(
                                    top: 7,
                                    bottom: 10
                                  ),
                                  child: Text(
                                    TvSeris.genre[0],
                                    style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0XFF696D74),  
                                    ),
                                  ),
                                ),
                                Text(
                                  TvSeris.name,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,  
                                  ),
                                ),
                                Container(
                                  child: Wrap(
                                    children: List.generate(5, (index) {
                                      return Icon(
                                        Icons.star_rate_rounded,
                                        color: index + 1<= TvSeris.rating?const Color(0XFFFFA235) : const Color(0XFFE0E0E0),
                                        size: 18,
                                      );
                                    }),
                                  ),
                                )
                              ],
                            ),
                          )
                        ]
                      ),
                    ),
                  );
                },
              )
            )
          ]
        ),
      ),
    );
  }
}