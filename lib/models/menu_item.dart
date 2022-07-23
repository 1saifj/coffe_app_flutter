class CoffeeMenuItem {
  String? img;
  String? title;
  double? price;

  CoffeeMenuItem({this.img, this.title, this.price});
}

List<CoffeeMenuItem> coffeeMenuItems = [
  CoffeeMenuItem(
    img:
        'https://images.unsplash.com/photo-1518791841217-8f162f1e1131?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    title: 'Cappuccino',
    price: 2.0,
  ),
  CoffeeMenuItem(
    img:
        'https://images.unsplash.com/photo-1518791841217-8f162f1e1131?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    title: 'Iced Coffee',
    price: 2.0,
  )
];
