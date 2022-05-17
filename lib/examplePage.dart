import 'package:flutter/material.dart';
import 'package:lastproject/models/newsModel.dart';
import 'package:lastproject/service/newsService.dart';

class ExamplePage extends StatelessWidget {
  const ExamplePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
        ),
        body: FutureBuilder(
          future: NewsService.getNews(),
          builder: (context, AsyncSnapshot<List<NewsModel>> snap) {
            if (!snap.hasData) {
              return CircularProgressIndicator.adaptive();
            } else if (snap.hasError) {
              return Text("XATO");
            } else {
              var data = snap.data;
              return ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                    
                      backgroundImage:  NetworkImage(
                          "http://localhost:1337" + "${data![index].attributes!.image!.data![0].attributes!.formats!.thumbnail!.url}"),
                    ),
                    title: Text("${data[index].attributes!.about}"),
                    subtitle: Text("${data[index].attributes!.description}"),
                    onTap: () async {},
                  );
                },
                itemCount: data!.length,
              );
            }
          },
        ));
  }
}
