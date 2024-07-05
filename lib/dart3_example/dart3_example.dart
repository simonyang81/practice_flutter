/// FileName dart3_example
/// 
/// @Author 杨雪松
/// @Email simonyang81@gmail.com
/// @Date 2023/5/11 17:03
///
/// @Description
///
///

sealed class Dart3SealedClass {
}

class A extends Dart3SealedClass {

}

interface class Dart3InterfaceClass {
  void moveForward(int meters) {
  }

}

class B implements Dart3InterfaceClass {
  late int passengers;

  @override
  void moveForward(int meters) {
  }
}

class C extends Dart3InterfaceClass {
  late int passengers;
}

final class Dart3FinalClass {

}
final class D implements Dart3FinalClass {
}

base class Dart3BaseClass {

}

