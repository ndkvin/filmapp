import 'package:flutter/material.dart';

class ExpandableText extends StatefulWidget {

  final String text;

  const ExpandableText({ Key? key, required this.text }) : super(key: key);

  @override
  _ExpandableTextState createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  
  late String firstHalf;
  late String secondHalf;

  bool hiddenText = true;
  double textHeight = 200;

  @override
  void initState() {
    super.initState();

    if(widget.text.length>textHeight) {
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondHalf = widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty ? Text(
        firstHalf,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: Color(0XFF696D74),
        ),
      ) : Column(
        children: [
          Text(
            hiddenText ? firstHalf + '...' : firstHalf + secondHalf,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0XFF696D74),
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                hiddenText = !hiddenText;
              });
            },
            child: Row(
              children: [
                hiddenText ? const Text(
                  'Show more',
                  style: TextStyle(
                    color: Color(0XFF546EE5),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ) : const Text(
                  'Show less',
                  style: TextStyle(
                    color: Color(0XFF546EE5),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}