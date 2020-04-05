class LocationDetails
{
  String img;
  String name;
  String block;
  String desc;
  String shortDesc;

  LocationDetails ({this.img, this.name, this.block, this.desc})
  {
   shortDesc = desc.substring(0,30) + '...';
  }
}