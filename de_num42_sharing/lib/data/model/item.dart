class Item{
  var name;
  var description;
  var itemId;

  Item setItem(String name, String description, String itemId){
    this.name=name;
    this.description=description;
    this.itemId= itemId;
    return this;
  }
}