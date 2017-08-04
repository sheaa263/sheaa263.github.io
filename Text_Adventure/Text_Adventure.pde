int stage;
PImage image;
PFont haster;


void setup ()
{
  size (650, 500);
  image = loadImage( "heartback.jpg");
  haster = createFont( "Hasteristico.ttf", 30);
  background( image );
  textFont( haster );
  stage = 0;
}

void draw()
{
  if (stage == 0) {
    text( "You're looking for a hot date!", 135, 200);
    text( "Feeling saucy?", 220, 250);
    text( "Y / N", 290, 300);
  }
  if (stage == 1) {
    text( "Agree to a blind date?", 175, 200);
    text( "Y / N", 300, 300);
  }
  if (stage == 2) {
    text("Bat your lashes, flash your smile", 125, 200);
    text("and hope for the best!", 180, 250);
  }
  if (stage == 3) {
    text("Your date is totally weird.", 160, 180);
    text("Still interested?", 230, 220);
    text("(Y) Let's get weird!", 200, 275);
    text("(N) Mm, I'm a norm.", 200, 318);
  }
  if (stage == 4) {
    text("Sure, it's a blind date,", 190, 170);
    text("but they can see you", 190, 200);
    text("slinking away!", 240, 230);
    text("What's your excuse?", 200, 280);
    text("(A) I have to feed my llama.", 10, 360);
    text("(B) I hit my head on the toilet. Do I know you?", 10, 405);
    text("(C) ancestry.com just sent me a push notification.", 10, 450);
    text("Unfortunately, we're related.", 50, 481);
  }
  if (stage == 5) {
    text("Don't knock it til you try it.", 170, 170);
    text("Let's get weird!.", 230, 210);
    text("What's your opening line?", 158, 250);
    text("(A) You remind me of my llama.", 8, 315);
    text("(B) Did you ever find Bugs Bunny attractive when", 8, 365);
    text("he put on a dress and played girl bunny?", 50, 400);    
    text("(C) You ever fill your tub with hot water, a lil salt,", 8, 450);
    text("and spaghetti? I love a good spaghetti soak.", 52, 485);
  }
  if (stage == 6) {
    text( "Congratulations!", 220, 175);
    text( "Your date LOVES spaghetti soaks!", 105, 220);
    text( "You live happily ever after!", 150, 265);
  }
  if (stage == 7) {
    text( "You out-weirded your date!", 145, 185);
    text( "They leave you alone with a ", 135, 230);
    text( "plate of spaghetti.", 200, 265);
  }

  if (stage == 8) {
    text( "Your date melts into a pile of", 125, 175);
    text( "spaghetti. Guess you weren't", 125, 220);
    text( "feeling saucy enough.", 170, 265);
  }
}
void keyPressed()
{
  if (stage==0&&key=='y') {
    background( image );
    stage = 1;
  } else if (stage==0&&key=='n') {
    background( image );
    stage = 2;
  }    
  if (stage==1&&key=='n') {
    background( image );
    stage = 2;
  } else if (stage==1&&key=='y') {
    background( image );
    stage = 3;
  }
  if (stage==3&&key=='n') {
    background( image );
    stage = 4;
  } else if (stage==3&&key=='y') {
    background( image );
    stage = 5;
  }
  if (stage==4&&key=='A') {
    background( image );
    stage = 8;
  }
  if (stage==4&&key=='B') {
    background( image );
    stage = 8;
  }
  if (stage==4&&key=='C') {
    background( image );
    stage = 8;
  }
  if (stage==5&&key=='A') {
    background( image );
    stage = 7;
  }
  if (stage==4&&key=='B') {
    background( image );
    stage = 7;
  }
  if (stage==4&&key=='C') {
    background( image );
    stage = 6;
  }
}