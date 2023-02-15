import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:phixlab_money/data/userInfo.dart';
import 'package:phixlab_money/utils/constants.dart';
import 'package:phixlab_money/widget/income_expense_card.dart';
import 'package:phixlab_money/widget/transaction_item_tile.dart';

import '../data/userInfo.dart';

class HomeScreenTab extends StatelessWidget {
  const HomeScreenTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(defaultSpacing),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: defaultSpacing * 4,
            ),
            ListTile(
              title: Text("ยอดรวมรายรับ-รายจ่าย",style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(fontSize: fontSizeHeading,fontWeight: FontWeight.w700),),
              leading: ClipRRect(
                borderRadius:
                  const BorderRadius.all(Radius.circular(defaultRadius)),
                ),
            ),
            const SizedBox(
              height: defaultSpacing,
            ),
            Center(
              child: Column(
                children: [
                  Text(
                    "${userdata.totalBalance} ",
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontSize: fontSizeHeading, fontWeight: FontWeight.w800),
              ),
              const SizedBox(
                height: defaultSpacing / 2,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: defaultSpacing * 2,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: IncomeExpenseCard(
                expenseData: ExpenseData("รายได้", " ${userdata.inflow}",
                  Icons.arrow_upward_rounded,))),
            const SizedBox(
              width: defaultSpacing,
            ),
            Expanded(
              child: IncomeExpenseCard(
                expenseData: ExpenseData("ค่าใช้จ่าย","${userdata.outflow}",
                  Icons.arrow_downward_rounded)))
          ],
        ),
        const SizedBox(
          height: defaultSpacing * 2,
        ),
        Text(
          "สรุปยอดรวม",
          style: Theme.of(context)
            .textTheme
            .headline6
            ?.copyWith(fontWeight: FontWeight.w700),
        ),
        const SizedBox(
          height: defaultSpacing,
        ),
        const Text(
          "วันนี้",
          style: TextStyle(color: fontHeading),
        ),
        ...userdata.transaction.map((Transaction) => TransactionItemTile(transaction:Transaction)),
        const SizedBox(
          height: defaultSpacing,
        ),
        const Text(
          "มกราคม 2566",
          style: TextStyle(color: fontHeading),
            ),
            ...transaction2.map((Transaction) => TransactionItemTile(transaction:Transaction)),
          ],
        ),
      ),
    );
  }
}