import 'package:flutter/material.dart';

class InfoField extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;

  InfoField(
      {Key? key, required this.icon, required this.title, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
      child: Row(
        children: [
          Icon(
            icon,
            size: 32,
          ),
          SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 5,),
              Text(value,
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w400))
            ],
          )
        ],
      ),
    );
  }
}
