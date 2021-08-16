abstract class Material {
  double _volume;
  double _weight;
  double _temp;

  Material({
    required volume,
    required weight,
    required initTemp,
  })  : this._volume = volume,
        this._weight = weight,
        this._temp = initTemp;

  double get volume {
    return _volume;
  }

  double get weight {
    return _weight;
  }

  double get density {
    return _weight / _volume;
  }

  double get temp {
    return _temp;
  }

  double changeTemp({required double tempChanged}) {
    _temp += tempChanged;
    return _temp;
  }
}
