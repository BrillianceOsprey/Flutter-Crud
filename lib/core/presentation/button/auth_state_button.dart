import 'package:crud_flutter/core/shared/config/app_consts.dart';
import 'package:flutter/material.dart';

class AuthStateButton extends StatefulWidget {
  const AuthStateButton(
      {super.key, required this.text, required this.loading, this.onPressed});
  final String text;
  final bool loading;
  final VoidCallback? onPressed;
  @override
  State<AuthStateButton> createState() => _AuthStateButtonState();
}

class _AuthStateButtonState extends State<AuthStateButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: widget.onPressed,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 20),
          textStyle: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(fontWeight: FontWeight.bold),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppConsts.buttonRadius)),
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(widget.text),
            ),
            Positioned(
              child: widget.loading
                  ? SizedBox(
                      width: 16,
                      height: 16,
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(
                          Theme.of(context).colorScheme.onPrimary,
                        ),
                        strokeWidth: 1.4,
                      ),
                    )
                  : ClipOval(
                      child: SizedBox(
                        width: 30,
                        height: 30,
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Theme.of(context).colorScheme.onPrimary,
                          size: 18,
                        ),
                      ),
                    ),
            )
          ],
        ));
  }
}
