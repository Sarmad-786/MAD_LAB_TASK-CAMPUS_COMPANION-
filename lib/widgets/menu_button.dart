import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  final String title;
  final String image;
  final Widget page;

  const MenuButton({
    super.key,
    required this.title,
    required this.image,
    required this.page,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => page),
          );
        },
        child: SizedBox(
          width: 260,
          height: 95,
          child: Row(
            children: [
              Image.asset(image, width: 55, height: 55),
              const SizedBox(width: 15),
              Flexible(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                  overflow: TextOverflow.ellipsis, // prevents overflow
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
