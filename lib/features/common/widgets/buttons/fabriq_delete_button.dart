import 'package:fabriq_pro/core/utils/colors.dart';
import 'package:fabriq_pro/features/common/widgets/buttons/fabriq_text_button.dart';
import 'package:flutter/material.dart';
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

  void _showCustomDialog() {
    RenderBox renderBox = _buttonKey.currentContext!.findRenderObject() as RenderBox;
    Offset buttonPosition = renderBox.localToGlobal(Offset.zero);
    Size buttonSize = renderBox.size;

    _overlayEntry = OverlayEntry(
      builder: (context) {
        return Stack(
          children: [
            Positioned.fill(
              child: GestureDetector(
                onTap: () {
                  _overlayEntry?.remove();
                  _overlayEntry = null;
                },
                child: Container(color: Colors.transparent),
              ),
            ),
            Positioned(
              top: buttonPosition.dy - buttonSize.height,
              left: buttonPosition.dx - 550,
              child: Material(
                elevation: 4,
                borderRadius: BorderRadius.circular(6),
                child: Container(
                  width: 295,
                  height: 152,
                  padding: EdgeInsets.fromLTRB(20, 30, 20, 16),
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
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FabriqTextButton(
                            text: "Yo'q",
                            width: 122,
                            height: 40,
                            foregroundColor: Colors.black,
                            backgroundColor: Color(0xFFF6F6F7),
                            callback: () {
                              _overlayEntry?.remove();
                              _overlayEntry = null;
                            },
                          ),
                          FabriqTextButton(
                            text: "Ha",
                            width: 122,
                            height: 40,
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

  @override
  Widget build(BuildContext context) {
    return IconButton(
      key: _buttonKey,
      onPressed: _showCustomDialog,
      style: IconButton.styleFrom(
        fixedSize: Size(36, 36),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
          side: BorderSide(color: widget.color),
        ),
      ),
      icon: SvgPicture.asset(widget.icon),
    );
  }
}
