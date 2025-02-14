class Projects {
  final int id;
  final String name;
  final String description;
  final String image;
  final String url;
  final List<String> technologies;

  Projects({
    required this.id,
    required this.name,
    required this.description,
    required this.technologies,
    this.image = "",
    this.url = "",
  });
}

List<Projects> projectLists = [
  Projects(
    id: 1,
    name: "Travel App Application",
    description:
        "This project is simple Travel application that i following from BuildWithAngga",
    technologies: [
      "Flutter: 3.27.1",
      "Java version: 7.0.12",
      "Isar version: ^3.1.0+1",
      "Provider version: ^6.1.2",
      "Shared Preferences version: ^2.3.2",
    ],
    image: "icon_plane.png",
    url: "https://github.com/AsakaLynux/travel_application",
  ),
  Projects(
    id: 2,
    name: "Progate Project Assessment",
    description: "This project is assesstment for complete Progate course",
    technologies: [
      "HTML",
      "Java",
      "CSS",
      "jquery: 3.6.0",
    ],
    url: "https://github.com/AsakaLynux/Progate",
    image: "projects/progate.png",
  ),
  Projects(
    id: 3,
    name: "Three JS college project",
    description: "This project is one of three js college assesment",
    technologies: ["HTML", "Three JS"],
    url: "https://github.com/AsakaLynux/LAB-ComGraph",
    image: "projects/three-js-icon.png",
  ),
  Projects(
    id: 4,
    name: "Me Time Application",
    description:
        "This project is simple application to give recommendation base on input user like duration (1 hour, 30 minutes, 1 hour 30 minutes. etc), location (At home, online, anywhere), and person (1 person, 2 persons, 3 persons, etc)",
    technologies: [
      "Flutter: 3.27.1",
      "Java version: 7.0.12",
    ],
    url: "https://github.com/AsakaLynux/me_time",
    image: "projects/metime_logo.png",
  ),
  Projects(
    id: 5,
    name: "DnD Map",
    description:
        "This project is simple map project for support DnD with friends, this is a map that player can use to explore the story, player can drag the player token and move to targer area to move to another map.",
    technologies: [
      "Flutter: 3.27.1",
      "Java version: 7.0.12",
    ],
    url: "https://github.com/AsakaLynux/dndMap",
    image: "projects/dnd.png",
  )
];
