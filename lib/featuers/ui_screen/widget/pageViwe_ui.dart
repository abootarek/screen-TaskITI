import 'package:flutter/material.dart';
import 'package:flutter_application_1/featuers/ui_screen/widget/stack_screen.dart';

class PageViewUi extends StatelessWidget {
  const PageViewUi({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              StackScreen(),
              SizedBox(
                width: 10,
              ),
              StackScreen(),
            ],
          ),
          
        ],
      ),
    );
  }
}
