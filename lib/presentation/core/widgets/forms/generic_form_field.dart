import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hipstermeet/presentation/core/utils/extension_util.dart';
import 'package:hipstermeet/presentation/core/utils/form/field_clazz.dart';
import 'package:hipstermeet/presentation/core/widgets/forms/custom_text_form_field.dart';

class GenericFormField<B extends StateStreamable<S>, S>
    extends StatelessWidget {
  const GenericFormField({super.key, required this.clazz});

  final FieldClazz<S> clazz;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<B, S>(
      buildWhen: (previous, current) => clazz.buildWhen(previous, current),
      builder: (context, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextFormField(
              onTap: clazz.onTap,
              fieldKey: clazz.fieldKey,

              labelText: clazz.labelText,
              validator: (text) => clazz.validator(text, state),
              onChanged: (value) => clazz.onChange(value),
              textInputType: clazz.textInputType,
              obscureText: clazz.shouldObscureText == null
                  ? false
                  : clazz.shouldObscureText!(state),
              hintText: clazz.hintText,
              hintStyle: clazz.hintStyle,
              suffix: clazz.getSuffix!(state),
              enableBorderSide: clazz.enabledBorderSide(state),
              labelStyle: clazz.labelStyle(state),
              readOnly: clazz.readOnly,
            ),
            15.hs,
          ],
        );
      },
    );
  }
}
