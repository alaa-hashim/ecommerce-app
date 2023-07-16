class Cart {
  String? itemsprice;
  int? countitems;
  int? cartId;
  int? cartUserid;
  int? cartItemid;
  String? cartDate;
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

  Cart(
      {this.itemsprice,
      this.countitems,
      this.cartId,
      this.cartUserid,
      this.cartItemid,
      this.cartDate,
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
      this.proudctActive});

  Cart.fromJson(Map<String, dynamic> json) {
    itemsprice = json['itemsprice'];
    countitems = json['countitems'];
    cartId = json['cart_id'];
    cartUserid = json['cart_userid'];
    cartItemid = json['cart_itemid'];
    cartDate = json['cart_date'];
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
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['itemsprice'] = itemsprice;
    data['countitems'] = countitems;
    data['cart_id'] = cartId;
    data['cart_userid'] = cartUserid;
    data['cart_itemid'] = cartItemid;
    data['cart_date'] = cartDate;
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
    return data;
  }
}
