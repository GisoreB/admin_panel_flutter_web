import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:admin_panel_flutter_web/controllers/panel_provider.dart';
import 'package:admin_panel_flutter_web/utils/colors.dart';
import 'package:admin_panel_flutter_web/utils/context.dart';
import 'package:admin_panel_flutter_web/widgets/addproductcard.dart';
import 'package:admin_panel_flutter_web/widgets/productlist_card.dart';
import 'package:admin_panel_flutter_web/widgets/topbar.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width * 0.875,
      color: AppColors.white,
      height: context.height,
      child: Consumer<PanelProvider>(builder: (context, value, child) {
        var provider = Provider.of<PanelProvider>(context);
        return Column(
          children: [
            const TopBar(title: 'Products'),
            Expanded(
              child: provider.isAddProduct
                  ? const AddProductCard()
                  : const ProductListCard(),
            ),
          ],
        );
      }),
    );
  }
}