class SignTopic {
  String title, image, description;
  double rating;
  Category category;

  SignTopic(
      this.title, this.image, this.description, this.rating, this.category);
}

class Sign {
  String text, image;
  Sign(this.text, this.image);
}

class Category {
  String name;
  List<Sign> signs;
  Category(this.name, this.signs);
}
