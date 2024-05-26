// ignore_for_file: public_member_api_docs, sort_constructors_first, library_private_types_in_public_api
import 'package:flutter/material.dart';

import 'package:admin_panel_flutter_web/utils/colors.dart';
import 'package:admin_panel_flutter_web/utils/context.dart';

class Progressor extends StatelessWidget {
  const Progressor({Key? key}) : super(key: key);
  final double wf = 0.3;
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: context.height * 0.375,
      width: context.width * wf,
      decoration: BoxDecoration(
        color: AppColors.white,
        border: Border.all(color: AppColors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.only(left: 15, right: 25),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SingleBar(
            title: 'Michelin Pilot Sport Tyre',
            percentage: '70',
            wf: wf,
          ),
          SingleBar(
            title: 'Bosch S3 Battery',
            percentage: '40',
            wf: wf,
          ),
          SingleBar(
            title: 'JBL GTO629  6.5-Inch Co-Axial Speaker',
            percentage: '60',
            wf: wf,
          ),
          SingleBar(
            title: 'Beck-Arney Oil Filter',
            percentage: '80',
            wf: wf,
          ),
          SingleBar(
            title: 'Anzo LED Headlights',
            percentage: '20',
            wf: wf,
          ),
        ],
      ),
    );
  }
}

class SingleBar extends StatelessWidget {
  final String title;
  final String percentage;
  final double wf;

  const SingleBar({
    Key? key,
    required this.title,
    required this.percentage,
    required this.wf,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75.5,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
              Text(
                '$percentage%',
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          ProgressBar(percentage: double.parse(percentage)),
        ],
      ),
    );
  }
}

class ProgressBar extends StatefulWidget {
  final double percentage;

  const ProgressBar({Key? key, required this.percentage}) : super(key: key);

  @override
  _ProgressBarState createState() => _ProgressBarState();
}

class _ProgressBarState extends State<ProgressBar>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 700),
      vsync: this,
    )..forward();
    _animation =
        Tween<double>(begin: 0, end: widget.percentage).animate(_controller);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return CustomPaint(
          painter: _ProgressBarPainter(_animation.value, 5),
          size: Size(MediaQuery.of(context).size.width, 10),
        );
      },
    );
  }
}

class _ProgressBarPainter extends CustomPainter {
  final double percentage;
  final double radius;

  _ProgressBarPainter(this.percentage, this.radius);

  @override
  void paint(Canvas canvas, Size size) {
    final backgroundPaint = Paint()..color = AppColors.lightBlue;
    final progressPaint = Paint()..color = AppColors.orange;
    final progressWidth = size.width * (percentage / 100);
    final backgroundRect = RRect.fromRectAndRadius(
        Rect.fromLTWH(0, 0, size.width, size.height), Radius.circular(radius));
    final progressRect = RRect.fromRectAndRadius(
        Rect.fromLTWH(0, 0, progressWidth, size.height),
        Radius.circular(radius));
    canvas.drawRRect(backgroundRect, backgroundPaint);
    canvas.drawRRect(progressRect, progressPaint);
  }

  @override
  bool shouldRepaint(_ProgressBarPainter oldDelegate) =>
      oldDelegate.percentage != percentage;
}