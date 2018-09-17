class Lifegroup {
  final int id;
  String name;
  String lifegroup;
  int attendance;
  String date;

  Lifegroup(this.id, this.name, this.lifegroup, this.attendance, this.date);

  factory Lifegroup.fromJson(Map<String, dynamic> app) =>
      Lifegroup(_toInt(app['id']), app['name'], app['lifegroup'],app['attendace'],app['date']);

  Map toJson() => {'id' : id, 'name': name};
}
int _toInt(id) => id is int ? id : int.parse(id);