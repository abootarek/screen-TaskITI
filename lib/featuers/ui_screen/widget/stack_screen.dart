import 'package:flutter/material.dart';
import 'package:flutter_application_1/featuers/ui_screen/widget/container_all_details.dart';

class StackScreen extends StatelessWidget {
  const StackScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 5.0,
              ),
            ],
          ),
          child: Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                    image: AssetImage('assets/images/food_image.png'),
                  ),
                  color: Color.fromARGB(255, 232, 230, 230),
                ),
                height: 240,
                width: 362,
              ),
              Positioned(
                top: 10,
                left: 10,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    padding: const EdgeInsets.all(10),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'OPEN',
                    style: TextStyle(
                      color: Colors.greenAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    padding: const EdgeInsets.all(10),
                  ),
                  onPressed: () {},
                  child: const Text(
                    '⭐ 4.5',
                  ),
                ),
              ),
            ],
          ),
        ),
        const ContainerAllDeteils()
      ],
    );
  }
}
