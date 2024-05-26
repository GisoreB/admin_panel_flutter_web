// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:admin_panel_flutter_web/controllers/panel_provider.dart';
import 'package:admin_panel_flutter_web/screens/dashboard.dart';
import 'package:admin_panel_flutter_web/screens/products.dart';

import 'package:admin_panel_flutter_web/utils/colors.dart';
import 'package:admin_panel_flutter_web/utils/context.dart';
import 'package:admin_panel_flutter_web/widgets/menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SizedBox(
        width: context.width,
        height: context.height,
        child: Consumer<PanelProvider>(
          builder: (context, value, child) {
            var provider = Provider.of<PanelProvider>(context);
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const MenuLister(),
                    provider.panelPage == PanelPage.dashboard
                        ? const Dashboard()
                        : provider.panelPage == PanelPage.products
                        ? const ProductsPage()
                        : const SizedBox.shrink()
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class MenuLister extends StatelessWidget {
  const MenuLister({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.darkBlue,
      ),
      height: context.height,
      child: SingleChildScrollView(
        child: Consumer<PanelProvider>(
          builder: (context, value, child) {
            var provider = Provider.of<PanelProvider>(context);
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: context.width * 0.125,
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/logo.png',
                    scale: 3,
                    // width: context.width * 0.1,
                  ),
                ),
                const SizedBox(
                  height: 00,
                ),
                MenuWidget(
                  title: 'Dashboard',
                  iconPath: 'assets/dashboard.png',
                  isSelected: provider.panelPage == PanelPage.dashboard,
                  onPressed: () {
                    provider.setPanelPage(PanelPage.dashboard);
                  },
                ),
                MenuWidget(
                  title: 'Products',
                  iconPath: 'assets/products.png',
                  isSelected: provider.panelPage == PanelPage.products,
                  onPressed: () {
                    provider.setPanelPage(PanelPage.products);
                  },
                ),
                MenuWidget(
                  title: 'Orders',
                  iconPath: 'assets/orders.png',
                  isSelected: provider.panelPage == PanelPage.orders,
                  onPressed: () {
                    provider.setPanelPage(PanelPage.orders);
                  },
                ),
                MenuWidget(
                  title: 'Customers',
                  iconPath: 'assets/customers.png',
                  isSelected: provider.panelPage == PanelPage.customers,
                  onPressed: () {
                    provider.setPanelPage(PanelPage.customers);
                  },
                ),
                MenuWidget(
                  title: 'Services',
                  iconPath: 'assets/services.png',
                  isSelected: provider.panelPage == PanelPage.services,
                  onPressed: () {
                    provider.setPanelPage(PanelPage.services);
                  },
                ),
                MenuWidget(
                  title: 'Notifications',
                  iconPath: 'assets/notification.png',
                  isSelected: provider.panelPage == PanelPage.notifications,
                  onPressed: () {
                    provider.setPanelPage(PanelPage.notifications);
                  },
                ),
                //const Spacer(),
                Image.asset(
                  'assets/Frame.png',
                  width: context.width * 0.115,
                ),
                const Divider(
                  color: AppColors.white,
                  thickness: 2,
                ),
                MenuWidget(
                  title: 'Settings',
                  iconPath: 'assets/settings.png',
                  isSelected: provider.panelPage == PanelPage.settings,
                  onPressed: () {
                    provider.setPanelPage(PanelPage.settings);
                  },
                ),
                MenuWidget(
                  title: 'My Account',
                  iconPath: 'assets/account.png',
                  isSelected: provider.panelPage == PanelPage.account,
                  onPressed: () {
                    provider.setPanelPage(PanelPage.account);
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}