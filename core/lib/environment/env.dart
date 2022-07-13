
enum BuildFlavor { dev, prod }

BuildEnvironment? get env => _env;
BuildEnvironment? _env;

class BuildEnvironment {
  final BuildFlavor flavor;

  BuildEnvironment._init({required this.flavor});

  /// Sets up the top-level [env] getter on the first call only.
  static void init({required flavor}) =>
      _env ??= BuildEnvironment._init(flavor: flavor);
}