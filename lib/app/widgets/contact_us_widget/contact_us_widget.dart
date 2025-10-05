import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webinar/common/utils/app_text.dart';
import 'package:webinar/common/config/colors.dart';
import 'package:webinar/common/config/styles.dart';

class ContactUsWidget {
  static Widget offlineSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            ' - ${appText.attendanceAtCenter}',
            style: style20Bold().copyWith(color: white()),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            ' - ${appText.detailedExplanation}',
            style: style20Bold().copyWith(color: white()),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            ' - ${appText.notesLessonsAndReview}',
            style: style20Bold().copyWith(color: white()),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            ' - ${appText.questionBank}',
            style: style20Bold().copyWith(color: white()),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Icon(Icons.phone),
              Text(
                "${appText.booking}: ",
                style: style20Bold().copyWith(color: white()),
              ),
              Text(
                "01222912524",
                style: style20Bold().copyWith(color: white()),
              ),

              const SizedBox(width: 10),
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.whatsapp,
                    color: Colors.green),
                onPressed: () async {
                  final phone =
                      '01222912524'; // رقم الهاتف مع رمز الدولة بدون +
                  final url = Uri.parse('https://wa.me/$phone');
                  if (await canLaunchUrl(url)) {
                    await launchUrl(url, mode: LaunchMode.externalApplication);
                  } else {
                    // يمكنك عرض رسالة خطأ هنا
                  }
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  static Widget onlineSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            ' - ${appText.youtubePlatformExplanation}',
            style: style20Bold().copyWith(color: white()),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            ' - ${appText.continuousFollowUpAndExams}',
            style: style20Bold().copyWith(color: white()),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            ' - ${appText.watchVideoAnytimeMultipleTimes}',
            style: style20Bold().copyWith(color: white()),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            ' - ${appText.periodicOnlineExams}',
            style: style20Bold().copyWith(color: white()),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // const Icon(Icons.phone),
              Text(
                "${appText.booking}: ",
                style: style20Bold().copyWith(color: white()),
              ),
              Text(
                "01016317083",
                style: style20Bold().copyWith(color: white()),
              ),

              const SizedBox(width: 10),
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.whatsapp,
                    color: Colors.green),
                onPressed: () async {
                  final phone =
                      '201016317083'; // رقم الهاتف مع رمز الدولة بدون +
                  final url = Uri.parse('https://wa.me/$phone');
                  if (await canLaunchUrl(url)) {
                    await launchUrl(url, mode: LaunchMode.externalApplication);
                  } else {
                    // يمكنك عرض رسالة خطأ هنا
                  }
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  static Widget notesSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            ' - ${appText.detailedCurriculumExplanation}',
            style: style20Bold().copyWith(color: white()),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            ' - ${appText.finalReviewNotes}',
            style: style20Bold().copyWith(color: white()),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            ' - ${appText.examNightNotes}',
            style: style20Bold().copyWith(color: white()),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            ' - ${appText.questionBank}',
            style: style20Bold().copyWith(color: white()),
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            " ${appText.orderNotesContact}: 01555067049",
            maxLines: 2,
            style: style20Bold().copyWith(
              color: white(),
            ),
          ),
          const SizedBox(width: 10),
          IconButton(
            icon: const FaIcon(FontAwesomeIcons.whatsapp, color: Colors.green),
            onPressed: () async {
              final phone = '01555067049'; // رقم الهاتف مع رمز الدولة بدون +
              final url = Uri.parse('https://wa.me/$phone');
              if (await canLaunchUrl(url)) {
                await launchUrl(url, mode: LaunchMode.externalApplication);
              } else {
                // يمكنك عرض رسالة خطأ هنا
              }
            },
          ),
        ],
      ),
    );
  }
}
