// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webinar/app/models/group_model.dart';
import 'package:webinar/common/utils/app_text.dart';
import 'package:webinar/common/config/colors.dart';
import 'package:webinar/common/config/styles.dart';

class GroupsWidget {
  static List<GroupModel> telegramGroupsList = [
    GroupModel(
        name: appText.graduationGroup, url: "https://t.me/+UAj7aSSdwAdA4ZLG"),
    GroupModel(
        name: appText.firstClassGroup, url: "https://t.me/+O4YatuLCWjg5MTdk"),
    GroupModel(name: appText.firstClassChannel, url: "https://t.me/elemam1law"),
    GroupModel(
        name: appText.secondClassGroup, url: "https://t.me/+lCkD-Rs9swY4MWY0"),
    GroupModel(
        name: appText.secondClassChannel,
        url: "https://t.me/elemamacademy1law"),
    GroupModel(
        name: appText.thirdClassGroup, url: "https://t.me/+EbvcjW7Xuak5MTlk"),
    GroupModel(
        name: appText.thirdClassChannel, url: "https://t.me/elemamacademy2law"),
    GroupModel(
        name: appText.fourthClassGroup, url: "https://t.me/+DUcOsDE77RkwMGY0"),
    GroupModel(
        name: appText.fourthClassChannel,
        url: "https://t.me/elemamacademy3law"),
    GroupModel(
        name: appText.judicialAssistantsInstitute,
        url: "https://t.me/+DLvng3DCwfBhZGM0"),
  ];

  static List<GroupModel> facebookGroupsList = [
    GroupModel(
        name: appText.facebookGroups,
        url: "https://www.facebook.com/share/g/18xM7Ui6Hi/"),
  ];

  static List<GroupModel> youtubeGroupsList = [
    GroupModel(
        name: appText.youtubeGroups,
        url: "https://youtube.com/@dr.elemam?si=3BJffW5BezX9TxzQ"),
  ];
  static List<GroupModel> instagramGroupsList = [
    GroupModel(
        name: appText.instagram, url: "https://www.instagram.com/dr.elemam/"),
  ];

  static List<GroupModel> tiktokGroupsList = [
    GroupModel(
        name: appText.tiktok,
        url:
            "https://www.tiktok.com/@dr_m_elemam?is_from_webapp=1&sender_device=pc"),
  ];

  static Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  static Widget telegramGroups() {
    return ExpansionTile(
      collapsedIconColor: white(),
      collapsedTextColor: white(),
      title: Text(appText.telegramGroups,
          style: style16Bold().copyWith(color: white())),
      children: [
        SizedBox(
          height: 500,
          child: ListView.builder(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            itemCount: telegramGroupsList.length,
            itemBuilder: (context, index) {
              final group = telegramGroupsList[index];
              return ListTile(
                title: Text(
                  group.name,
                  style: style16Bold().copyWith(color: white()),
                ),
                trailing: const Icon(Icons.arrow_forward_ios_rounded),
                onTap: () {
                  _launchURL(group.url);
                },
              );
            },
          ),
        )
      ],
    );
  }

  static Widget faceBookGroups() {
    return ExpansionTile(
      collapsedIconColor: white(),
      collapsedTextColor: white(),
      title: Text(
        appText.facebookGroups,
        style: style16Bold().copyWith(color: white()),
      ),
      children: [
        SizedBox(
          height: 80,
          child: ListView.builder(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            itemCount: facebookGroupsList.length,
            itemBuilder: (context, index) {
              final group = facebookGroupsList[index];
              return ListTile(
                title: Text(
                  group.name,
                  style: style16Bold().copyWith(color: white()),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: white(),
                ),
                onTap: () {
                  _launchURL(group.url);
                },
              );
            },
          ),
        )
      ],
    );
  }

  static Widget youtubeGroups() {
    return ExpansionTile(
      collapsedIconColor: white(),
      collapsedTextColor: white(),
      title: Text(
        appText.youtubeGroups,
        style: style16Bold().copyWith(color: white()),
      ),
      children: [
        SizedBox(
          height: 80,
          child: ListView.builder(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            itemCount: youtubeGroupsList.length,
            itemBuilder: (context, index) {
              final group = youtubeGroupsList[index];
              return ListTile(
                title: Text(
                  group.name,
                  style: style16Bold().copyWith(color: white()),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: white(),
                ),
                onTap: () {
                  _launchURL(group.url);
                },
              );
            },
          ),
        )
      ],
    );
  }

  static Widget instagramGroups() {
    return ExpansionTile(
      collapsedIconColor: white(),
      collapsedTextColor: white(),
      title: Text(
        appText.instagram,
        style: style16Bold().copyWith(color: white()),
      ),
      children: [
        SizedBox(
          height: 80,
          child: ListView.builder(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            itemCount: instagramGroupsList.length,
            itemBuilder: (context, index) {
              final group = instagramGroupsList[index];
              return ListTile(
                title: Text(
                  group.name,
                  style: style16Bold().copyWith(color: white()),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: white(),
                ),
                onTap: () {
                  _launchURL(group.url);
                },
              );
            },
          ),
        )
      ],
    );
  }

  static Widget tiktokGroups() {
    return ExpansionTile(
      collapsedIconColor: white(),
      collapsedTextColor: white(),
      title: Text(
        appText.tiktok,
        style: style16Bold().copyWith(color: white()),
      ),
      children: [
        SizedBox(
          height: 80,
          child: ListView.builder(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            itemCount: tiktokGroupsList.length,
            itemBuilder: (context, index) {
              final group = tiktokGroupsList[index];
              return ListTile(
                title: Text(
                  group.name,
                  style: style16Bold().copyWith(color: white()),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: white(),
                ),
                onTap: () {
                  _launchURL(group.url);
                },
              );
            },
          ),
        )
      ],
    );
  }
}
