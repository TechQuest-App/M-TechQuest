import 'package:flutter/material.dart';
import 'package:techquest/features/home_screen/data/models/courses_response_model.dart';
import 'package:techquest/features/home_screen/ui/courses/courses_list_view_item.dart';


class DoctorsListView extends StatelessWidget {
  final List<CourseData?>? doctorsList;
  const DoctorsListView({super.key, this.doctorsList});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: doctorsList?.length,
        itemBuilder: (context, index) {
          return DoctorsListViewItem(
            coursesModel: doctorsList?[index],
          );
        },
      ),
    );
  }
}
