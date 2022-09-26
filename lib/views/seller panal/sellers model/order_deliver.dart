class OrderDeliveredModel {
  String image;
  String title;
  String noofproducts;
  String price;
  String date;
  String location;
  String status;
  OrderDeliveredModel(
      {required this.image,
      required this.title,
      required this.noofproducts,
      required this.price,
      required this.date,
      required this.location,
      required this.status});
}

List<OrderDeliveredModel> listoforderdelivered = [
  OrderDeliveredModel(
    image: 'assets/images/Product1.png',
    title: 'Waleed Azhar',
    location: ", Sadiqabad",
    price: '1000\$',
    noofproducts: '10 Products',
    date: '9th Nov, 2021',
    status: "Delivered",
  ),
  OrderDeliveredModel(
    image: 'assets/images/Product1.png',
    title: 'Zain',
    location: ", Sadiqabad",
    price: '16700\$',
    noofproducts: '100 Products',
    date: '9th Dec, 2021',
    status: "Delivered",
  ),
];
