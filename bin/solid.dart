import 'material.dart';

class Solid extends Material {
  Map<String, double?> _dimension = {
    'x': null,
    'y': null,
    'z': null,
  };

  Solid({
    required volume,
    required weight,
    required initTemp,
  }) : super(
          volume: volume.toDouble(),
          weight: weight.toDouble(),
          initTemp: initTemp.toDouble(),
        );

  Solid.rigid({
    required xDim,
    required yDim,
    required zDim,
    required weight,
    required initTemp,
  })  : this._dimension = {
          'x': xDim.toDouble(),
          'y': yDim.toDouble(),
          'z': zDim.toDouble(),
        },
        super(
          volume: (xDim * yDim * zDim).toDouble(),
          weight: weight.toDouble(),
          initTemp: initTemp.toDouble(),
        );

  Map<String, double?> get dimension {
    return _dimension;
  }
}
