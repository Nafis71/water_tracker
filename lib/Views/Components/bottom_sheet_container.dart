import 'package:flutter/material.dart';
import 'package:water_tracker/Models/bottom_sheet_contents.dart';

class BottomSheetContainer extends StatelessWidget {
  final Color backgroundColor, borderColor;
  final String cardHeader;
  final IconData icon;
  final int index;
  final Orientation orientation;

  const BottomSheetContainer({
    super.key,
    required this.backgroundColor,
    required this.borderColor,
    required this.cardHeader,
    required this.icon,
    required this.index,
    required this.orientation,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5.00),
      decoration: BoxDecoration(
        color: backgroundColor,
        border: (containerContents[index].isSelected)
            ? Border.all(color: borderColor, width: 2)
            : Border.all(color: Colors.white, width: 0.5),
        borderRadius: BorderRadius.circular(20.00),
      ),
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.all(10.00),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              icon,
              color: borderColor,
            ),
            const SizedBox(
              height: 3,
            ),
            Wrap(
              alignment: WrapAlignment.start,
              children: [
                Text(
                  cardHeader,
                  style: TextStyle(
                    color: borderColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 3,
            ),
            Wrap(
              alignment: WrapAlignment.start,
              children: [
                Text(
                  "Add a $cardHeader",
                  style: TextStyle(
                    color: borderColor,
                    fontSize: 12,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
