class Clothes {
  String title;
  String subtitle;
  String price;
  String imgUrl;
  List<String> detailUrl;

  Clothes(this.title, this.subtitle, this.price, this.imgUrl, this.detailUrl);

  static List<Clothes> generateClothes() {
    return [
      Clothes(
          "Gucci Oversize",
          "Hoodie",
          "\$79.90",
          "assets/images/arrival1.png",
          ["assets/images/arrival1.png", "assets/images/detail2.png"]),
      Clothes(
          "Man Coat",
          "Rain Jacket",
          "\$39.90",
          "assets/images/arrival2.png",
          ["assets/images/arrival2.png", "assets/images/detail3.png"]),
    ];
  }
}
