


import 'human.dart';

class Sakil extends Human{

  // interface method
  @override
  void eating() {
    _movingHandes();
  }

  @override
  void moving() {
    // TODO: implement moving
  }

  //implementation method
  void _movingHandes(){
    print('moving');
  }

  @override
  void talking() {
    // TODO: implement talking
  }



}

class Hassan implements Human{
  @override
  void eating() {
    // TODO: implement eating
  }

  @override
  void moving() {
    // TODO: implement moving
  }

  @override
  void talking() {
    // TODO: implement talking
  }


}