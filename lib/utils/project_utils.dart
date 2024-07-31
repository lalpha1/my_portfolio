class ProjectUtils {
  final String image;
  final String title;
  final String subtitle;
  final String? androidLink;
  final String? iosLink;
  final String? webLink;

  ProjectUtils({
    required this.image,
    required this.title,
    required this.subtitle,
    this.androidLink,
    this.iosLink,
    this.webLink,
  });
}

List<ProjectUtils> hobbyProjectUtils = [
  ProjectUtils(
    image: "assets/projects/todo_list.png",
    title: "To-Do List App",
    subtitle:
        "A simple application that allows users to create, read, update, and delete tasks. Users can organize tasks by categories, set deadlines, and receive reminders.",
    androidLink: "#",
  ),
  ProjectUtils(
    image: "assets/projects/fitness_tracker.png",
    title: "Fitness Tracker",
    subtitle:
        "An app that helps users track their physical activities, workouts, and nutrition. It can include features like step counting, calorie tracking, workout routines, and progress charts.",
    androidLink: "#",
    iosLink: "#",
  ),
  ProjectUtils(
      image: "assets/projects/recipe_finder.png",
      title: "Recipe Finder",
      subtitle:
          "An app where users can search for recipes based on ingredients they have at home. It can include features like recipe ratings, cooking time, and dietary preferences.",
      androidLink: "#",
      webLink: "#",
      iosLink: "#")
];

List<ProjectUtils> workProjects = [
  ProjectUtils(
      image: "assets/finane_tracker.png",
      title: "Finance Tracker",
      subtitle:
          "This app helps users manage their personal finances by tracking their income and expenses. It includes features like budget setting, expense categorization, and financial reports.",
      webLink: "#"),
  ProjectUtils(
    image: "assets/projects/travel_planer.png",
    title: "Travel Planner",
    subtitle:
        "An app that assists users in planning their trips by organizing itineraries, booking accommodations, and finding attractions. It can include maps, travel tips, and expense tracking.",
    androidLink: "#",
  )
];
