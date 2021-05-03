import 'package:flutter/material.dart';

class ItemTile extends StatelessWidget {
  ItemTile({
    @required this.textTitle,
    @required this.onTap,
    @required this.isSelect,
    @required this.isExpansion,
    @required this.iconData,
    this.isSelect2,
    this.childTitle,
    this.childTitle2,
    this.onTap2,
    this.childIcon,
    this.childIcon2,
  });
  final String textTitle;
  final IconData iconData;
  final IconData childIcon;
  final IconData childIcon2;
  final Function onTap;
  final Function onTap2;
  final bool isSelect;
  final bool isSelect2;
  final bool isExpansion;
  final String childTitle;
  final String childTitle2;

  @override
  Widget build(BuildContext context) {
    if (isExpansion == false) {
      return Material(
        color: isSelect ? Colors.teal.shade50 : Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.only(left: 10),
            height: 50,
            child: Row(
              children: [
                Icon(
                 iconData,
                  size: 18,
                  color: isSelect ? Colors.teal.shade700 : Colors.grey[600],
                ),
                const SizedBox(
                  width: 35,
                ),
                Text(
                  textTitle,
                  style: TextStyle(
                      color:
                          isSelect ? Colors.teal.shade700 : Colors.grey[600]),
                )
              ],
            ),
          ),
        ),
      );
    } else {
      return Material(
        color: Colors.transparent,
        child: ExpansionTile(
          tilePadding: EdgeInsets.only(left: 12, right: 10),
          backgroundColor: Colors.teal.shade50,
          collapsedBackgroundColor: isSelect || isSelect2 ? Colors.teal.shade50 : Colors.transparent,
          title: Text(
            textTitle,
            style: TextStyle(
              fontSize: 14,
                color:isSelect || isSelect2 ? Colors.teal.shade700 : Colors.grey[600]),
            textAlign: TextAlign.start,
          ),
          leading: Icon(
            iconData,
            size: 18,
            color: isSelect || isSelect2 ? Colors.teal.shade700 : Colors.grey[600],
          ),
          children: [
            Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: onTap,
                child: Container(
                  height: 50,
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Icon(
                        childIcon,
                        size: 18,
                        color: isSelect
                            ? Colors.teal.shade700
                            : Colors.grey[600],
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      Text(
                        childTitle,
                        style: TextStyle(
                            color: isSelect
                                ? Colors.teal.shade700
                                : Colors.grey[600]),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: onTap2,
                child: Container(
                  padding: const EdgeInsets.only(left: 20),
                  height: 50,
                  child: Row(
                    children: [
                      Icon(
                        childIcon2,
                        size: 18,
                        color: isSelect2
                            ? Colors.teal.shade700
                            : Colors.grey[600],
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      Text(
                        childTitle2,
                        style: TextStyle(
                            color: isSelect2
                                ? Colors.teal.shade700
                                : Colors.grey[600]),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }
  }
}
