import 'package:flutter/material.dart';
import 'package:form_validation/form_validation.dart';
import 'package:regexed_validator/regexed_validator.dart';
import 'package:tuiicore/core/common/core_i18n.dart';
import 'package:tuiicore/core/config/theme/tuii_colors.dart';

class PasswordFormField extends StatefulWidget {
  const PasswordFormField({
    super.key,
    required this.changeHandler,
    required this.fieldSubmittedHandler,
    this.controller,
    this.validators,
    this.autofocus = false,
    this.hint,
    this.validationText,
    this.skipPasswordValidation = false,
  });

  final Function(String) changeHandler;
  final Function(String) fieldSubmittedHandler;
  final TextEditingController? controller;
  final List<ValueValidator>? validators;
  final bool? autofocus;
  final String? hint;
  final String? validationText;
  final bool? skipPasswordValidation;

  @override
  State<PasswordFormField> createState() => _PasswordFormFieldState();
}

class _PasswordFormFieldState extends State<PasswordFormField> {
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: widget.autofocus ?? false,
      obscureText: !_isVisible,
      controller: widget.controller,
      decoration: InputDecoration(
          suffixIcon: GestureDetector(
              onTap: () => setState(() => _isVisible = !_isVisible),
              child: Icon(
                  _isVisible == true ? Icons.visibility_off : Icons.visibility,
                  color: TuiiColors.inactiveTool)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide:
                  const BorderSide(color: TuiiColors.inactiveTool, width: 1)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide:
                  const BorderSide(color: TuiiColors.inactiveTool, width: 1)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide:
                  const BorderSide(color: TuiiColors.inactiveTool, width: 1)),
          filled: true,
          hintStyle: const TextStyle(color: TuiiColors.inactiveTool),
          hintText: widget.hint ?? 'Password'.i18n,
          hoverColor: Colors.white70,
          fillColor: Colors.white70),
      onChanged: (value) {
        widget.changeHandler(value);
      },
      onFieldSubmitted: (value) {
        widget.fieldSubmittedHandler(value);
      },
      validator: (value) {
        if (widget.validators != null) {
          var validator = Validator(
            validators: widget.validators!,
          );

          return validator.validate(
            context: context,
            label: widget.validationText ?? widget.hint ?? 'Password'.i18n,
            value: value,
          );
        } else {
          if (widget.skipPasswordValidation != true) {
            if (!validator.password(value ?? '')) {
              return '''Passwords must be at least 7 characters long, but more is better.
Passwords must be combination of uppercase and lowercase
letters, numbers, and symbols, such as !,*,&,\$,#, or @.
'''
                  .i18n;
            }
            return null;
          } else {
            return null;
          }
        }
      },
    );
  }
}