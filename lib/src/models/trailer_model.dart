class TrailerModel {
  int? _id;
  List<_Result> _results = [];

  TrailerModel.fromJson(Map<String, dynamic> parsedJson) {
    _id = parsedJson['id'];
    List<_Result> _temp = [];

    for (int i = 0; parsedJson['results'].length; i++) {
      _Result result = _Result(parsedJson['results'][i]);
      _temp.add(result);
    }
    _results = _temp;
  }
  List<_Result> get results => _results;

  int get id => _id!;
}

class _Result {
  String? _id;
  String? _iso_639_1;
  String? _iso_3166_1;
  String? _key;
  String? _name;
  String? _site;
  int? _size;
  String? _type;

  _Result(results) {
    _id = results['id'];
    _iso_639_1 = results['iso_639_1'];
    _iso_3166_1 = results['iso_3166_1'];
    _key = results['name'];
    _name = results['site'];
    _site = results['size'];
    _type = results['type'];
  }

  String get id => _id!;
  String get iso_639_1 => _iso_639_1!;
  String get iso_3166_1 => _iso_3166_1!;
  String get key => _key!;
  String get name => _name!;
  String get site => _site!;
  int get size => _size!;
  String get type => _type!;
}
