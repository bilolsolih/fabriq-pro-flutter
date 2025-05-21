import 'package:fabriq_pro/core/utils/colors.dart';
import 'package:fabriq_pro/features/common/widgets/buttons/fabriq_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FabriqDeleteButton extends StatefulWidget {
  const FabriqDeleteButton({
    super.key,
    required this.text,
    required this.icon,
    required this.color,
    required this.callback,
  });

  final String text, icon;
  final Color color;
  final VoidCallback callback;

  @override
  State<FabriqDeleteButton> createState() => _FabriqDeleteButtonState();
}

class _FabriqDeleteButtonState extends State<FabriqDeleteButton> {
  final GlobalKey _buttonKey = GlobalKey();
  OverlayEntry? _overlayEntry;
  late double top;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 36.spMin,
      height: 36.spMin,
      child: IconButton(
        key: _buttonKey,
        onPressed: _showCustomDialog,
        style: IconButton.styleFrom(
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6.sp),
            side: BorderSide(color: widget.color),
          ),
        ),
        icon: SvgPicture.asset(widget.icon, width: 19.spMin, height: 19.spMin, fit: BoxFit.cover),
      ),
    );
  }

  void _showCustomDialog() {
    RenderBox renderBox = _buttonKey.currentContext!.findRenderObject() as RenderBox;
    Offset buttonPosition = renderBox.localToGlobal(Offset.zero);
    Size buttonSize = renderBox.size;
    final size = MediaQuery.sizeOf(_buttonKey.currentContext!);
    if (size.height - buttonPosition.dy > 180.spMin) {
      top = buttonPosition.dy - buttonSize.height;
    } else {
      top = buttonPosition.dy - (2 * buttonSize.height + 152.spMin);
    }

    _overlayEntry = OverlayEntry(
      builder: (context) {
        return Stack(
          children: [
            Positioned.fill(
              child: GestureDetector(
                onTap: () {
                  _overlayEntry?.remove();
                  _overlayEntry = null;
                  _overlayEntry?.dispose();
                },
                child: Container(color: Colors.transparent),
              ),
            ),
            Positioned(
              top: top,
              left: buttonPosition.dx - 550.spMin,
              child: Material(
                elevation: 4,
                borderRadius: BorderRadius.circular(6),
                child: Container(
                  width: 295.spMin,
                  height: 152.spMin,
                  padding: EdgeInsets.fromLTRB(20.spMin, 30.spMin, 20.spMin, 16.spMin),
                  color: Colors.white,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.text,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.spMin,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 8.spMin),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FabriqTextButton(
                            text: "Yo'q",
                            fontSize: 16.spMin,
                            width: 122.spMin,
                            height: 40.spMin,
                            foregroundColor: Colors.black,
                            backgroundColor: Color(0xFFF6F6F7),
                            callback: () {
                              _overlayEntry?.remove();
                              _overlayEntry = null;
                            },
                          ),
                          FabriqTextButton(
                            text: "Ha",
                            fontSize: 16.spMin,
                            width: 122.spMin,
                            height: 40.spMin,
                            foregroundColor: Colors.white,
                            backgroundColor: AppColors.darkBlue,
                            callback: () {
                              widget.callback();
                              _overlayEntry?.remove();
                              _overlayEntry = null;
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );

    Overlay.of(context).insert(_overlayEntry!);
  }
}
