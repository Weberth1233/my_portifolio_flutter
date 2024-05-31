import 'package:flutter/material.dart';
import 'package:my_portifolio/src/widgets/contact/widget_contact.dart';
import 'package:my_portifolio/src/widgets/experience/widget_experience.dart';
import 'package:my_portifolio/src/widgets/global_scaffold.dart';
import 'package:my_portifolio/src/widgets/projects/widget_projects.dart';
import 'package:my_portifolio/src/widgets/works/widget_works.dart';
import 'package:my_portifolio/src/widgets/home/widget_home.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GlobalScaffold(
      controller: _scrollController,
      keyHome: keyHome,
      keyExperience: keyExperience,
      keyProjects: keyProjects,
      keyWorks: keyWorks,
      keyContact: keyContact,
      body: SafeArea(
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 90),
                child: Center(
                  child: Home(
                    key: keyHome,
                    keyContact: keyContact,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 90),
                child: Experience(
                  key: keyExperience,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 90),
                child: Projects(
                  key: keyProjects,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 90),
                child: Works(
                  key: keyWorks,
                ),
              ),
              Contact(
                key: keyContact,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

final keyHome = GlobalKey();
final keyExperience = GlobalKey();
final keyProjects = GlobalKey();
final keyWorks = GlobalKey();
final keyContact = GlobalKey();

final List<GlobalKey> keys = [
  keyHome,
  keyExperience,
  keyProjects,
  keyWorks,
  keyContact
];
final ScrollController _scrollController = ScrollController();
