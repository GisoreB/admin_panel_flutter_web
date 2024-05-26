import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:admin_panel_flutter_web/controllers/panel_provider.dart';
import 'package:admin_panel_flutter_web/utils/colors.dart';
import 'package:admin_panel_flutter_web/widgets/searchbar.dart';

// ignore: must_be_immutable
class ProductListCard extends StatelessWidget {
  const ProductListCard({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        // height: context.height * 0.7,
        decoration: BoxDecoration(
          color: AppColors.white,
          border: Border.all(color: AppColors.grey),
          borderRadius: BorderRadius.circular(8),
        ),
        margin: const EdgeInsets.all(25),
        padding: const EdgeInsets.symmetric(vertical: 25),
        child: Column(
          children: const [
            TopRow(),
            SizedBox(height: 10),
            ListHeader(),
            Expanded(child: ListBody()),
          ],
        ),
      );
    });
  }
}

class ListBody extends StatelessWidget {
  const ListBody({super.key});
  final int len = 10;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: len,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  const ListItem(),
                  index == len - 1
                      ? Container(
                    height: 1,
                    color: AppColors.grey.withOpacity(0.7),
                  )
                      : const SizedBox.shrink(),
                ],
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Spacer(),
              Text(
                'Rows per page: 10',
                style: TextStyle(
                  fontSize: 14,
                  color: AppColors.grey,
                ),
              ),
              Icon(
                Icons.arrow_drop_down,
                color: AppColors.grey,
                size: 20,
              ),
              SizedBox(
                width: 40,
              ),
              Text(
                '1-10 of 1240',
                style: TextStyle(
                  fontSize: 14,
                  color: AppColors.grey,
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Icon(
                Icons.arrow_back_ios,
                color: AppColors.grey,
                size: 18,
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: AppColors.grey,
                size: 18,
              ),
              SizedBox(
                width: 30,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ListItem extends StatelessWidget {
  const ListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double wf = constraints.maxWidth;
        return Column(
          children: [
            Container(
              height: 1,
              color: AppColors.grey.withOpacity(0.7),
            ),
            Container(
              padding: const EdgeInsets.only(top: 20, bottom: 20, left: 25),
              decoration: const BoxDecoration(
                color: AppColors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const CircleAvatar(
                          backgroundImage: AssetImage('assets/profile.jpeg'),
                          radius: 24,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Product Details',
                              style: TextStyle(
                                fontSize: 14,
                                color: AppColors.black,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Added 1 day ago',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: AppColors.grey.withOpacity(0.7),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: wf * 0.1,
                    child: const Text(
                      'Product Details',
                      style: TextStyle(
                        fontSize: 14,
                        color: AppColors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: wf * 0.1,
                    child: const Text(
                      'Product Details',
                      style: TextStyle(
                        fontSize: 14,
                        color: AppColors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: wf * 0.1,
                    child: const Text(
                      'Product Details',
                      style: TextStyle(
                        fontSize: 14,
                        color: AppColors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: wf * 0.1,
                    child: const Text(
                      'Product Details',
                      style: TextStyle(
                        fontSize: 14,
                        color: AppColors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: wf * 0.09,
                    child: const Text(
                      'Product Details',
                      style: TextStyle(
                        fontSize: 14,
                        color: AppColors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: wf * 0.09,
                    child: const Text(
                      'Product Details',
                      style: TextStyle(
                        fontSize: 14,
                        color: AppColors.black,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    width: wf * 0.09,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 6),
                      width: 65,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: AppColors.lightGreen,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Text(
                        'New',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                      width: wf * 0.05,
                      child: Icon(
                        Icons.more_vert,
                        color: AppColors.grey.withOpacity(0.7),
                      )),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

class ListHeader extends StatelessWidget {
  const ListHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double wf = constraints.maxWidth;
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Expanded(
                // width: wf * 0.2,
                child: Text(
                  'Product Details',
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.grey,
                  ),
                ),
              ),
              SizedBox(
                width: wf * 0.1,
                child: const Text(
                  'Brand',
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.grey,
                  ),
                ),
              ),
              SizedBox(
                width: wf * 0.1,
                child: const Text(
                  'Model',
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.grey,
                  ),
                ),
              ),
              SizedBox(
                width: wf * 0.1,
                child: const Text(
                  'Category',
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.grey,
                  ),
                ),
              ),
              SizedBox(
                width: wf * 0.1,
                child: const Text(
                  'SKU',
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.grey,
                  ),
                ),
              ),
              SizedBox(
                width: wf * 0.09,
                child: const Text(
                  'In Stock',
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.grey,
                  ),
                ),
              ),
              SizedBox(
                width: wf * 0.09,
                child: const Text(
                  'YOM',
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.grey,
                  ),
                ),
              ),
              SizedBox(
                width: wf * 0.09,
                child: const Text(
                  'Condition',
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.grey,
                  ),
                ),
              ),
              SizedBox(
                width: wf * 0.05,
                child: const Text(
                  '',
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.grey,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class TopRow extends StatelessWidget {
  const TopRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Consumer<PanelProvider>(
        builder: (context, value, child) {
          var provider = Provider.of<PanelProvider>(context);
          return Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Products',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                width: 40,
              ),
              GestureDetector(
                onTap: () {
                  provider.isAddProduct
                      ? provider.resetIsAddProduct()
                      : provider.setIsAddProduct();
                },
                child: Container(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  decoration: BoxDecoration(
                      color: AppColors.orange,
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 2,
                            color: AppColors.lightBlue,
                            spreadRadius: 1,
                            offset: Offset(2, 2))
                      ]),
                  alignment: Alignment.center,
                  child: const Text(
                    'Add Product',
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              const Spacer(),
              provider.isAddProduct
                  ? Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 7),
                    decoration: BoxDecoration(
                        color: AppColors.black,
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: const [
                          BoxShadow(
                              blurRadius: 2,
                              color: AppColors.lightBlue,
                              spreadRadius: 1,
                              offset: Offset(2, 2))
                        ]),
                    alignment: Alignment.center,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text(
                          'Add Product',
                          style: TextStyle(
                            color: AppColors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          width: 18,
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: AppColors.white,
                          //size: 24,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  GestureDetector(
                    onTap: () {
                      provider.isAddProduct
                          ? provider.resetIsAddProduct()
                          : provider.setIsAddProduct();
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      decoration: BoxDecoration(
                          color: AppColors.orange,
                          borderRadius: BorderRadius.circular(50),
                          boxShadow: const [
                            BoxShadow(
                                blurRadius: 2,
                                color: AppColors.lightBlue,
                                spreadRadius: 1,
                                offset: Offset(2, 2))
                          ]),
                      alignment: Alignment.center,
                      child: const Text(
                        'Save and Publish',
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              )
                  : const SizedBox.shrink(),
              const Spacer(),
              const CustomSearchBar(),
              const SizedBox(
                width: 40,
              ),
              Image.asset(
                'assets/sort.png',
                scale: 2.5,
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                'Sort',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                width: 25,
              ),
              Image.asset(
                'assets/filter.png',
                scale: 2.5,
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                'Filter',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          );
        },
      ),
    );
  }
}