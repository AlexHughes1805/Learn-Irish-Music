// all information on Irish music is from my leaving cert notes unless stated otherwise

import ddf.minim.*;
Minim minim;
AudioPlayer blackandtans, jig, reel, hornpipe, bodhransample, flutesample, fiddlesample, tinsample, uilleannsample, harpsample;
PImage ireland, jigbar, reelbar, hornbar, bodhran, flute, fiddle, tin, uilleann, harp;
boolean jigpage, reelpage, hornpage, bodhranpage, flutepage, fiddlepage, tinpage, uilleannpage, harppage;

/*giving the homepage an int value
 makes it so that on keyPressed the event of
 the homepage is permanent instead of flashing on and off*/
int home = 0;

void setup()
{
  size(800, 800);

  surface.setTitle("Learning Irish Music");

  jigpage = false;
  reelpage = false;
  hornpage = false;
  bodhranpage = false;
  flutepage = false;
  fiddlepage = false;
  tinpage = false;
  uilleannpage = false;
  harppage = false;

  //loading in pictures for the home and topic pages
  ireland = loadImage("ireland.png");
  jigbar = loadImage("jigbar.png");
  hornbar = loadImage("hornbar.png");
  reelbar = loadImage("reelbar.png");
  bodhran = loadImage("bodhran.png");
  flute = loadImage("flute.png");
  fiddle = loadImage("fiddle.png");
  tin = loadImage("tin.png");
  uilleann = loadImage("uilleann.png");
  harp = loadImage("harp.png");

  minim = new Minim(this);

  // loading music for the homepage. press play to hear
  blackandtans = minim.loadFile("black and tans.mp3");// https://www.youtube.com/watch?v=S7woEXovruc

  //loading in the music files for each topic page
  jig = minim.loadFile( "jig.mp3"); // https://www.youtube.com/watch?v=IT4ZJ4LN6K8
  reel = minim.loadFile("reel.mp3"); // https://www.youtube.com/watch?v=iCngFewnYi8
  hornpipe = minim.loadFile("hornpipe.mp3"); // https://www.youtube.com/watch?v=6o9802jEbdw
  bodhransample = minim.loadFile("bodhransample.mp3"); // https://en.wikipedia.org/wiki/Bodhr%C3%A1n
  flutesample = minim.loadFile("flutesample.mp3"); // https://www.youtube.com/watch?v=n0gThTqKv7A&t=95s
  fiddlesample = minim.loadFile("fiddlesample.mp3"); // https://www.youtube.com/watch?v=2ZxAVUsuE4Y
  tinsample = minim.loadFile("tinsample.mp3"); // https://www.youtube.com/watch?v=mpN36I9xr-o
  uilleannsample = minim.loadFile("uilleannsample.mp3"); // https://www.youtube.com/watch?v=Dm3EpfuxuG0
  harpsample = minim.loadFile("harpsample.mp3"); // https://www.youtube.com/watch?v=XFk9gvlYnjY
}

