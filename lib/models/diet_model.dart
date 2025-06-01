class DietModel {
  String name;
  String iconPath;
  String level;
  String duration;
  String calories;
  bool viewToSelected;

  DietModel({
    required this.name,
    required this.iconPath,
    required this.level,
    required this.duration,
    required this.calories,
    required this.viewToSelected,
  });

  static List<DietModel> getDiets() {
    List<DietModel> diets = [];

    diets.add(
      DietModel(
        name: 'Honey pancake',
        iconPath: 'assets/honeypancake.png',
        level: 'Easy',
        duration: '30 mins',
        calories: '180kCal',

        viewToSelected: true,
      ),
    );
    diets.add(
      DietModel(
        name: 'Canai Bread',
        iconPath: 'assets/canaibread.png',
        level: 'Easy',
        duration: '30 mins',
        calories: '180kCal',
        viewToSelected: true,
      ),
    );
    diets.add(
      DietModel(
        name: 'Slice Cake',
        iconPath: 'assets/slicecake.png',
        level: 'Medium',
        duration: '30 mins',
        calories: '360kCal',
        viewToSelected: true,
      ),
    );
    diets.add(
      DietModel(
        name: 'Fresh Salad',
        iconPath: 'assets/saladfresh.png',
        level: 'Hard',
        duration: '45 mins',
        calories: '580kCal',
        viewToSelected: true,
      ),
    );

    return diets;
  }
}
