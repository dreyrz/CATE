import 'package:cate/core/utils/images.dart';

class Cat {
  final String name;
  final String description;
  final String temperament;
  final String origin;
  final String lifeSpan;

  final int adaptability;
  final int affectionLevel;
  final int childFriendly;
  final int grooming;
  final int intelligence;
  final int healthIssues;
  final int socialNeeds;
  final int strangerFriendly;

  final String imageUrl;

  const Cat(
      {required this.name,
      required this.description,
      required this.temperament,
      required this.origin,
      required this.lifeSpan,
      required this.adaptability,
      required this.affectionLevel,
      required this.childFriendly,
      required this.grooming,
      required this.intelligence,
      required this.healthIssues,
      required this.socialNeeds,
      required this.strangerFriendly,
      required this.imageUrl});

  Cat.fromMap(Map<String, dynamic> map)
      : name = map["name"] ?? "Unknown name",
        description = map["description"] ?? "Unknown description",
        temperament = map["temperament"] ?? "Unknown temperament",
        origin = map["origin"] ?? "Unknown origin",
        lifeSpan = map["life_span"] ?? "Unknown life_span",
        adaptability = map["adaptability"] ?? -1,
        affectionLevel = map["affection_level"] ?? -1,
        childFriendly = map["child_friendly"] ?? -1,
        grooming = map["grooming"] ?? -1,
        intelligence = map["intelligence"] ?? -1,
        healthIssues = map["health_issues"] ?? -1,
        socialNeeds = map["social_needs"] ?? -1,
        strangerFriendly = map["stranger_friendly"] ?? -1,
        imageUrl = map["image"] == null
            ? Images.misteryCat
            : map["image"]["url"] ?? Images.misteryCat;

  @override
  String toString() {
    return """Cat name $name description $description temperament $temperament
    origin $origin lifeSpan $lifeSpan adaptability $adaptability
    affectionLevel $affectionLevel childFriendly $childFriendly
    grooming $grooming intelligence $intelligence healthIssues $healthIssues
    socialNeeds $socialNeeds strangerFriendly $strangerFriendly
    imageUrl $imageUrl """;
  }
}