void draw()
{
  // the homepage, showing a map of Ireland and the different topics that can be learned
  homepage();

  //opening the jig page, showing information about jigs
  if (jigpage == true)
  {
    fill(255);
    rect(-10, -10, 850, 850);
    jig.play(); //plays a jig

    fill(0);
    textSize(50);
    text("Jig", 350, 100);

    textSize(30);
    text("Typical bar of rhythm:", 450, 275);
    image(jigbar, 450, 300, width/3, height/4);

    text("Typical time signature:", 60, 150);

    textSize(20);
    text("Single + double - 6/8", 60, 180);
    text("Slip - 9/8", 60, 210);

    textSize(30);
    text("A rhyme for recalling a typical", 60, 250);
    text("jig is: rashers and sausages", 60, 280);

    textSize(40);
    text("Examples:", 60, 350);

    textSize(30);
    text("The Tenpenny Bit", 60, 380);
    text("The Three Note Jig", 60, 410);
    text("The Kesh Jig", 60, 440);

    text("Back", 50, 50);
  }

  //page and info about reels
  if (reelpage == true)
  {
    fill(255);
    rect(-10, -10, 850, 850);
    reel.play();

    fill(0);
    textSize(50);
    text("Reel", 350, 100);

    textSize(30);
    text("Typical bar of rhythm:", 450, 275);
    image(reelbar, 450, 300, width/3, height/4);

    text("Typical time signature:", 60, 150);

    textSize(20);
    text("4/4", 60, 180);

    textSize(30);
    text("A rhyme for recalling a typical", 60, 250);
    text("reel is: black and decker", 60, 280);

    textSize(40);
    text("Examples:", 60, 350);

    textSize(30);
    text("Drowsy Maggie", 60, 380);
    text("The Banshee", 60, 410);
    text("The Silver Spear", 60, 440);

    text("Back", 50, 50);
  }

  // page and info about hornpipes
  if (hornpage == true)
  {
    fill(255);
    rect(-10, -10, 850, 850);
    hornpipe.play();

    fill(0);
    textSize(50);
    text("Hornpipe", 350, 100);

    textSize(30);
    text("Typical bar of rhythm:", 450, 275);
    image(hornbar, 450, 300, width/3, height/4);

    text("Typical time signature:", 60, 150);

    textSize(20);
    text("4/4", 60, 180);

    textSize(30);
    text("A rhyme for recalling a typical", 60, 250);
    text("reel is: humpty dumpty", 60, 280);

    textSize(40);
    text("Examples:", 60, 350);

    textSize(30);
    text("Boys of Bluehill", 60, 380);
    text("Harvest Home", 60, 410);
    text("Rights of Man", 60, 440);

    text("Back", 50, 50);
  }

  if (bodhranpage == true)
  {
    fill(255);
    rect(-10, -10, 850, 850);

    bodhransample.play();

    fill(0);
    textSize(30);
    text("Back", 50, 50);

    textSize(50);
    text("Bodhrán", 350, 100);

    image(bodhran, 450, 300);

    textSize(30);
    text("A skinned percussion instrument played", 60, 150);
    text("with a stick called a cipín(tipper).", 60, 180);
    text("It can be played close to the frame or", 60, 230);
    text("in the middle.", 60, 260);
    text("It is traditionally skinned", 60, 310);
    text("with goat skin, but synthetic", 60, 340);
    text("heads or other animals are", 60, 370);
    text("sometmes used", 60, 400);
    text("Musician examples:", 60, 450);

    textSize(20);
    text("Kevin Conneff", 60, 480);
    text("Mel Mercier", 60, 510);
  }

  if (flutepage == true)
  {
    fill(255);
    rect(-10, -10, 850, 850);

    flutesample.play();

    fill(0);
    textSize(30);
    text("Back", 50, 50);

    textSize(50);
    text("Flute", 350, 100);

    image(flute, 450, 300);

    textSize(30);
    text("A woodwind instrument.", 60, 150);
    text("The main difference between the", 60, 200);
    text("Irish flute and an orchestral flute", 60, 230);
    text("is that the Irish flute is wooden.", 60, 260);
    text("It was not actually invented", 60, 310);
    text("in Ireland, but instead brought", 60, 340);
    text("over from England, which later", 60, 370);
    text("switched to metallic flutes.", 60, 400);
    text("Musician examples:", 60, 450);

    textSize(20);
    text("Matt Molloy", 60, 480);
    text("Seamus Tansey", 60, 510);
  }

  if (fiddlepage == true)
  {
    fill(255);
    rect(-10, -10, 850, 850);

    fiddlesample.play();

    fill(0);
    textSize(30);
    text("Back", 50, 50);

    textSize(50);
    text("Fiddle", 350, 100);

    image(fiddle, 450, 300, width/2, height/2);

    textSize(30);
    text("A string instrument.", 60, 150);
    text("This traditional instrument", 60, 200);
    text("derives from the Byzantine lira", 60, 230);
    text("and does not differ in shape.", 60, 260);
    text("to a violin.", 60, 290);
    text("The only difference between the two", 60, 340);
    text("is that in Irish tradition the fiddle", 60, 370);
    text("is played lower on the shoulder.", 60, 400);
    text("Musician examples:", 60, 450);

    textSize(20);
    text("Frankie Gavin", 60, 480);
    text("Paddy Glackin", 60, 510);
  }

  if (tinpage == true)
  {
    fill(255);
    rect(-10, -10, 850, 850);

    tinsample.play();

    fill(0);
    textSize(30);
    text("Back", 50, 50);

    textSize(50);
    text("Tin Whistle", 350, 100);

    image(tin, 450, 300);

    textSize(30);
    text("An iconic woodwind instrument", 60, 150);
    text("seen in many classrooms across Ireland.", 60, 180);
    text("It comes in many different keys,", 60, 230);
    text("but the most common is D", 60, 260);
    text("with the second most common being C.", 60, 290);
    text("The tin whistle is most comonly", 60, 340);
    text("made from brass or nickel-plated", 60, 370);
    text("brass.", 60, 400);
    text("Musician examples:", 60, 450);

    textSize(20);
    text("Mary Bergin", 60, 480);
    text("Paddie Maloney", 60, 510);
  }

  if (uilleannpage == true)
  {
    fill(255);
    rect(-10, -10, 850, 850);

    uilleannsample.play();

    fill(0);
    textSize(30);
    text("Back", 50, 50);

    textSize(50);
    text("Uilleann Pipes", 350, 100);

    image(uilleann, 450, 300);

    textSize(30);
    text("The bagpipes of Ireland.", 60, 150);
    text("Uilleann pipes are most known", 60, 200);
    text("for their drone-like noise", 60, 230);
    text("and nasally tone.", 60, 260);
    text("The word 'uilleann' comes", 60, 310);
    text("from the Irish word", 60, 340);
    text("for elbow. This word is used as", 60, 370);
    text("this instrument is held", 60, 400);
    text("between the elbow and", 60, 430);
    text("the body as well as utilising.", 60, 460);
    text("the elbow to play.", 60, 490);
    text("Musician examples:", 60, 540);

    textSize(20);
    text("Seamus Ennis", 60, 570);
    text("Willie Clancy", 60, 600);
  }

  if (harppage == true)
  {
    fill(255);
    rect(-10, -10, 850, 850);

    harpsample.play();

    fill(0);
    textSize(30);
    text("Back", 50, 50);

    textSize(50);
    text("Harp", 350, 100);

    image(harp, 450, 300);

    textSize(30);
    text("A national symbol of Ireland.", 60, 150);
    text("This string instrument is seen", 60, 200);
    text("in both traditional Irish music", 60, 230);
    text("and orchestral music.", 60, 260);
    text("Harps rose to prominence", 60, 310);
    text("during the Medieval era", 60, 340);
    text("and stuck around since.", 60, 370);
    text("Traditional Irish harps have", 60, 420);
    text("30 strings, though this number", 60, 450);
    text("can vary.", 60, 480);
    text("Musician examples:", 60, 530);

    textSize(20);
    text("Derek Bell", 60, 560);
    text("Laoise Kelly", 60, 590);
  }

  // homepage is called when 'back is pressed from a topic page
  if (home == 1)
  {
    homepage();
    pause(); // pause topic page music

    /* making it so that when you go back to the homepage you can still
     press back into the topic pages */
    if (jigpage == true)
    {
      fill(255);
      rect(-10, -10, 850, 850);
      jig.play(); //plays a jig

      fill(0);
      textSize(50);
      text("Jig", 350, 100);

      textSize(30);
      text("Typical bar of rhythm:", 450, 275);
      image(jigbar, 450, 300, width/3, height/4);

      text("Typical time signature:", 60, 150);

      textSize(20);
      text("Single + double - 6/8", 60, 180);
      text("Slip - 9/8", 60, 210);

      textSize(30);
      text("A rhyme for recalling a typical", 60, 250);
      text("jig is: rashers and sausages", 60, 280);

      textSize(40);
      text("Examples:", 60, 350);

      textSize(30);
      text("The Tenpenny Bit", 60, 380);
      text("The Three Note Jig", 60, 410);
      text("The Kesh Jig", 60, 440);

      text("Back", 50, 50);
    } else if (reelpage == true)
    {
      fill(255);
      rect(-10, -10, 850, 850);
      reel.play();

      fill(0);
      textSize(50);
      text("Reel", 350, 100);

      textSize(30);
      text("Typical bar of rhythm:", 450, 275);
      image(reelbar, 450, 300, width/3, height/4);

      text("Typical time signature:", 60, 150);

      textSize(20);
      text("4/4", 60, 180);

      textSize(30);
      text("A rhyme for recalling a typical", 60, 250);
      text("reel is: black and decker", 60, 280);

      textSize(40);
      text("Examples:", 60, 350);

      textSize(30);
      text("Drowsy Maggie", 60, 380);
      text("The Banshee", 60, 410);
      text("The Silver Spear", 60, 440);

      text("Back", 50, 50);
    } else if (hornpage == true)
    {
      fill(255);
      rect(-10, -10, 850, 850);
      hornpipe.play();

      fill(0);
      textSize(50);
      text("Hornpipe", 350, 100);

      textSize(30);
      text("Typical bar of rhythm:", 450, 275);
      image(hornbar, 450, 300, width/3, height/4);

      text("Typical time signature:", 60, 150);

      textSize(20);
      text("4/4", 60, 180);

      textSize(30);
      text("A rhyme for recalling a typical", 60, 250);
      text("reel is: humpty dumpty", 60, 280);

      textSize(40);
      text("Examples:", 60, 350);

      textSize(30);
      text("Boys of Bluehill", 60, 380);
      text("Harvest Home", 60, 410);
      text("Rights of Man", 60, 440);

      text("Back", 50, 50);
    } else if (bodhranpage == true)
    {
      fill(255);
      rect(-10, -10, 850, 850);

      bodhransample.play();

      fill(0);
      textSize(30);
      text("Back", 50, 50);

      textSize(50);
      text("Bodhrán", 350, 100);

      image(bodhran, 450, 300);

      textSize(30);
      text("A skinned percussion instrument played", 60, 150);
      text("with a stick called a cipín(tipper).", 60, 180);
      text("It can be played close to the frame or", 60, 230);
      text("in the middle.", 60, 260);
      text("It is traditionally skinned", 60, 310);
      text("with goat skin, but synthetic", 60, 340);
      text("heads or other animals are", 60, 370);
      text("sometmes used", 60, 400);
      text("Musician examples:", 60, 450);

      textSize(20);
      text("Kevin Conneff", 60, 480);
      text("Mel Mercier", 60, 510);
    } else if (flutepage == true)
    {
      fill(255);
      rect(-10, -10, 850, 850);

      flutesample.play();

      fill(0);
      textSize(30);
      text("Back", 50, 50);

      textSize(50);
      text("Flute", 350, 100);

      image(flute, 450, 300);

      textSize(30);
      text("A woodwind instrument.", 60, 150);
      text("The main difference between the", 60, 200);
      text("Irish flute and an orchestral flute", 60, 230);
      text("is that the Irish flute is wooden.", 60, 260);
      text("It was not actually invented", 60, 310);
      text("in Ireland, but instead brought", 60, 340);
      text("over from England, which later", 60, 370);
      text("switched to metallic flutes.", 60, 400);
      text("Musician examples:", 60, 450);

      textSize(20);
      text("Matt Molloy", 60, 480);
      text("Seamus Tansey", 60, 510);
    } else if (fiddlepage == true)
    {
      fill(255);
      rect(-10, -10, 850, 850);

      fiddlesample.play();

      fill(0);
      textSize(30);
      text("Back", 50, 50);

      textSize(50);
      text("Fiddle", 350, 100);

      image(fiddle, 450, 300, width/2, height/2);

      textSize(30);
      text("A string instrument.", 60, 150);
      text("This traditional instrument", 60, 200);
      text("derives from the Byzantine lira", 60, 230);
      text("and does not differ in shape.", 60, 260);
      text("to a violin.", 60, 290);
      text("The only difference between the two", 60, 340);
      text("is that in Irish tradition the fiddle", 60, 370);
      text("is played lower on the shoulder.", 60, 400);
      text("Musician examples:", 60, 450);

      textSize(20);
      text("Frankie Gavin", 60, 480);
      text("Paddy Glackin", 60, 510);
    } else if (tinpage == true)
    {
      fill(255);
      rect(-10, -10, 850, 850);

      tinsample.play();

      fill(0);
      textSize(30);
      text("Back", 50, 50);

      textSize(50);
      text("Tin Whistle", 350, 100);

      image(tin, 450, 300);

      textSize(30);
      text("An iconic woodwind instrument", 60, 150);
      text("seen in many classrooms across Ireland.", 60, 180);
      text("It comes in many different keys,", 60, 230);
      text("but the most common is D", 60, 260);
      text("with the second most common being C.", 60, 290);
      text("The tin whistle is most comonly", 60, 340);
      text("made from brass or nickel-plated", 60, 370);
      text("brass.", 60, 400);
      text("Musician examples:", 60, 450);

      textSize(20);
      text("Mary Bergin", 60, 480);
      text("Paddie Maloney", 60, 510);
    } else if (uilleannpage == true)
    {
      fill(255);
      rect(-10, -10, 850, 850);

      uilleannsample.play();

      fill(0);
      textSize(30);
      text("Back", 50, 50);

      textSize(50);
      text("Uilleann Pipes", 350, 100);

      image(uilleann, 450, 300);

      textSize(30);
      text("The bagpipes of Ireland.", 60, 150);
      text("Uilleann pipes are most known", 60, 200);
      text("for their drone-like noise", 60, 230);
      text("and nasally tone.", 60, 260);
      text("The word 'uilleann' comes", 60, 310);
      text("from the Irish word", 60, 340);
      text("for elbow. This word is used as", 60, 370);
      text("this instrument is held", 60, 400);
      text("between the elbow and", 60, 430);
      text("the body as well as utilising.", 60, 460);
      text("the elbow to play.", 60, 490);
      text("Musician examples:", 60, 540);

      textSize(20);
      text("Seamus Ennis", 60, 570);
      text("Willie Clancy", 60, 600);
    } else if (harppage == true)
    {
      fill(255);
      rect(-10, -10, 850, 850);

      harpsample.play();

      fill(0);
      textSize(30);
      text("Back", 50, 50);

      textSize(50);
      text("Harp", 350, 100);

      image(harp, 450, 300);

      textSize(30);
      text("A national symbol of Ireland.", 60, 150);
      text("This string instrument is seen", 60, 200);
      text("in both traditional Irish music", 60, 230);
      text("and orchestral music.", 60, 260);
      text("Harps rose to prominence", 60, 310);
      text("during the Medieval era", 60, 340);
      text("and stuck around since.", 60, 370);
      text("Traditional Irish harps have", 60, 420);
      text("30 strings, though this number", 60, 450);
      text("can vary.", 60, 480);
      text("Musician examples:", 60, 530);

      textSize(20);
      text("Derek Bell", 60, 560);
      text("Laoise Kelly", 60, 590);
    }
  }
}

