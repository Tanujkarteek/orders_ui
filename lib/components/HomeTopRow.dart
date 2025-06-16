import 'package:flutter/material.dart';

class HomeTopRow extends StatelessWidget {
  const HomeTopRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Text(
            'Open Orders',
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'SFPro',
              fontWeight: FontWeight.w700,
              letterSpacing: 0,
              color: Colors.black87,
            ),
          ),
          Spacer(),
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Transform.translate(
                    offset: const Offset(0, 1),
                    child: Icon(Icons.download, size: 14, color: Colors.black),
                  ),
                  const Text(
                    'Download',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
