// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CategoresFreinds extends StatelessWidget {
  const CategoresFreinds({
    super.key,
    required this.image,
  });
  final String image;
  //  ب البيانات اللي انت عاوزها list لو حابب تغير الصوره او الكلام يبقا اعمل 
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: CircleAvatar(
        backgroundColor: Colors.grey.shade100,
        radius: 25,
        child: Image.asset(
          image,
        ),
      ),
    );
  }
}
