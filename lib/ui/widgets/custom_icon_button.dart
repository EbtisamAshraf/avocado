import 'package:flutter/material.dart';

import '../../constants/design_constants/colors_manager.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({Key? key, this.icon, this.onPressed})
      : super(key: key);

  final VoidCallback? onPressed;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        backgroundColor: ColorsManager.black.withOpacity(0.4),
        child: IconButton(
          onPressed: onPressed,
          icon: Icon(icon, color: ColorsManager.secondaryColor),
        ));
  }
}
