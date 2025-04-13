enum NavigationRoute {
  mainRoute("/main"),
  detailRoute("/detail"),
  cartRoute("/cart");

  const NavigationRoute(this.name);
  final String name;
}
