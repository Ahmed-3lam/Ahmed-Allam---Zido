import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

@immutable
class ActionButton extends StatefulWidget {
  const ActionButton({
    Key? key,
    this.onPressed,
    required this.icon,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final Widget icon;

  @override
  State<ActionButton> createState() => _ActionButtonState();
}

class _ActionButtonState extends State<ActionButton> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Material(
      shape: const CircleBorder(),
      clipBehavior: Clip.antiAlias,
      color: theme.backgroundColor,
      elevation: 4.0,
      child: IconTheme.merge(
        data: theme.primaryIconTheme,
        child: IconButton(
          onPressed: widget.onPressed,
          icon: widget.icon,
        ),
      ),
    );
  }
}
