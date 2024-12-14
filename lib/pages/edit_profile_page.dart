import 'package:flutter/material.dart';
import 'package:projects/components/app_text_field.dart';
import 'package:projects/components/toolbar.dart';
import 'package:projects/components/user_avatar.dart';
import 'package:projects/styles/app_colors.dart';
import 'package:projects/styles/app_text.dart';

import '../config/app_string.dart';

enum Gender { none, male, female, other }

class EditProfilePage extends StatefulWidget {
  EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  var gender = Gender.male;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(
        title: AppString.editProfile,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Stack(
                children: [
                  const UserAvatar(
                    size: 120,
                  ),
                  Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                          padding: const EdgeInsets.all(4),
                          decoration: const BoxDecoration(
                            color: AppColors.primary,
                            borderRadius: BorderRadius.all(Radius.circular(6)),
                          ),
                          child: const Icon(
                            Icons.edit,
                            size: 20,
                            color: Colors.black,
                          ))),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const AppTextField(hint: AppString.firstName),
              const SizedBox(
                height: 20,
              ),
              const AppTextField(hint: AppString.lastName),
              SizedBox(
                height: 16,
              ),
              const AppTextField(hint: AppString.phoneNumber),
              SizedBox(
                height: 16,
              ),
              const AppTextField(hint: AppString.location),
              const SizedBox(
                height: 16,
              ),
              const AppTextField(hint: AppString.phoneNumber),
              const SizedBox(
                height: 16,
              ),
              const AppTextField(hint: AppString.birthday),
              const SizedBox(
                height: 16,
              ),
              Container(
                padding: const EdgeInsets.only(left: 12, right: 12, top: 6),
                decoration: BoxDecoration(
                  color: AppColors.fieldColor,
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppString.gender,
                      style: AppText.body1.copyWith(
                        fontSize: 12,
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: RadioListTile(
                              title: const Text(AppString.male),
                              value: Gender.male,
                              visualDensity: const VisualDensity(
                                  horizontal: VisualDensity.minimumDensity,
                                  vertical: VisualDensity.minimumDensity),
                              contentPadding: EdgeInsets.zero,
                              groupValue: gender,
                              onChanged: (value) {
                                setState(() {
                                  gender = Gender.male;
                                });
                              }),
                        ),
                        Expanded(
                          child: RadioListTile(
                              title: const Text(AppString.female),
                              value: Gender.female,
                              contentPadding: EdgeInsets.zero,
                              visualDensity: const VisualDensity(
                                  horizontal: VisualDensity.minimumDensity,
                                  vertical: VisualDensity.minimumDensity),
                              groupValue: gender,
                              onChanged: (value) {
                                setState(() {
                                  gender = Gender.female;
                                });
                              }),
                        ),
                        Expanded(
                          child: RadioListTile(
                              title: const Text(AppString.other),
                              value: Gender.other,
                              contentPadding: EdgeInsets.zero,
                              visualDensity: const VisualDensity(
                                  horizontal: VisualDensity.minimumDensity,
                                  vertical: VisualDensity.minimumDensity),
                              groupValue: gender,
                              onChanged: (value) {
                                setState(() {
                                  gender = Gender.other;
                                });
                              }),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
