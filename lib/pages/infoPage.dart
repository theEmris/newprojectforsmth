import 'package:flutter/material.dart';
import 'package:lastproject/models/newsModel.dart';
import 'package:lastproject/size_config.dart';

class InfoPage extends StatefulWidget {
  String? tex;
  NewsModel mymodel;

  InfoPage(
      {Key? key, required String this.tex, required NewsModel this.mymodel})
      : super(key: key);

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    print("bir narsa keldimi");
    debugPrint(widget.tex.toString());
    SizeConfig.init(context);

    return Scaffold(
        body: CustomScrollView(
      slivers: [
        mysliverappbar(context),
        // SliverToBoxAdapter(
        //   child: Container(
        //     height: MediaQuery.of(context).size.height * 0.5,
        //     width: double.infinity,
        //     decoration: BoxDecoration(
        //         borderRadius: BorderRadius.only(
        //             topLeft: Radius.circular(100),
        //             topRight: Radius.circular(100))),
        //     child: Stack(
        //       children: [
        //         Positioned(
        //           child: Container(
        //             height: getHeight(141),
        //             width: getWidht(311),
        //             decoration: BoxDecoration(
        //               color: Color(0xFFF5F5F5),
        //             ),
        //           ),

        //           top: 100,
        //           left: 20,
        //         ),
        //         Positioned(
        //           child: Positioned(
        //               child: Text(
        //                   widget.mymodel.attributes!.description.toString())),
        //         ),
               
        //       ],
        //     ),
        //   ),
        // ),
         SliverToBoxAdapter(
                  child: Container(height: getHeight(141),
                    width: getWidht(311),
                    decoration: BoxDecoration(
                      color: Color(0xFFF5F5F52),
                    ),),
                ),
                SliverToBoxAdapter(
                  child: Container(height: getHeight(141),
                    width: getWidht(311),
                    decoration: BoxDecoration(
                      color: Color(0xFFF5F5F52),
                    ),),
                ),SliverToBoxAdapter(
                  child: Container(height: getHeight(141),
                    width: getWidht(311),
                    decoration: BoxDecoration(
                      color: Color(0xFFF5F5F52),
                    ),),
                ),SliverToBoxAdapter(
                  child: Container(height: getHeight(141),
                    width: getWidht(311),
                    decoration: BoxDecoration(
                      color: Color(0xFFF5F5F52),
                    ),),
                ),
                SliverToBoxAdapter(
                  child: Container(height: getHeight(141),
                    width: getWidht(311),
                    decoration: BoxDecoration(
                      color: Color(0xFFF5F5F52),
                    ),),
                )
      ],
    ));
  }

  SliverAppBar mysliverappbar(BuildContext context) {
    return SliverAppBar(
      flexibleSpace: FlexibleSpaceBar(
          background: Container(
        height: MediaQuery.of(context).size.height * 0.5,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage("http://localhost:1337" +
                    "${widget.mymodel.attributes!.image!.data![0].attributes!.formats!.thumbnail!.url}"),
                fit: BoxFit.cover)),
      )),
      expandedHeight: MediaQuery.of(context).size.height * 0.5,
    );
  }
}
