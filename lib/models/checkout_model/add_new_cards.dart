class AddNewCardModel {
  String image;
  String title;
  int number;

  AddNewCardModel(
      {required this.image, required this.title, required this.number});
}

List<AddNewCardModel> listAddNewCard = [
  AddNewCardModel(
      image: 'assets/images/add_card.png',
      title: 'Charlote Van Debel',
      number: 45676),
  AddNewCardModel(
      image: 'assets/images/add_card.png',
      title: 'Charlote Van Debel',
      number: 45676),
  AddNewCardModel(
      image: 'assets/images/add_card.png',
      title: 'Charlote Van Debel',
      number: 45676),
];
