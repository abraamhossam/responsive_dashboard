import 'package:flutter/material.dart';
import 'package:responsive_dash_board/helper/app_styles.dart';
import 'package:responsive_dash_board/view/widgets/custom_divider.dart';
import 'package:responsive_dash_board/view/widgets/latest_transaction.dart';
import 'package:responsive_dash_board/view/widgets/quick_invoice_form.dart';
import 'package:responsive_dash_board/view/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(
        16,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          12,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const QuickInvoiceHeader(),
          Text(
            "Latest Transaction",
            style: AppStyles.styleMedium16(context),
          ),
          const LatestTransaction(),
          const CustomDivider(),
          const QuickInvoiceForm(),
        ],
      ),
    );
  }
}
