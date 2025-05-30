import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class Newstile extends StatelessWidget {
  const Newstile({super.key, required this.articleModel});
  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10, top: 20),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(10),
            child: articleModel.image == null
                ? Image.asset("assets/images/noData.jpg")
                : Image.network(articleModel.image!),
          ),
          Text(
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            articleModel.title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: Colors.black,
            ),
          ),
          Text(
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            articleModel.description == null
                ? "No description"
                : articleModel.description!,
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
