import 'package:flutter/material.dart';

class Newstile extends StatelessWidget {
  const Newstile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10, top: 20),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(10),
            child: Image.asset("assets/images/sports.jpg"),
          ),
          Text(
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            "i want to use custom scrollview with sliverLIst on it what is the difference between sliver with delegate sliverChildBuilderDelegate and sliverlist.builder",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: Colors.black,
            ),
          ),
          Text(
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            "i want to use custom scrollview with sliverLIst on it what is the difference between sliver with delegate sliverChild Builde rDelegate and sliverlist.builder",
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
