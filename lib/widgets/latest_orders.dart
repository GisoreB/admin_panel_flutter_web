import 'package:flutter/material.dart';
import 'package:admin_panel_flutter_web/utils/colors.dart';

// ignore: must_be_immutable
class LatestOrders extends StatelessWidget {
  LatestOrders({Key? key}) : super(key: key);
  double wf = 0;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      wf = constraints.maxWidth - 25;
      return Container(
        width: constraints.maxWidth,
        decoration: BoxDecoration(
          color: AppColors.white,
          border: Border.all(color: AppColors.grey),
          borderRadius: BorderRadius.circular(8),
        ),
        margin: const EdgeInsets.all(25),
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              'Latest Orders',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: 45,
              decoration: const BoxDecoration(
                color: AppColors.orange,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5),
                  topRight: Radius.circular(5),
                ),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: wf * 0.22,
                    child: const Text(
                      'Products',
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: wf * 0.1,
                    child: const Text(
                      'Order ID',
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: wf * 0.12,
                    child: const Text(
                      'Date',
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: wf * 0.17,
                    child: const Text(
                      'Customer name',
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: wf * 0.1,
                    child: const Text(
                      'Status',
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: wf * 0.14,
                    child: const Text(
                      'Amount',
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: wf * 0.06,
                    child: const Text(
                      'Action',
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            OrderList(wf: wf)
          ],
        ),
      );
    });
  }
}

enum Status {
  // ignore: constant_identifier_names
  Delivered,
  // ignore: constant_identifier_names
  Pending,
  // ignore: constant_identifier_names
  Cancel,
}

class OrderList extends StatelessWidget {
  final double wf;
  const OrderList({
    Key? key,
    required this.wf,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(0),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 8,
      itemBuilder: (context, index) {
        return OrderItem(
          wf: wf,
          prodName: 'Disc Brake',
          orderId: '#23460',
          date: 'Jun 29,2022',
          customerName: 'Afaq Karim',
          status: Status.Delivered,
          amount: 'UGX. 400,000',
        );
      },
    );
  }
}

class OrderItem extends StatelessWidget {
  final double wf;
  final String prodName;
  final String orderId;
  final String date;
  final String customerName;
  final Status status;
  final String amount;

  const OrderItem({
    Key? key,
    required this.wf,
    required this.prodName,
    required this.orderId,
    required this.date,
    required this.customerName,
    required this.status,
    required this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      // margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        children: [
          SizedBox(
            width: wf * 0.22,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: AppColors.lightBlue,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                const SizedBox(
                  width: 25,
                ),
                Text(
                  prodName,
                  style: const TextStyle(
                    fontSize: 14,
                    color: AppColors.black,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: wf * 0.1,
            child: Text(
              orderId,
              style: const TextStyle(
                fontSize: 14,
                color: AppColors.black,
              ),
            ),
          ),
          SizedBox(
            width: wf * 0.12,
            child: Text(
              date,
              style: const TextStyle(
                fontSize: 14,
                color: AppColors.black,
              ),
            ),
          ),
          SizedBox(
            width: wf * 0.17,
            child: Text(
              customerName,
              style: const TextStyle(
                fontSize: 14,
                color: AppColors.black,
              ),
            ),
          ),
          SizedBox(
            width: wf * 0.1,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 5,
                  backgroundColor: status == Status.Delivered
                      ? AppColors.lightGreen
                      : status == Status.Pending
                      ? AppColors.orange
                      : AppColors.red,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  status == Status.Delivered
                      ? 'Delivered'
                      : status == Status.Pending
                      ? 'Pending'
                      : 'Cancel',
                  style: const TextStyle(
                    fontSize: 14,
                    color: AppColors.black,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: wf * 0.14,
            child: Text(
              amount,
              style: const TextStyle(
                fontSize: 14,
                color: AppColors.black,
              ),
            ),
          ),
          Container(
            width: wf * 0.03,
            alignment: Alignment.center,
            child: const Icon(
              Icons.more_horiz,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}