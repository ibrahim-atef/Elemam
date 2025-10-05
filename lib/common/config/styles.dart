import 'package:flutter/material.dart';
import 'package:webinar/app/providers/theme_provider.dart';
import 'package:webinar/common/data/app_language.dart';
import 'package:webinar/common/config/colors.dart';
import 'package:webinar/locator.dart';

TextStyle style48Bold() {
  return TextStyle(
      fontFamily:
          !locator<AppLanguage>().isRtl() ? 'Kufam-Regular' : 'Kufam-Regular',
      color: white(),
      fontSize: 48);
}

TextStyle style24Bold() => style48Bold().copyWith(fontSize: 24);
TextStyle style22Bold() => style48Bold().copyWith(fontSize: 22);
TextStyle style20Bold() => style48Bold().copyWith(fontSize: 20);
TextStyle style16Bold() => style48Bold().copyWith(fontSize: 16);
TextStyle style14Bold() => style48Bold().copyWith(fontSize: 14);
TextStyle style12Bold() => style48Bold().copyWith(fontSize: 12);

TextStyle style16Regular() {
  return TextStyle(
      fontFamily:
          !locator<AppLanguage>().isRtl() ? 'Kufam-Regular' : 'Kufam-Regular',
      color: white(),
      fontSize: 16);
}

TextStyle style16RegularKufam() {
  return TextStyle(
      fontFamily:
          !locator<AppLanguage>().isRtl() ? 'Kufam-Regular' : 'Kufam-Regular',
      color: white(),
      fontSize: 16);
}

TextStyle style16RegularSora() {
  return TextStyle(
      fontFamily:
          !locator<AppLanguage>().isRtl() ? 'Sora-Regular' : 'Sora-Regular',
      color: white(),
      fontSize: 16);
}

TextStyle style14Regular() => style16RegularKufam().copyWith(fontSize: 14);
TextStyle style14RegularKufam() => style16RegularKufam().copyWith(fontSize: 14);
TextStyle style14RegularSora() => style16RegularSora().copyWith(fontSize: 14);
TextStyle style12Regular() => style16RegularKufam().copyWith(fontSize: 12);
TextStyle style10Regular() => style16RegularKufam().copyWith(fontSize: 10);
TextStyle style10RegularKufam() => style16RegularKufam().copyWith(fontSize: 10);
