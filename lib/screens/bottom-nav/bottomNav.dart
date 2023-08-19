import 'package:application/setting/cubit/mall_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../setting/const.dart';

class BottomNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MallCubit(),
      child: BlocConsumer<MallCubit, MallState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            body: MallCubit.get(context).page[MallCubit.get(context).index],
            bottomNavigationBar: BottomNavigationBar(
              elevation: 30,
              onTap: MallCubit.get(context).selectPage,
              selectedItemColor: color,
              unselectedItemColor: Colors.black54,
              currentIndex: MallCubit.get(context).index,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.category), label: 'Category'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), label: 'Profile')
              ],
            ),
          );
        },
      ),
    );
  }
}
