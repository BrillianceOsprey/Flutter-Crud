import 'package:flutter/material.dart';

class AppDialog extends StatelessWidget {
  const AppDialog({
    Key? key,
    required this.content,
    required this.borderRadius,
    this.header,
    this.footer,
    this.contentPadding,
    required this.showDefaultOkAction,
  }) : super(key: key);
  final double borderRadius;
  final Widget? header;
  final Widget content;
  final Widget? footer;
  final EdgeInsetsGeometry? contentPadding;
  final bool showDefaultOkAction;
  @override
  Widget build(BuildContext context) {
    const defaultPadding = EdgeInsets.symmetric(horizontal: 10, vertical: 10);
    return Dialog(
      backgroundColor: Theme.of(context).cardColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Header
          if (header != null)
            Container(
              padding: contentPadding ?? defaultPadding,
              child: header,
            ),

          // Body
          Container(
            padding: contentPadding ?? defaultPadding,
            child: content,
          ),
          if (footer != null || showDefaultOkAction) const Divider(),
          // Footer
          Container(
            padding: contentPadding ?? defaultPadding,
            child: footer ??
                (showDefaultOkAction
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text(
                              'ok'.toUpperCase(),
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .primary),
                            ),
                          )
                        ],
                      )
                    : null),
          )
        ],
      ),
    );
  }
}
