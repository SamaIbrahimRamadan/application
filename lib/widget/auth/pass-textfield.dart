import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../setting/cubit/mall_cubit.dart';

class CustomPassTextField extends StatelessWidget {
  String text;
  IconData? icon;
  TextEditingController passController;
  CustomPassTextField(
      {super.key, required this.text, this.icon, required this.passController});
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MallCubit(),
      child: BlocConsumer<MallCubit, MallState>(
        listener: (context, state) {},
        builder: (context, state) {
          return SizedBox(
            width: 300,
            child: TextFormField(
              keyboardType: TextInputType.visiblePassword,
              controller: passController,
              obscureText: MallCubit.get(context).pass,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                    icon: Icon(icon),
                    onPressed: MallCubit.get(context).visibility),
                hintText: text,
                hintStyle: const TextStyle(fontSize: 20),
              ),
              validator: (data) {
                if (data!.isEmpty) {
                  return ("Invalid value");
                }
                return null;
              },
            ),
          );
        },
      ),
    );
  }
}
