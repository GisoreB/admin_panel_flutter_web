import 'package:flutter/material.dart';
import 'package:admin_panel_flutter_web/utils/colors.dart';
import 'package:admin_panel_flutter_web/utils/context.dart';
import 'package:admin_panel_flutter_web/widgets/bluefield.dart';
import 'package:admin_panel_flutter_web/widgets/switch.dart';

class AddProductFields extends StatelessWidget {
  const AddProductFields({super.key});

  @override
  Widget build(BuildContext context) {
    double wr = (0.825 - 0.45);
    double wf = 0.45;
    return Container(
      width: context.width * 0.875,
      color: AppColors.white,
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: context.width * wf,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BlueInputField(
                  hintText: 'Product Name',
                  wf: wf,
                ),
                BlueInputField(
                  hintText: 'Select Product Catagory',
                  wf: wf,
                  suffixWidget: const Icon(
                    Icons.keyboard_arrow_down,
                    color: AppColors.grey,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0),
                  child: Row(
                    children: [
                      BlueInputField(
                        hintText: 'Selling Price',
                        wf: wf / 2.075,
                      ),
                      const Spacer(),
                      BlueInputField(
                        hintText: 'Cost Price',
                        wf: wf / 2.075,
                      ),
                      // const SizedBox(
                      //   width: 20,
                      // ),
                    ],
                  ),
                ),
                BlueInputField(
                  hintText: 'Quantity in Stock',
                  wf: wf,
                  suffixWidget: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        'assets/up.png',
                        scale: 3.3,
                        width: 30,
                      ),
                      Image.asset(
                        'assets/down.png',
                        scale: 3.3,
                        width: 30,
                      ),
                    ],
                  ),
                ),
                BlueInputField(
                  hintText: 'SKU',
                  wf: wf,
                ),
                BlueInputField(
                  hintText: 'Car Brand',
                  wf: wf,
                  suffixWidget: const Icon(
                    Icons.keyboard_arrow_down,
                    color: AppColors.grey,
                  ),
                ),
                BlueInputField(
                  hintText: 'Car Year of Manufactury',
                  wf: wf,
                  suffixWidget: const Icon(
                    Icons.keyboard_arrow_down,
                    color: AppColors.grey,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Image.asset(
                  'assets/imageupload.png',
                  width: context.width * wf,
                  //scale: 4,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(left: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BlueInputField(
                    hintText: 'Short Description',
                    wf: wr,
                    maxLines: 5,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Product Long Description',
                    style: TextStyle(
                      color: AppColors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  BlueInputField(
                    hintText: 'Your text goes here',
                    wf: wr,
                    maxLines: 5,
                  ),
                  const Text(
                    'Add a long description for your product',
                    style: TextStyle(
                      color: AppColors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: const [
                      Text(
                        'Return Policy',
                        style: TextStyle(
                          color: AppColors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Spacer(),
                      Text(
                        'Add Discount',
                        style: TextStyle(
                          color: AppColors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      SwitchButton(),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Date Added',
                    style: TextStyle(
                      color: AppColors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Row(
                    children: [
                      BlueInputField(
                        prefixWidget: Image.asset(
                          'assets/calendar.png',
                          scale: 3.15,
                        ),
                        hintText: '12/12/2020',
                        wf: wr / 2.25,
                      ),
                      const Spacer(),
                      BlueInputField(
                        prefixWidget: Image.asset(
                          'assets/clock.png',
                          scale: 3.15,
                        ),
                        hintText: '12:00 PM',
                        wf: wr / 2.25,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const [
                      Text(
                        'Discount',
                        style: TextStyle(
                          color: AppColors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Spacer(),
                      Text(
                        'Add Discount',
                        style: TextStyle(
                          color: AppColors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      SwitchButton(),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'Additional Images',
                    style: TextStyle(
                      color: AppColors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/imageupload_s.png',
                        scale: 4,
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      Image.asset(
                        'assets/dotted.png',
                        scale: 4,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}