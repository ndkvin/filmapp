import 'package:filmapp/data/data.dart';
import 'package:filmapp/widget/expandeable_text.dart';
import 'package:flutter/material.dart';


class DetailMobile extends StatefulWidget {
  data dataDetail;

  DetailMobile({ 
    Key? key,
    required this.dataDetail, 
  }) : super(key: key);

  @override
  State<DetailMobile> createState() => _DetailMobileState(dataDetail: dataDetail);
}

class _DetailMobileState extends State<DetailMobile> {

  data dataDetail;

  _DetailMobileState({
    required this.dataDetail, 
  });

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
                        Navigator.pop(context);
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
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      dataDetail.image
                    )
                  )
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 30,
                ),
                child: Text(
                  dataDetail.name,
                  style: const TextStyle(
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
                  left: 30,
                ),
                child: Row(
                  children: [
                    Text(
                    'Director: '+dataDetail.director,
                    style: const TextStyle(
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
                          color: index + 1<= dataDetail.rating ?const Color(0XFFFFA235) : const Color(0XFFE0E0E0),
                          size: 18,
                        );
                      }),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 30,
                  top: 20
                ),
                height: 40,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: dataDetail.genre.length,
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
                      child: Text(
                        dataDetail.genre[index],
                        style: const TextStyle(
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
                  left: 30,
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
                  left: 30,
                  right: 30,
                  top: 30,
                ),
                child: ExpandableText(
                  text: dataDetail.storyLine,
                )
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(
                  horizontal: 30,
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