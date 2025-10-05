import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webinar/app/models/user_model.dart';
import 'package:webinar/app/pages/main_page/providers_page/providers_filter.dart';
import 'package:webinar/app/pages/main_page/providers_page/user_profile_page/user_profile_page.dart';
import 'package:webinar/app/providers/app_language_provider.dart';
import 'package:webinar/app/providers/providers_provider.dart';
import 'package:webinar/app/services/guest_service/providers_service.dart';
import 'package:webinar/app/widgets/contact_us_widget/contact_us_widget.dart';
import 'package:webinar/common/components.dart';
import 'package:webinar/common/common.dart';
import 'package:webinar/common/shimmer_component.dart';
import 'package:webinar/common/utils/app_text.dart';
import 'package:webinar/common/config/assets.dart';
import 'package:webinar/locator.dart';

import '../../../../common/utils/object_instance.dart';
import '../../../../common/utils/tablet_detector.dart';

class ContactUsPage extends StatefulWidget {
  const ContactUsPage({super.key});
  static const String pageName = '/contact-us';
  @override
  State<ContactUsPage> createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  int currentTab = 1;

  List<UserModel> instructorsData = [];
  List<UserModel> organizationsData = [];
  List<UserModel> consultantsData = [];

  bool isLoading = true;

  @override
  void initState() {
    super.initState();

    tabController = TabController(length: 3, vsync: this);

    locator<ProvidersProvider>().clearFilter();

    getInstructors();
    getOrganizations();
    getConsultants();
  }

  onChangeTab(int i) {
    setState(() {
      currentTab = i;
    });
  }

  getInstructors() async {
    setState(() {
      isLoading = true;
    });

    instructorsData = await ProvidersService.getInstructors(
        availableForMeetings: locator<ProvidersProvider>().availableForMeeting,
        freeMeetings: locator<ProvidersProvider>().free,
        discount: locator<ProvidersProvider>().discount,
        downloadable: locator<ProvidersProvider>().downloadable,
        sort: locator<ProvidersProvider>().sort,
        categories: locator<ProvidersProvider>().categorySelected);

    setState(() {
      isLoading = false;
    });
  }

  getOrganizations() async {
    setState(() {
      isLoading = true;
    });

    organizationsData = await ProvidersService.getOrganizations(
        availableForMeetings: locator<ProvidersProvider>().availableForMeeting,
        freeMeetings: locator<ProvidersProvider>().free,
        discount: locator<ProvidersProvider>().discount,
        downloadable: locator<ProvidersProvider>().downloadable,
        sort: locator<ProvidersProvider>().sort,
        categories: locator<ProvidersProvider>().categorySelected);

    setState(() {
      isLoading = false;
    });
  }

  getConsultants() async {
    setState(() {
      isLoading = true;
    });

    consultantsData = await ProvidersService.getConsultations(
        availableForMeetings: locator<ProvidersProvider>().availableForMeeting,
        freeMeetings: locator<ProvidersProvider>().free,
        discount: locator<ProvidersProvider>().discount,
        downloadable: locator<ProvidersProvider>().downloadable,
        sort: locator<ProvidersProvider>().sort,
        categories: locator<ProvidersProvider>().categorySelected);

    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<AppLanguageProvider>(
        builder: (context, appLanguageProvider, _) {
      return directionality(
        child: Scaffold(
          appBar: appbar(
              title: appText.contactUs,
              leftIcon: AppAssets.menuSvg,
              // onTapLeftIcon: () {
              //   drawerController.showDrawer();
              // },
              rightWidth: 22),
          body: NestedScrollView(
              physics: const BouncingScrollPhysics(),
              headerSliverBuilder: (context, innerBoxIsScrolled) {
                return [
                  SliverAppBar(
                    pinned: true,
                    centerTitle: true,
                    automaticallyImplyLeading: false,
                    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                    shadowColor: Theme.of(context)
                        .scaffoldBackgroundColor
                        .withOpacity(.2),
                    elevation: 10,
                    titleSpacing: 0,
                    title: tabBar(onChangeTab, tabController, [
                      Tab(
                        text: appText.offline,
                        height: 32,
                      ),
                      Tab(
                        text: appText.online2,
                        height: 32,
                      ),
                      Tab(
                        text: appText.notes,
                        height: 32,
                      ),
                    ]),
                  )
                ];
              },
              body: TabBarView(
                  physics: const BouncingScrollPhysics(),
                  controller: tabController,
                  children: [
                    ContactUsWidget.offlineSection(),
                    ContactUsWidget.onlineSection(),
                    ContactUsWidget.notesSection(),
                  ])),
        ),
      );
    });
  }

  Widget instructorsPage() {
    return Column(
      children: [],
    );
  }
}
