import 'package:flutter/material.dart';
import 'package:lastproject/size_config.dart';

class otherNews extends StatelessWidget {
  const otherNews({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Expanded(
        flex: 5,
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
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
              ),
            );
          },
          itemCount: 4,
        ));
  }
}
