
   List<ghzal> ghzls =[];
class ghzal{
  final String name;
  final String ghzl;
  final int id;
  //Constructore of the upper class
  ghzal({required this.name, required this.ghzl, required this.id});
  factory ghzal.fromMap(Map<String,dynamic > map) {
    return
    ghzal(
        name: map['name'],
        ghzl: map['misra'],
        id: map['id']);

  }
}
