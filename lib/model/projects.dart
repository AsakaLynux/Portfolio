class Projects {
  final String name;
  final String description;
  final String image;

  Projects({
    required this.name,
    required this.description,
    this.image = "",
  });
}

List<Projects> projectLists = [
  Projects(name: "Travel App Application", description: "lirum"),
  Projects(name: "Me Time", description: "lirum"),
  Projects(name: "Book Store", description: "lirum"),
];
