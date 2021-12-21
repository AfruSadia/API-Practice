/// id : 47
/// name : "He"
/// image : "/uploads/categories/default.webp"
/// level : "1"
/// parentId : null
/// children : [{"id":49,"name":"Panjabi","image":"/uploads/categories/default.webp","level":"2","parentId":47,"children":[{"id":51,"name":"Kabli Punjabi","image":"/uploads/categories/default.webp","level":"3","parentId":49},{"id":52,"name":"Casual","image":"/uploads/categories/default.webp","level":"3","parentId":49},{"id":54,"name":"Exclusive","image":"/uploads/categories/default.webp","level":"3","parentId":49}]},{"id":50,"name":"Pajama","image":"/uploads/categories/default.webp","level":"2","parentId":47,"children":[{"id":55,"name":"Churidar","image":"/uploads/categories/default.webp","level":"3","parentId":50},{"id":56,"name":"Aligari","image":"/uploads/categories/default.webp","level":"3","parentId":50},{"id":57,"name":"Loose","image":"/uploads/categories/default.webp","level":"3","parentId":50},{"id":58,"name":"Salwar","image":"/uploads/categories/default.webp","level":"3","parentId":50}]},{"id":62,"name":"Pant","image":"/uploads/categories/default.webp","level":"2","parentId":47,"children":[{"id":66,"name":"Trouser","image":"/uploads/categories/default.webp","level":"3","parentId":62},{"id":67,"name":"Gabardine","image":"/uploads/categories/default.webp","level":"3","parentId":62},{"id":68,"name":"Party Pant","image":"/uploads/categories/default.webp","level":"3","parentId":62},{"id":69,"name":"Jeans","image":"/uploads/categories/default.webp","level":"3","parentId":62},{"id":70,"name":"Casual","image":"/uploads/categories/default.webp","level":"3","parentId":62},{"id":654,"name":"Three-Quarter","image":"/uploads/categories/default.webp","level":"3","parentId":62}]},{"id":64,"name":"Shirt","image":"/uploads/categories/default.webp","level":"2","parentId":47,"children":[{"id":71,"name":"exclusive","image":"/uploads/categories/default.webp","level":"3","parentId":64},{"id":72,"name":"Casual","image":"/uploads/categories/default.webp","level":"3","parentId":64},{"id":74,"name":"Jeans","image":"/uploads/categories/default.webp","level":"3","parentId":64},{"id":318,"name":"Lillien","image":"/uploads/categories/default.webp","level":"3","parentId":64}]},{"id":65,"name":"T-shirt","image":"/uploads/categories/default.webp","level":"2","parentId":47,"children":[{"id":75,"name":"Polo","image":"/uploads/categories/default.webp","level":"3","parentId":65},{"id":76,"name":"Round","image":"/uploads/categories/default.webp","level":"3","parentId":65}]},{"id":79,"name":"Shoes","image":"/uploads/categories/default.webp","level":"2","parentId":47,"children":[{"id":81,"name":"Lofer","image":"/uploads/categories/default.webp","level":"3","parentId":79},{"id":339,"name":"Converse","image":"/uploads/categories/default.webp","level":"3","parentId":79},{"id":390,"name":"Snaker","image":"/uploads/categories/default.webp","level":"3","parentId":79},{"id":582,"name":"Sandal","image":"/uploads/categories/default.webp","level":"3","parentId":79},{"id":583,"name":"Formal ","image":"/uploads/categories/default.webp","level":"3","parentId":79},{"id":742,"name":"Slider","image":"/uploads/categories/default.webp","level":"3","parentId":79},{"id":775,"name":"Keds","image":"/uploads/categories/default.webp","level":"3","parentId":79},{"id":776,"name":"High Shoes","image":"/uploads/categories/default.webp","level":"3","parentId":79},{"id":777,"name":"Half Show","image":"/uploads/categories/default.webp","level":"3","parentId":79}]},{"id":274,"name":"Accessories","image":"/uploads/categories/default.webp","level":"2","parentId":47,"children":[{"id":275,"name":"Sunglass","image":"/uploads/categories/default.webp","level":"3","parentId":274},{"id":279,"name":" Watch","image":"/uploads/categories/default.webp","level":"3","parentId":274},{"id":301,"name":"Perfumes","image":"/uploads/categories/default.webp","level":"3","parentId":274},{"id":362,"name":"Wallet","image":"/uploads/categories/default.webp","level":"3","parentId":274},{"id":363,"name":"Card Holder","image":"/uploads/categories/default.webp","level":"3","parentId":274},{"id":371,"name":"Belt","image":"/uploads/categories/default.webp","level":"3","parentId":274},{"id":505,"name":"Key Holder","image":"/uploads/categories/default.webp","level":"3","parentId":274},{"id":523,"name":"Socks","image":"/uploads/categories/default.webp","level":"3","parentId":274},{"id":641,"name":"Trimmer","image":"/uploads/categories/default.webp","level":"3","parentId":274}]}]

