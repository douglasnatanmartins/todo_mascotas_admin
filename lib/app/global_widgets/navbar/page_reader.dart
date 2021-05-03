import 'package:flutter/material.dart';
import 'package:todo_mascotas_admin/app/global_widgets/custom_text.dart';

class PageHeader extends StatelessWidget {
  final String text;
  const PageHeader({Key key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(width: 30,),
        Padding(
          padding: const EdgeInsets.all(14.0),
          child: CustomText(text: text, size: 40, weight: FontWeight.bold, color: Colors.grey,),
        ),
      ],
    );
  }
}
