PImage russia, saudi, egypt, uruguay, france, australia, peru, denmark;
PImage portugal, spain, morocco, iran, argentina, iceland, croatia, nigeria;

void setup() {
  size(900, 500);
  background(10, 30, 80); 

  russia = loadImage("data/russia.png");
  saudi = loadImage("saudi_arabia.png");
  egypt = loadImage("egypt.png");
  uruguay = loadImage("uruguay.png");
  france = loadImage("france.png");
  australia = loadImage("australia.png");
  peru = loadImage("peru.png");
  denmark = loadImage("denmark.png");
  portugal = loadImage("portugal.png");
  spain = loadImage("spain.png");
  morocco = loadImage("morocco.png");
  iran = loadImage("iran.png");
  argentina = loadImage("argentina.png");
  iceland = loadImage("iceland.png");
  croatia = loadImage("croatia.png");
  nigeria = loadImage("nigeria.png");

  
  drawGroup("GROUP A", new String[]{"RUSSIA", "SAUDI ARABIA", "EGYPT", "URUGUAY"},
            new PImage[]{russia, saudi, egypt, uruguay}, 50, 50);
  
  drawGroup("GROUP B", new String[]{"FRANCE", "AUSTRALIA", "PERU", "DENMARK"},
            new PImage[]{france, australia, peru, denmark}, 500, 50);
  
  drawGroup("GROUP C", new String[]{"PORTUGAL", "SPAIN", "MOROCCO", "IRAN"},
            new PImage[]{portugal, spain, morocco, iran}, 50, 250);
  
  drawGroup("GROUP D", new String[]{"ARGENTINA", "ICELAND", "CROATIA", "NIGERIA"},
            new PImage[]{argentina, iceland, croatia, nigeria}, 500, 250);
}

void drawGroup(String groupName, String[] teams, PImage[] flags, int x, int y) {
  color textColor;
  
  
  if (groupName.equals("GROUP A") || groupName.equals("GROUP B")) {
    textColor = color(173, 216, 230); 
  } else {
    textColor = color(255, 255, 153); 
  }

  fill(textColor);
  textSize(16);
  text(groupName, x, y - 10);

  for (int i = 0; i < teams.length; i++) {
    fill(255);
    rect(x, y + i * 40, 200, 30);
    fill(0);
    textSize(14);
    text(teams[i], x + 50, y + 20 + i * 40);
    
    image(flags[i], x, y + i * 40, 40, 30);
  }
}
