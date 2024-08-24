import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../logic/cubit/courses_cubit.dart';
import '../../logic/cubit/courses_state.dart';
import 'courses_list_view.dart';


class DoctorsBlocBuilder extends StatelessWidget {
  const DoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is CoursesSuccess || current is CoursesError,
      builder: (context, state) {
        return state.maybeWhen(
          coursesSuccess: (doctorsList) {
            return setupSuccess(doctorsList);
          },
          coursesError: (errorHandler) => setupError(),
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }

  Widget setupSuccess(doctorsList) {
    return DoctorsListView(
      doctorsList: doctorsList,
    );
  }

  Widget setupError() {
    return const SizedBox.shrink();
  }
}
