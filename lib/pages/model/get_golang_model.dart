class Products {
  Products({
    required this.id,
    required this.namaProduct,
    required this.deskripsi,
  });
  late final int id;
  late final String namaProduct;
  late final String deskripsi;
  
  Products.fromJson(Map<String, dynamic> json){
    id = json['id'] ?? "";
    namaProduct = json['nama_product'] ?? "";
    deskripsi = json['deskripsi'] ?? "";
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['nama_product'] = namaProduct;
    _data['deskripsi'] = deskripsi;
    return _data;
  }
}