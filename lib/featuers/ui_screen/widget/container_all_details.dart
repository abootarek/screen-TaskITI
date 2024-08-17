import 'package:flutter/material.dart';

class ContainerAllDeteils extends StatelessWidget {
  const ContainerAllDeteils({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: 362,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.white,
            blurRadius: 5.0,
          ),
        ],
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text(
                  'Happy Bones',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 248, 144, 144),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Egypt',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 160, 87, 228),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'cairo',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    SizedBox(
                      child: CircleAvatar(
                        radius: 16,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 16,
                          backgroundColor: Colors.black,
                          child: Image.asset(
                              'assets/images/blank-1886008_1280.png'),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 13,
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 15,
                        child: CircleAvatar(
                          radius: 12,
                          backgroundColor: Colors.white,
                          child: Image.asset(
                            'assets/images/blank-1886008_1280.png',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              '2003 /18 / 55  Cairo, Egypt , hatem ooooo jgu ufiu i lgou oifu iu ',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
