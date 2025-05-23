import 'package:flutter/material.dart'; // Added missing import

class AdminAccessDetector extends StatefulWidget {
  final Widget child;

  const AdminAccessDetector({
    super.key,
    required this.child,
  }); // Fixed constructor

  @override
  State<AdminAccessDetector> createState() => AdminAccessDetectorState(); // Made public
}

class AdminAccessDetectorState extends State<AdminAccessDetector> {
  // Removed underscore
  int _tapCount = 0;

  void _handleSecretTap() {
    _tapCount++;
    if (_tapCount == 5) {
      Navigator.of(context).pushNamed('/admin-login'); // Fixed navigation
      _tapCount = 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: _handleSecretTap,
      child: widget.child,
    );
  }
}
