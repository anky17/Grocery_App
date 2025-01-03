import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/color_extension.dart';

class ProductCell extends StatelessWidget {
  final Map pObj;
  final VoidCallback onPressed;
  final VoidCallback onCart;

  const ProductCell(
      {super.key,
      required this.pObj,
      required this.onPressed,
      required this.onCart});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 180,
        margin: const EdgeInsets.symmetric(horizontal: 8),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
              color: TColor.placeholder.withValues(alpha: .5), width: 1),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(pObj["icon"],
                    width: 80, height: 90, fit: BoxFit.contain),
              ],
            ),
            const Spacer(),
            Text(
              pObj["name"],
              style: TextStyle(
                  color: TColor.primaryText,
                  fontSize: 15,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 2),
            Text(
              "${pObj["qty"]}" "${pObj["unit"]}",
              style: TextStyle(
                  color: TColor.secondaryText,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  pObj["price"],
                  style: TextStyle(
                      color: TColor.primaryText,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
                InkWell(
                  onTap: onCart,
                  child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: TColor.primary,
                        border: Border.all(
                            color: TColor.placeholder.withValues(alpha: .5),
                            width: 1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      alignment: Alignment.center,
                      child: IconButton(
                          onPressed: () {}, icon: const Icon(Icons.add))),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
