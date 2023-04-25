import 'package:flutter/material.dart';
import 'package:login_page/components/text_field_container.dart';

import '../constants.dart';

class RaundedPasswordField extends StatefulWidget {
  final ValueChanged<String> onChanged;
  const RaundedPasswordField({
    super.key,
    required this.onChanged,
  });

  @override
  State<RaundedPasswordField> createState() => _RaundedPasswordFieldState();
}

class _RaundedPasswordFieldState extends State<RaundedPasswordField> {
  bool _isHidden = true;
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        keyboardType: TextInputType.visiblePassword,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return validateMessage;
          }
          return null;
        },
        onChanged: widget.onChanged,
        obscureText: _isHidden,
        decoration: InputDecoration(
          hintText: "Password",
          icon: const Icon(Icons.lock),
          iconColor: kPrimaryColor,
          border: InputBorder.none,
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                _isHidden = !_isHidden;
              });
            },
            icon: Icon(_isHidden ? Icons.visibility : Icons.visibility_off),
            color: kPrimaryColor,
          ),
        ),
      ),
    );
  }
}