class Nested_model {
  Nested_model({
    int? id,
    String? name,
    String? image,
    String? level,
    dynamic parentId,
    List<Children>? children,
  }) {
    _id = id;
    _name = name;
    _image = image;
    _level = level;
    _parentId = parentId;
    _children = children;
  }

  Nested_model.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _image = json['image'];
    _level = json['level'];
    _parentId = json['parentId'];
    if (json['children'] != null) {
      _children = [];
      json['children'].forEach((v) {
        _children?.add(Children.fromJson(v));
      });
    }
  }
  int? _id;
  String? _name;
  String? _image;
  String? _level;
  dynamic _parentId;
  List<Children>? _children;

  int? get id => _id;
  String? get name => _name;
  String? get image => _image;
  String? get level => _level;
  dynamic get parentId => _parentId;
  List<Children>? get children => _children;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['image'] = _image;
    map['level'] = _level;
    map['parentId'] = _parentId;
    if (_children != null) {
      map['children'] = _children?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// id : 49
/// name : "Panjabi"
/// image : "/uploads/categories/default.webp"
/// level : "2"
/// parentId : 47
/// children : [{"id":51,"name":"Kabli Punjabi","image":"/uploads/categories/default.webp","level":"3","parentId":49},{"id":52,"name":"Casual","image":"/uploads/categories/default.webp","level":"3","parentId":49},{"id":54,"name":"Exclusive","image":"/uploads/categories/default.webp","level":"3","parentId":49}]

class Children {
  Children({
    int? id,
    String? name,
    String? image,
    String? level,
    int? parentId,
    List<Children>? children,
  }) {
    _id = id;
    _name = name;
    _image = image;
    _level = level;
    _parentId = parentId;
    _children = children;
  }

  Children.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _image = json['image'];
    _level = json['level'];
    _parentId = json['parentId'];
    if (json['children'] != null) {
      _children = [];
      json['children'].forEach((v) {
        _children?.add(Children.fromJson(v));
      });
    }
  }
  int? _id;
  String? _name;
  String? _image;
  String? _level;
  int? _parentId;
  List<Children>? _children;

  int? get id => _id;
  String? get name => _name;
  String? get image => _image;
  String? get level => _level;
  int? get parentId => _parentId;
  List<Children>? get children => _children;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['image'] = _image;
    map['level'] = _level;
    map['parentId'] = _parentId;
    if (_children != null) {
      map['children'] = _children?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// id : 51
/// name : "Kabli Punjabi"
/// image : "/uploads/categories/default.webp"
/// level : "3"
/// parentId : 49

class Child {
  Children({
    int? id,
    String? name,
    String? image,
    String? level,
    int? parentId,
  }) {
    _id = id;
    _name = name;
    _image = image;
    _level = level;
    _parentId = parentId;
  }

  Child.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _image = json['image'];
    _level = json['level'];
    _parentId = json['parentId'];
  }
  int? _id;
  String? _name;
  String? _image;
  String? _level;
  int? _parentId;

  int? get id => _id;
  String? get name => _name;
  String? get image => _image;
  String? get level => _level;
  int? get parentId => _parentId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['image'] = _image;
    map['level'] = _level;
    map['parentId'] = _parentId;
    return map;
  }
}
