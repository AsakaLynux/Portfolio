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
];
