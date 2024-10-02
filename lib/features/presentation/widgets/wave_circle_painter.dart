import '../../../app_ex.dart';

class WaveCirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.grey.withOpacity(0.15)
      ..style = PaintingStyle.fill;

    final path = Path();
    path.moveTo(0, size.height * 0.7);

    path.arcToPoint(
      Offset(size.width, size.height * 0.6),
      radius: Radius.circular(size.width / 2),
      clockwise: false,
    );

    path.lineTo(size.width, size.height * 0.4);

    path.cubicTo(size.width * 0.75, size.height * 0.05, size.width * 0.25,
        size.height * 0.2, 0, size.height * 0.2);

    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
