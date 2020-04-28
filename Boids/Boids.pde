Flock flock;

int startingBoids = 150;
int boidsPerClick = 20;


void setup() 
{
  size(800, 800);
  flock = new Flock();
  // Add an initial set of boids into the system
  for (int i = 0; i < startingBoids; i++) 
  {
    flock.addBoid(new Boid(width/2,height/2));
  }
}

void draw() 
{
  background(50);
  flock.run();
}

// Add a new boid into the System
void mousePressed() 
{
  for (int i = 0; i < boidsPerClick; i++) 
  {
      flock.addBoid(new Boid(mouseX,mouseY));
  }
  println(flock.boids.size());
}
