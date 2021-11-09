import 'package:flutter/material.dart';
import 'package:zido/generated/l10n.dart';
import 'package:zido/res/gaps.dart';

class LatestPostsBuilder extends StatelessWidget {
  const LatestPostsBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 150,
      width: double.infinity,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) => Container(
            width: 300,
            height: 150,
            margin: const EdgeInsets.all( 12),
            decoration: const BoxDecoration(
                borderRadius:
                BorderRadius.all(Radius.circular(8)),
                color: Colors.green),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius:
                  BorderRadius.all(Radius.circular(8)),
                  child: Image.network(
                    "https://cdn.vox-cdn.com/thumbor/IneeXFCJM7YjxGrqgg5zJBmblHA=/0x0:3809x2857/1200x800/filters:focal(1601x1125:2209x1733)/cdn.vox-cdn.com/uploads/chorus_image/image/66274935/Workshop_0919-HS-40Something_Ask-studio_TommyCorner-1.0.0.jpg",
                    // color: const Color.fromRGBO(
                    //     255, 255, 255, 0.5),
                    // colorBlendMode: BlendMode.dstATop,
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  top: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          S.of(context).first_furn,
                          style:const  TextStyle(
                              color: Colors.white,
                              fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    color: Colors.black38,
                    width: 300,
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const  CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://st3.depositphotos.com/1007566/13024/v/950/depositphotos_130240748-stock-illustration-young-man-avatar-character.jpg"),
                        ),
                        Gaps.hGap4,
                        Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children:  [
                            Text(
                              S.of(context).AhmedAllam,
                              style: TextStyle(
                                  color: Colors.white),
                            ),
                            Text(
                              "@aymanusername",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
