class Routes {
  static const genericCreate = '/create';
  static const genericUpdate = '/update/:id';
  static const genericDetail = '/detail/:id';

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

  static const materials = '$storageBase/materials';

  static String getMaterialTypeCreate() => '$materials$genericCreate';

  static String getMaterialTypeUpdate(int id) => '$materials/update/$id';

  static String getMaterialTypeDetail(int id) => '$materials/detail/$id';

  static const accessories = '$storageBase/accessories';

  static String getAccessoryTypeCreate() => '$accessories$genericCreate';

  static String getAccessoryTypeUpdate(int id) => '$accessories/update/$id';

  static String getAccessoryTypeDetail(int id) => '$accessories/detail/$id';

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
