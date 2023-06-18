class Product {
  int? productId;
  String? productName;
  String? proudctNamear;
  int? price;
  String? detail;
  String? detailsAr;
  String? proudctImg;
  int? subcatId;
  int? count;
  String? date;
  int? hide;
  int? productDiscount;
  int? proudctActive;
  int? subId;
  String? subcatName;
  String? subcatNamear;
  String? image;
  int? catId;

  Product({
    this.productId,
    this.productName,
    this.proudctNamear,
    this.price,
    this.detail,
    this.detailsAr,
    this.proudctImg,
    this.subcatId,
    this.count,
    this.date,
    this.hide,
    this.productDiscount,
    this.proudctActive,
    this.subId,
    this.subcatName,
    this.subcatNamear,
    this.image,
    this.catId,
  });

  Product.fromJson(Map<String, dynamic> json) {
    productId = json['product_id'];
    productName = json['product_name'];
    proudctNamear = json['proudct_namear'];
    price = json['price'];
    detail = json['detail'];
    detailsAr = json['details_ar'];
    proudctImg = json['proudct_img'];
    subcatId = json['subcat_id'];
    count = json['count'];
    date = json['date'];
    hide = json['hide'];
    productDiscount = json['product_discount'];
    proudctActive = json['proudct_active'];
    subId = json['sub_id'];
    subcatName = json['subcat_name'];
    subcatNamear = json['subcat_namear'];
    image = json['image'];
    catId = json['cat_id'];
    hide = json['hide_'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['product_id'] = productId;
    data['product_name'] = productName;
    data['proudct_namear'] = proudctNamear;
    data['price'] = price;
    data['detail'] = detail;
    data['details_ar'] = detailsAr;
    data['proudct_img'] = proudctImg;
    data['subcat_id'] = subcatId;
    data['count'] = count;
    data['date'] = date;
    data['hide'] = hide;
    data['product_discount'] = productDiscount;
    data['proudct_active'] = proudctActive;
    data['sub_id'] = subId;
    data['subcat_name'] = subcatName;
    data['subcat_namear'] = subcatNamear;
    data['image'] = image;
    data['cat_id'] = catId;
    data['hide_'] = hide;
    return data;
  }
}
