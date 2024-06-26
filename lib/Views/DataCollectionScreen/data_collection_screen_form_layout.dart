import 'package:flutter/material.dart';
import 'package:water_tracker/Utils/constants.dart';
import 'package:water_tracker/Views/Components/text_form_field.dart';
import '../Components/app_radio_list_tile.dart';

class DataCollectionScreenFormLayout extends StatelessWidget {
  final Orientation orientation;
  final TextEditingController nameController, ageController;
  final GlobalKey<FormState> formKey;
  final String gender;
  final List<String> genderRadioOptions;
  final double screenWidth, screenHeight;
  final Function(dynamic) onChanged;

  const DataCollectionScreenFormLayout({
    super.key,
    required this.orientation,
    required this.nameController,
    required this.ageController,
    required this.formKey,
    required this.gender,
    required this.genderRadioOptions,
    required this.screenWidth,
    required this.screenHeight,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          FormTextField(
            controller: nameController,
            hintText: nameEditingField,
            errorText: invalidNameError,
            regExpression: regEXName,
            textInputType: TextInputType.text,
          ),
          const SizedBox(
            height: 20,
          ),
          FormTextField(
            controller: ageController,
            hintText: ageEditingField,
            errorText: invalidAgeError,
            regExpression: regExAge,
            textInputType: TextInputType.number,
          ),
          const SizedBox(
            height: 20,
          ),
          AppRadioListTile(
            gender: gender,
            genderRadioOption: genderRadioOptions[0],
            onChanged: onChanged,
          ),
          const SizedBox(
            height: 20,
          ),
          AppRadioListTile(
            gender: gender,
            genderRadioOption: genderRadioOptions[1],
            onChanged: onChanged,
          ),
          (orientation == Orientation.landscape)
              ? const SizedBox(
                  height: 40,
                )
              : const SizedBox(
                  height: 70,
                ),
        ],
      ),
    );
  }
}
