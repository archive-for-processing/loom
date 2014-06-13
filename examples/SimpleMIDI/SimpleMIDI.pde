import org.chrisjr.loom.*;
import themidibus.*;

Loom loom;
Pattern pattern;
MidiBus myBus;

void setup() {
  size(400,400);
  
  loom = new Loom(this);
  pattern = new Pattern(loom);
  myBus = new MidiBus(this, "Bus 1", "Bus 1");
  
  loom.setMidiBus(myBus);

  pattern.extend("0242");
  pattern.asColor(#000000, #FFFFFF);

  pattern.asMidiNote(60, 64, 67);
  pattern.asMidiMessage(pattern);

  pattern.loop();
  
  loom.play();
}

void draw() {
  background(pattern.asColor());
}