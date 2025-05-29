import 'package:flutter/material.dart';
import 'package:news_app/widgets/newstile.dart';

class NewstileList extends StatelessWidget {
  const NewstileList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Newstile();
      },
    );
  }
}
