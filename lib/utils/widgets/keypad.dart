import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Keypad extends StatefulWidget {

  ///[TextEditingController] for managing and controller the data of the pin
  /// text field
  final TextEditingController controller;

  ///Called everytime a button on the keypad is clicked
  ///It is used to provide the current state of the button;
  final ValueChanged<String>? onChanged;

  final VoidCallback? onDeletePressed;

  final int? maxLength;

  final bool dotEnabled;

  const Keypad({
    Key? key,
    required this.controller,
    this.onChanged,
    this.onDeletePressed,
    this.maxLength,
    this.dotEnabled = false,
  }) : super(key: key);



  @override
  State<Keypad> createState() => _KeypadState();
}
class _KeypadState extends State<Keypad> {

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: SizedBox(
        height: 285.r,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _buildNumKey('1'),
                  _buildNumKey('2'),
                  _buildNumKey('3'),
                ],
              ),
            ),
            SizedBox(height: 15.r,),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _buildNumKey('4'),
                  _buildNumKey('5'),
                  _buildNumKey('6'),
                ],
              ),
            ),
            SizedBox(height: 15.r,),

            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _buildNumKey('7'),
                  _buildNumKey('8'),
                  _buildNumKey('9'),
                ],
              ),
            ),
            SizedBox(height: 15.r,),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if(widget.dotEnabled) _buildNumKey('.')
                  else
                    _buildNumKey(''),
                  _buildNumKey('0'),
                  _buildNumKey('<', onTap: widget.onDeletePressed ?? () {
                    HapticFeedback.lightImpact();
                    if (widget.controller.text.isNotEmpty) {
                      widget.controller.text = widget.controller.text
                          .substring(0, widget.controller.text.length - 1);
                      widget.onChanged?.call(widget.controller.text);
                    }
                  },),
                ],
              ),
            ),
          ],
        ),),
    );
  }

  Widget _buildNumKey(String numValue, {VoidCallback? onTap}) {
    if (numValue.isEmpty) {
      return Expanded(
        child: InkWell(
          borderRadius: BorderRadius.circular(30),
          splashColor: const Color(0xFF1C2A44),
          highlightColor: const Color(0xFF1C2A44),
          onTap: onTap,
          child: Container(),
        ),
      );
    } else {
      return Expanded(
        child: InkWell(
          borderRadius: BorderRadius.circular(30),
          splashColor: const Color(0xFF1C2A44),
          highlightColor: const Color(0xFF1C2A44),
          onTap: onTap ??
                  () {
                HapticFeedback.lightImpact();
                if (widget.controller.text.length == 4) return;
                if (widget.maxLength != null) {
                  if (widget.controller.text.length < widget.maxLength!) {
                    if (numValue == '.' && widget.controller.text.contains('.')) {
                      widget.onChanged?.call(widget.controller.text);
                    } else {
                      widget.controller.text += numValue; // Update the controller's text
                      widget.onChanged?.call(widget.controller.text);
                    }
                  }
                } else {
                  if (numValue == '.' && widget.controller.text.contains('.')) {
                    widget.onChanged?.call(widget.controller.text);
                  } else {
                    widget.controller.text += numValue; // Update the controller's text
                    widget.onChanged?.call(widget.controller.text);
                  }
                }
              },
          child: Container(
            decoration: numValue == '<'
                ? BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white),
            )
                : BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: numValue == '<'
                  ? Icon(Icons.backspace_rounded, color: Colors.white)
                  : Text(
                numValue,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 22.sp,
                  fontFamily: 'Inter',
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
      );
    }
  }

}