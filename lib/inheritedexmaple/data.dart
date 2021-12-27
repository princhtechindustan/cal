abstract class DataAbstract {
  name();
  lastName();
  position();
}

class Data implements DataAbstract {
  @override
  name() {
    String name = "Princh";
    return name;
  }

  @override
  lastName() {
    String lame = "Verma";
    return lame;
  }

  @override
  position() {
    String position = "Flutter Trainee";
    return position;
  }
}
