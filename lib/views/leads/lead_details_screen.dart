import 'package:boxigo_app/models/cust_estimate_model/items.dart';
import 'package:boxigo_app/utils/constants.dart';
import 'package:boxigo_app/widgets/custom_expansion_tile_widget.dart';
import 'package:boxigo_app/widgets/custom_list_tile_widget.dart';
import 'package:boxigo_app/widgets/dimension_row_widget.dart';
import 'package:flutter/material.dart';

class LeadDetailsScreen extends StatelessWidget {
  final Items estimate;

  const LeadDetailsScreen({super.key, required this.estimate});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomExpansionTile(
            title: 'Living Room',
            children: [
              Padding(
                padding: kPadding15,
                child: Row(
                  children: [
                    Text(
                      estimate.inventory![0].displayName ?? '',
                      style: kTileTitleTextStyle.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: kListViewHeight300,
                child: ListView.builder(
                  itemCount: estimate.inventory![0].category![0].items!.length,
                  itemBuilder: (context, index) {
                    final item =
                        estimate.inventory![0].category![0].items![index];
                    return CustomListTile(
                      title: item.displayName ?? '',
                      subtitle: 'Small | ${item.typeOptions ?? 'Wooden'}',
                      trailing: item.qty.toString(),
                      leadingIcon: const Icon(kTileLeadingIcon),
                    );
                  },
                ),
              ),
            ],
          ),
          CustomExpansionTile(
            title: 'Bed Room',
            children: [
              SizedBox(
                height: kListViewHeight300,
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return const CustomListTile(
                      title: 'Foldable Chairs',
                      subtitle: 'Small | Steel',
                      trailing: '4',
                      leadingIcon: Icon(Icons.chair),
                    );
                  },
                ),
              ),
            ],
          ),
          CustomExpansionTile(
            title: 'Custom Items',
            children: [
              SizedBox(
                height: kListViewHeight120,
                child: ListView.builder(
                  itemCount: estimate.customItems!.items!.length,
                  itemBuilder: (context, index) {
                    final custItem = estimate.customItems!.items![index];
                    return ListTile(
                      title: Text(
                        custItem.itemName ?? '',
                        style: kCustomItemTextStyle,
                      ),
                      subtitle: Column(
                        children: [
                          kSizedBoxHeight10,
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              custItem.itemDescription ?? '',
                              style: kGreyTextStyle,
                            ),
                          ),
                          kSizedBoxHeight10,
                          DimensionRow(
                            length: custItem.itemLength.toString(),
                            width: custItem.itemWidth.toString(),
                            height: custItem.itemHeight.toString(),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
