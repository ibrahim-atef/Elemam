import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:webinar/app/widgets/groups_widget/groups_widget.dart';
import 'package:webinar/common/components.dart';
import 'package:webinar/common/utils/app_text.dart';
import 'package:webinar/config/colors.dart';

class GroupsPage extends StatefulWidget {
  const GroupsPage({super.key});
  static const String pageName = '/groups-page';
  @override
  State<GroupsPage> createState() => _GroupsPageState();
}

class _GroupsPageState extends State<GroupsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(title: "Groups"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GroupsWidget.telegramGroups(),
             Divider(color: white(),),
            GroupsWidget.faceBookGroups(),
            Divider(color: white(),),
            GroupsWidget.youtubeGroups(),
            Divider(color: white(),),
            GroupsWidget.instagramGroups(),
            Divider(color: white(),),
            GroupsWidget.tiktokGroups(),
          ],
        ),
      ),
    );
  }
}
