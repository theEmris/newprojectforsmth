import 'package:flutter/material.dart';
import 'package:lastproject/constants/const/color_const.dart';
import 'package:lastproject/pages/searchPage/searchPage.dart';
import 'package:lastproject/size_config.dart';

class myAppBar extends StatelessWidget {
  const myAppBar({Key? key}) : super(key: key);

  @override
  PreferredSizeWidget build(BuildContext context) {
    SizeConfig.init(context);
    return AppBar(
        backgroundColor: ColorConst.colorConst,
        elevation: 0,
        actions: [
          Container(
            height: 40,
            width: 40,
            child: Image.asset("assets/notify.png"),
          )
        ],
        title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: getHeight(43),
              width: MediaQuery.of(context).size.width * 0.8,
              child: InkWell(
                onTap: () {
                Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SearchPage()));
                },
                child: TextFormField(
                    enabled: false,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        hintText: "smth has happened",
                        suffixIcon: Icon(Icons.search))),
              ),
            )));
  }
}
