import 'icons_utils.dart';

class BuildOption {
  final String icon;
  final String name;
  final String route;

  BuildOption({
    required this.icon,
    required this.name,
    required this.route,
  });
}

class MyRoutes {
  static String home = '/';
  static String Workspace = 'Workspace';
  static String contact_into = 'contact_into';
  static String personal_details = 'personal_details';

  static List<BuildOption> buildOptions = [
    BuildOption(
        icon: iconPath + "contact-books.png",
        name: "Contact Into",
        route: "contact_icon"),
    BuildOption(
      icon: iconPath + "briefcase.png",
      name: "Carrier Objective",
      route: "contact_icon",
    ),
    BuildOption(
        icon: iconPath + "user.png",
        name: "Personal Details",
        route: "personal_details"),
    BuildOption(
        icon: iconPath + "mortarboard.png",
        name: "Eduction",
        route: "contact_icon"),
    BuildOption(
        icon: iconPath + "thinking.png",
        name: "Experiences",
        route: "contact_icon"),
    BuildOption(
        icon: iconPath + "experience.png",
        name: "Technical Skills",
        route: "contact_icon"),
    BuildOption(
        icon: iconPath + "open-book.png",
        name: "Interest/Hobbies",
        route: "contact_icon"),
    BuildOption(
        icon: iconPath + "project.png",
        name: "Projects",
        route: "contact_icon"),
    BuildOption(
        icon: iconPath + "experience.png",
        name: "Achievements",
        route: "contact_icon"),
    BuildOption(
        icon: iconPath + "handshake.png",
        name: "References",
        route: "contact_icon"),
    BuildOption(
        icon: iconPath + "declaration.png",
        name: "Declaration",
        route: "contact_icon"),
  ];
}
