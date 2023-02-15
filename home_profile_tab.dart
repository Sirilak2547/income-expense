import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:phixlab_money/utils/constants.dart';
import 'package:phixlab_money/widget/profile_account_info_tile.dart';
import 'package:phixlab_money/data/userInfo.dart';

class HomeProfileTab extends StatelessWidget {
  const HomeProfileTab({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: background,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: defaultSpacing),
      )
    ],
  ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: defaultSpacing,
        ),
        Expanded(
          flex: 1,
          child: Center(
            child: Column(
              children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(defaultRadius)),
              child: Icon(Icons.person, size: 100,),
            ),
            const SizedBox(
              height: defaultSpacing / 3),
            Text(
              "${userdata.name}",
              style: Theme.of(context).textTheme.subtitle1?.copyWith(fontWeight: FontWeight.w700, color: fontHeading),
            ),
            const SizedBox(
              height: defaultSpacing
            ),
          ],
        ),
      ),
    ),
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: defaultSpacing),
                child: Text(
                "ข้อมูลทั่วไป",
                style:  Theme.of(context)
                .textTheme
                .subtitle1?.copyWith(fontWeight: FontWeight.w700, color: fontHeading),
            ),
              ),
          const SizedBox(height: defaultSpacing,),
          const GeneralAccountInfoTile(
            title: "ชื่อจริง",
            subtitle: "ศิริลักษณ์ สุธรรมวงค์",
            imageUrl: "assets/images/person.png",),
          ],
        ),
    )
      ],
      )),
    );
  }
}


class ProfileAccountInfoTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageUrl;

  const ProfileAccountInfoTile(
    {Key? key, required this.title, required this.subtitle, required String this.imageUrl, required String heading})
    : super (key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
    leading: Padding(
      padding: const EdgeInsets.only(left: defaultSpacing, top: defaultSpacing / 2),
      child: Image.asset(imageUrl),
    ),
    title: Text(
      title,
      style: Theme.of(context)
      .textTheme
      .subtitle2
      ?.copyWith(color: fontHeading),
    ),
    subtitle: Text(
      subtitle,
      style: Theme.of(context)
      .textTheme
      .bodyText2
      ?.copyWith(color: fontSubHeading),
    ),
    );
  }
}

