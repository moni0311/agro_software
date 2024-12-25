import 'package:flutter/material.dart';

class PaidfunctionSales extends StatefulWidget {
  const PaidfunctionSales({super.key});

  @override
  State<PaidfunctionSales> createState() => _PaidfunctionSalesState();
}

class _PaidfunctionSalesState extends State<PaidfunctionSales> {
  bool alltransaction = true;
  bool paid = false;
  bool pending = false;
  bool cancelled = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 10),
        _buildTransactionButton(
          isActive: alltransaction,
          label: 'All Transaction',
          onTap: () {
            setState(() {
              alltransaction = true;
              paid = false;
              pending = false;
              cancelled = false;
            });
          },
        ),
        // const SizedBox(width: 5),
        _buildTransactionButton(
          isActive: paid,
          label: 'Paid',
          onTap: () {
            setState(() {
              alltransaction = false;
              paid = true;
              pending = false;
              cancelled = false;
            });
          },
        ),
        // const SizedBox(width: 5),
        _buildTransactionButton(
          isActive: pending,
          label: 'Pending',
          onTap: () {
            setState(() {
              alltransaction = false;
              paid = false;
              pending = true;
              cancelled = false;
            });
          },
        ),
        // const SizedBox(width: 5),
        _buildTransactionButton(
          isActive: cancelled,
          label: 'Cancelled',
          onTap: () {
            setState(() {
              alltransaction = false;
              paid = false;
              pending = false;
              cancelled = true;
            });
          },
        ),
      ],
    );
  }

  Widget _buildTransactionButton(
      {required bool isActive,
      required String label,
      required Function() onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: isActive
              ? const Color(0xFF278942).withAlpha(130)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            label,
            style: TextStyle(
              color: isActive ? const Color(0xFFFFFFFF) : Colors.black,
              fontFamily: 'Jost',
              fontSize: 16,
              fontWeight: FontWeight.w500,
              height: 20 / 14,
            ),
          ),
        ),
      ),
    );
  }
}
