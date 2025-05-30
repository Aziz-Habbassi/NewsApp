import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:news_app/services/app_state.dart';
import 'package:news_app/services/getnews.dart';
import 'package:news_app/widgets/newstile.dart';
import 'package:provider/provider.dart';

class NewstileList extends StatelessWidget {
  const NewstileList({super.key});

  @override
  Widget build(BuildContext context) {
    final categorie = context.watch<AppState>().categorie;
    return FutureBuilder(
      future: Getnews().getnews(categorie),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return SliverList.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              return Newstile(articleModel: snapshot.data![index]);
            },
          );
        } else {
          return SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 250),
              child: SpinKitCubeGrid(color: Colors.orange, size: 100),
            ),
          );
        }
      },
    );
  }
}
