import 'package:flutter/material.dart';

class TextAutoSwitcher extends StatefulWidget {
  final List<Map<String, String>> items;

  const TextAutoSwitcher({super.key, required this.items});

  @override
  State<TextAutoSwitcher> createState() => _TextAutoSwitcherState();
}

class _TextAutoSwitcherState extends State<TextAutoSwitcher>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );

    _fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    _startAnimation();
  }

  void _startAnimation() {
    // First fade in
    _controller.forward().then((_) {
      // Wait for 3 seconds with text visible
      Future.delayed(const Duration(seconds: 3), () {
        if (mounted) {
          // Fade out
          _controller.reverse().then((_) {
            if (mounted) {
              setState(() {
                _currentIndex = (_currentIndex + 1) % widget.items.length;
              });
              // Start the cycle again
              _startAnimation();
            }
          });
        }
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _fadeAnimation,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            widget.items[_currentIndex]['header'] ?? '',
            style: const TextStyle(
              fontSize: 16,
              // fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            widget.items[_currentIndex]['value'] ?? '',
            style: TextStyle(fontSize: 14, color: Colors.green),
          ),
        ],
      ),
    );
  }
}
