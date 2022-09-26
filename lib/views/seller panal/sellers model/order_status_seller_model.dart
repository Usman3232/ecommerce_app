class OrdersContent {
  String image;
  String title;
  String noofproducts;
  String price;
  String time;
  String location;
  String status;
  OrdersContent(
      {required this.image,
      required this.title,
      required this.noofproducts,
      required this.price,
      required this.time,
      required this.location,
      required this.status});
}

List<OrdersContent> listoforder = [
  OrdersContent(
    image: 'assets/images/Product1.png',
    title: 'Waleed Azhar',
    location: ", Sadiqabad",
    price: '1000\$',
    noofproducts: '10 Products',
    time: '3:39',
    status: "Pending",
  ),
  OrdersContent(
    image: 'assets/images/Product1.png',
    title: 'Zain',
    location: ", Sadiqabad",
    price: '16700\$',
    noofproducts: '100 Products',
    time: '3:39',
    status: "Pending",
  ),
  OrdersContent(
    image: 'assets/images/Product1.png',
    title: 'Waleed Azhar',
    location: " Sadiqabad",
    price: '1000\$',
    noofproducts: '10 Products',
    time: '3:39',
    status: "Waiting For Payment",
  ),
  OrdersContent(
    image: 'assets/images/Product1.png',
    title: 'Waleed Azhar',
    location: ", Sadiqabad",
    price: '1000\$',
    noofproducts: '10 Products',
    time: '3:39',
    status: "Processing",
  ),
  OrdersContent(
    image: 'assets/images/Product1.png',
    title: 'Waleed Azhar',
    location: ", Sadiqabad",
    price: '1000\$',
    noofproducts: '10 Products',
    time: '3:39',
    status: "Waiting For Delivery Partner",
  ),
  OrdersContent(
    image: 'assets/images/Product1.png',
    title: 'Waleed Azhar',
    location: ", Sadiqabad",
    price: '1000\$',
    noofproducts: '10 Products',
    time: '3:39',
    status: "Pending",
  ),
];