/* this function stops the music on each topic page
 it is used when the homepage is called from a topic page */
void pause()
{
  jig.pause();
  hornpipe.pause();
  reel.pause();
  bodhransample.pause();
  flutesample.pause();
  fiddlesample.pause();
  tinsample.pause();
  uilleannsample.pause();
  harpsample.pause();
}

/* the design of the homepage
 it is called in the beginning and when 'back' is clicked
 from a topic page */
void homepage()
{
  fill(137, 207, 240);
  rect(-10, -10, 820, 820);

  image(ireland, 400, 250, width/2, height/2);

  fill(0);
  text("Play", 400, 675);
  text("Pause", 475, 675);

  textSize(50);
  text("Learning Irish Music", 200, 100);

  textSize(40);
  text("Dances", 75, 150);

  textSize(30);
  text("Jig", 75, 200);
  text("Reel", 75, 240);
  text("Hornpipe", 75, 280);

  textSize(40);
  text("Instruments", 75, 350);

  textSize(30);
  text("Bodhrán", 75, 400);
  text("Flute", 75, 440);
  text("Fiddle", 75, 480);
  text("Tin Whistle", 75, 520);
  text("Uilleann Pipes", 75, 560);
  text("Harp", 75, 600);
}

void mouseClicked()
{
  // click the back button and you're taken back to the homepage
  if ((jigpage == true) || (reelpage == true) || (hornpage == true) || (bodhranpage == true) || (flutepage == true) || (fiddlepage == true) || (tinpage == true) || (uilleannpage == true) || (harppage == true))
  {
    if (mouseY >= 27 && mouseY <= 50 && mouseX >= 50 && mouseX <= 100)
    {
      home = 1;
      jigpage = false;
      reelpage = false;
      hornpage = false;
      bodhranpage = false;
      flutepage = false;
      fiddlepage = false;
      tinpage = false;
      uilleannpage = false;
      harppage = false;
    }
  }

  /* parametres for the home screen
   if the mouse has pressed one of the topic it opens
   the page of information on that topic
   */
  if (jigpage == false || reelpage == false || hornpage == false || bodhranpage == false || flutepage == false || fiddlepage == false || tinpage == false || uilleannpage == false || harppage == false || home == 1)
  {
    if (mouseY >= 652 && mouseY <= 675 && mouseX >= 400 && mouseX <= 453)
    {
      blackandtans.play(); //plays music on the homepage
    } else if (mouseY >= 652 && mouseY <= 675 && mouseX >= 475 && mouseX <= 547)
    {
      blackandtans.pause();
    } else if (mouseY >= 177 && mouseY <= 200 && mouseX >= 75 && mouseX <= 109)
    {
      jigpage = true;
      blackandtans.pause();
    } else if (mouseY >= 217 && mouseY <= 240 && mouseX >= 75 && mouseX <= 125)
    {
      reelpage = true;
      blackandtans.pause();
    } else if (mouseY >= 257 && mouseY <= 280 && mouseX >= 75 && mouseX <= 190)
    {
      hornpage = true;
      blackandtans.pause();
    } else if (mouseY >= 377 && mouseY <= 400 && mouseX >= 75 && mouseX <= 180)
    {
      bodhranpage = true;
      blackandtans.pause();
    } else if (mouseY >= 417 && mouseY <= 440 && mouseX >= 75 && mouseX <= 139)
    {
      flutepage = true;
      blackandtans.pause();
    } else if (mouseY >= 457 && mouseY <= 480 && mouseX >= 75 && mouseX <= 150)
    {
      fiddlepage = true;
      blackandtans.pause();
    } else if (mouseY >= 497 && mouseY <= 520 && mouseX >= 75 && mouseX <= 210)
    {
      tinpage = true;
      blackandtans.pause();
    } else if (mouseY >= 537 && mouseY <= 560 && mouseX >= 75 && mouseX <= 253)
    {
      uilleannpage = true;
      blackandtans.pause();
    } else if (mouseY >= 577 && mouseY <= 600 && mouseX >= 75 && mouseX <= 134)
    {
      harppage = true;
      blackandtans.pause();
    }
  }
}
