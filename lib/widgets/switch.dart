import 'package:flutter/material.dart';
import 'package:admin_panel_flutter_web/utils/colors.dart';

class SwitchButton extends StatefulWidget {
  final bool initialValue;
  final ValueChanged<bool>? onToggle;

  const SwitchButton({super.key, this.initialValue = false, this.onToggle});

  @override
  _SwitchButtonState createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  bool _value = false;

  @override
  void initState() {
    super.initState();
    _value = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _value = !_value;
        });
        if (widget.onToggle != null) {
          widget.onToggle!(_value);
        }
      },
      child: Container(
        width: 50.0,
        height: 25.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: _value ? AppColors.orange : AppColors.grey.withOpacity(0.3),
        ),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(
            alignment: _value ? Alignment.centerRight : Alignment.centerLeft,
            child: Container(
              width: 25.0,
              height: 25.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _value ? AppColors.white : AppColors.grey,
              ),
            ),
          ),
        ),
      ),
    );
  }
}