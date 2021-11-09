import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zido/generated/l10n.dart';
import 'package:zido/res/gaps.dart';
import 'package:zido/res/m_colors.dart';

class PrivateAuctionBuilder extends StatelessWidget {
  final bool? isPending;

  const PrivateAuctionBuilder({Key? key, this.isPending = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      width: double.infinity,
      height: 120,
      decoration: BoxDecoration(
        color: Colors.blueGrey[50],
        borderRadius: const BorderRadius.all(Radius.circular(8)),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 100,
            height: 120,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8), bottomLeft: Radius.circular(8)),
              child: Image.network(
                "https://www.cnet.com/a/img/CSTqzAl5wJ57HHyASLD-a0vS2O0=/940x528/2021/04/05/9e065d90-51f2-46c5-bd3a-416fd4983c1a/elantra-1080p.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(S.of(context).first_furn),
                Row(
                  children: [
                    const CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://st3.depositphotos.com/1007566/13024/v/950/depositphotos_130240748-stock-illustration-young-man-avatar-character.jpg"),
                    ),
                    Gaps.hGap4,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          S.of(context).AhmedAllam,
                          style: TextStyle(
                              fontSize: 12, color: MColors.colorPrimarySwatch),
                        ),
                        const Text(
                          "@aymanusername",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        )
                      ],
                    ),
                  ],
                ),
                Gaps.vGap15,
                Row(
                  children: [
                    if (isPending!)
                      const Icon(
                        CupertinoIcons.person_2_fill,
                        size: 15,
                        color: Colors.green,
                      ),
                    if (isPending!) Gaps.hGap4,
                    if (isPending!)
                      const Text(
                        "3/8",
                        style: TextStyle(fontSize: 12),
                      ),
                    if (isPending!) Gaps.hGap8,
                    const Icon(
                      CupertinoIcons.alarm,
                      size: 15,
                      color: Colors.green,
                    ),
                    const Text(
                      "00:10:47",
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(
                      width: isPending! ? 35 : 80,
                    ),
                    Container(
                      width: 60,
                      height: 20,
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(4)),
                          color: isPending!
                              ? Colors.green
                              : MColors.colorPrimarySwatch),
                      child: Center(
                          child: Text(
                        isPending! ? S.of(context).pending : S.of(context).join,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 10),
                      )),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
