class Routes {
  static const login = '/login';
  static const statistics = '/statistics';
  static const monitoring = '/monitoring';
  static const finance = '/finance';
  static const clients = '/clients';

  static const employeeUpdate = '/edit/:employeeId';
  static String getEmployeeUpdate(int employeeId) => '/employees/edit/$employeeId';

  static const clientUpdate = '/edit/:clientId';

  static String getClientUpdate(int clientId) => '/clients/edit/$clientId';

  static const orders = '/orders';

  static const storageBase = '/storage';
  static const products = '$storageBase/products';
  static const clothes = '$storageBase/clothes';
  static const accessories = '$storageBase/accessories';
  static const spareParts = '$storageBase/spare-parts';
  static const miscellaneous = '$storageBase/miscellaneous';

  static const manufactureBase = '/manufacture';
  static const cutting = '$manufactureBase/cutting';
  static const sewing = '$manufactureBase/sewing';
  static const packaging = '$manufactureBase/packaging';

  static const employees = '/employees';
  static const notifications = '/notifications';
  static const settings = '/settings';
}
