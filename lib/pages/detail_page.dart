import 'package:filmapp/data/data.dart';
import 'package:filmapp/pages/detail/desktop.dart';
import 'package:filmapp/pages/detail/mobile.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  data dataDetail;

  DetailPage({
    Key? key,
    required this.dataDetail
  }) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState(dataDetail: dataDetail);
}

class _DetailPageState extends State<DetailPage> {
  data dataDetail;

  _DetailPageState({
    required this.dataDetail,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MediaQuery.of(context).size.width <=600 ? DetailMobile(dataDetail: dataDetail) : DesktopDetail(dataDetail: dataDetail),
    );
  }
}