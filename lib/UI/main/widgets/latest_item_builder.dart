import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zido/generated/l10n.dart';
import 'package:zido/res/gaps.dart';
import 'package:zido/res/m_colors.dart';

class LatestItemBuilder extends StatelessWidget {
  const LatestItemBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 290,
      width: double.infinity,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) => Container(
            margin: EdgeInsets.all(10),
            width: 180,
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius:
                BorderRadius.all(Radius.circular(4))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Stack(
                    alignment: AlignmentDirectional.topEnd,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 160,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.all(
                                Radius.circular(4))),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius:
                              BorderRadius.only(
                                  topLeft:Radius.circular(4),
                                  topRight:Radius.circular(4),
                              ),
                              child: Image.network(
                                "https://www.cnet.com/a/img/CSTqzAl5wJ57HHyASLD-a0vS2O0=/940x528/2021/04/05/9e065d90-51f2-46c5-bd3a-416fd4983c1a/elantra-1080p.jpg",
                                fit: BoxFit.cover,
                                height: 130,
                                width: double.infinity,
                              ),
                            ),
                            Gaps.vGap4,
                            Text(
                              "36:21:36",
                              style: TextStyle(
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(3),
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                                Radius.circular(4))),
                        child: Icon(
                          CupertinoIcons.heart,
                          size: 18,
                          color: Colors.green,
                        ),
                      )
                    ],
                  ),
                  Gaps.vGap4,
                  Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    children: [
                      Row(
                        children:  [
                          Text(
                            "120,000",
                            style: TextStyle(
                                fontWeight:
                                FontWeight.bold),
                          ),
                          Text(
                            S.of(context).sar,
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      ),
                      Text(
                        S.of(context).first_furn,
                        style: TextStyle(fontSize: 12),
                      ),
                      Text(
                        S.of(context).first_furn,
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 80,
                        height: 20,
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.circular(4)),
                            border: Border.all(
                                color: MColors.colorPrimarySwatch)),
                        child: Center(
                            child: Text(
                              S.of(context).havar,
                              style: TextStyle(
                                  color: MColors.colorPrimarySwatch,
                                  fontSize: 10),
                            )),
                      ),
                      Gaps.hGap4,
                      Container(
                        width: 60,
                        height: 20,
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.circular(4)),
                            border: Border.all(
                                color: Colors.green)),
                        child: Center(
                            child: Text(
                              S.of(context).used,
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 10),
                            )),
                      )
                    ],
                  )
                ],
              ),
            ),
          )),
    );
  }
}
