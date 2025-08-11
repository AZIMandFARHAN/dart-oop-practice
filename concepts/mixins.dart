mixin Engine {
  void startEngine() {
    print("Engine started");
  }
}

mixin MusicSystem {
  void playMusic() {
    print("Playing music");
  }
}

class Car with Engine, MusicSystem {}

void main() {
  Car c = Car();
  c.startEngine();
  c.playMusic();
}
