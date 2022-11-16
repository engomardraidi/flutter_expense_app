import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import '../../../core/constant/app_colors.dart';
import '../../flutter_widgets/custom_text.dart';

class TransactionItem extends StatelessWidget {
  final String title;
  final String icon;
  final double amount;
  final int date;
  final int mode;

  const TransactionItem(
      {required this.title,
      required this.icon,
      required this.amount,
      required this.date,
      required this.mode,
      super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(
        icon,
        width: 30,
      ),
      title: CustomText(
        text: title,
        fontWeight: FontWeight.w600,
      ),
      subtitle: CustomText(
        text: DateFormat('d MMM yyyy')
            .format(DateTime.fromMillisecondsSinceEpoch(date)),
        fontSize: 13,
        color: Colors.grey.shade400,
      ),
      trailing: CustomText(
        text: '${amount.toStringAsFixed(2)} USD',
        fontWeight: FontWeight.w500,
        fontSize: 15,
        color: mode == 0 ? Colors.red : AppColors.accentColor,
      ),
    );
  }
}
