import 'package:flutter/material.dart';
import 'package:lastproject/constants/const/color_const.dart';
import 'package:lastproject/models/newsModel.dart';
import 'package:lastproject/pages/infoPage.dart';
import 'package:lastproject/pages/widget_/latestNews.dart';
import 'package:lastproject/pages/widget_/tabbar.dart';
import 'package:lastproject/service/newsService.dart';
import 'package:lastproject/size_config.dart';
import 'package:lastproject/widgets/app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: ColorConst.colorConst,
      appBar: myAppBar().build(context),
      body: Column(
        children: [
          latestNewstext(),
          Expanded(
              flex: 3,
              child: FutureBuilder(
                future: NewsService.getNews(),
                builder: (context, AsyncSnapshot<List<NewsModel>> snap) {
                  if (!snap.hasData) {
                    return CircularProgressIndicator.adaptive();
                  } else if (snap.hasError) {
                    return Text("XATO");
                  } else {
                    var data = snap.data;
                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return InkWell(
                          child: Container(
                            height: getHeight(240),
                            width: getWidht(361),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                                image: DecorationImage(
                                    image: NetworkImage(
                                      "http://localhost:1337" +
                                          "${data![index].attributes!.image!.data![0].attributes!.formats!.thumbnail!.url}",
                                    ),
                                    fit: BoxFit.cover)),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        InfoPage(tex: "alhamdulillah",mymodel: snap.data![index],)));
                          },
                        );
                      },
                      itemCount: data!.length,
                    );
                  }
                },
              )),
          tabbar(),
          otherNEws()
        ],
      ),
    );
  }

  Expanded otherNEws() {
    return Expanded(
        flex: 3,
        child: FutureBuilder(
          future: NewsService.getNews(),
          builder: (context, AsyncSnapshot<List<NewsModel>> snap) {
            if (!snap.hasData) {
              return CircularProgressIndicator.adaptive();
            } else if (snap.hasError) {
              return Text("XATO");
            } else {
              var data = snap.data;
              return ListView.builder(
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Container(
                    height: getHeight(240),
                    width: getWidht(361),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        image: DecorationImage(
                            image: NetworkImage(
                              "http://localhost:1337" +
                                  "${data![index].attributes!.image!.data![0].attributes!.formats!.thumbnail!.url}",
                            ),
                            fit: BoxFit.cover)),
                  );
                },
                itemCount: data!.length,
              );
            }
          },
        ));
  }

  // ListTile exampleListTile(List, int index?<NewsModel> data, int index) {
  Container newsContainer(String networkImage) {
    return Container(
      height: getHeight(240),
      width: getWidht(361),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          image: DecorationImage(
              image: NetworkImage(
                "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg",
              ),
              fit: BoxFit.cover)),
    );
  }
}
