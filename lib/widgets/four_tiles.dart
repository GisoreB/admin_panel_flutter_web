import 'package:admin_panel_flutter_web/widgets/tile.dart';
import 'package:flutter/material.dart';

class FourTiles extends StatelessWidget {
  const FourTiles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Row(
            children: [
              TileWidget(
                title: 'Today\'s Orders',
                value: '60',
                h: 0.17,
                w: 0.17,
              ),
              TileWidget(
                title: 'Today\'s Revenue',
                value: '15M',
                h: 0.17,
                w: 0.17,
                isSelected: true,
              ),
            ],
          ),
          Row(
            children: [
              TileWidget(
                title: 'Sales this Month',
                value: '43',
                h: 0.17,
                w: 0.17,
              ),
              TileWidget(
                title: 'Profit/Loss',
                value: '2.5M',
                h: 0.17,
                w: 0.17,
                hasIcon: true,
              ),
            ],
          ),
        ],
      ),
    );
  }
}