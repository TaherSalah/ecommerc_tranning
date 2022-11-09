class ProdType{
  final String image;
  final String text;
  final String backgroundColor;
  ProdType(this.image,this.text,this.backgroundColor);


}
class MeatProdType{
  final String image;
  final String titleText;
  final String subTitleText;
  // final String backgroundColor;
  MeatProdType(this.image, this.titleText, this.subTitleText);


}

List<ProdType>itemsType=[
  ProdType('assets/images/Pulses.png', 'Pulses', '#F8A44C'),
  ProdType('assets/images/rice.png', 'Rice', '#53B175'),
  ProdType('assets/images/green.png', 'vegetables', '#F8A44C'),
  ProdType('assets/images/frutes.png', 'Fruits', '#53B175')];
List<MeatProdType>meatItemsType=[
  MeatProdType('assets/images/pngfuel 4.png','1kg, Priceg', 'Beef Bone', ),
MeatProdType('assets/images/pngfuel 5.png','1kg, Priceg', 'Beef Bone', ),
MeatProdType('assets/images/ba.jpg','1kg, Priceg', 'Beef Bone', ),
];
