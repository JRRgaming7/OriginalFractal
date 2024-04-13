public void setup() {
    size(500, 500);
    rectMode(CENTER);
}

public void draw() {
    background(0);
    myFractal(250, 250, 300, 4); 
}

public void myFractal(int x, int y, int size, int depth) {
    if (depth <= 0) {
        return; 
    }

    rect(x, y, size, size);

    
    int newSize = size * 2 / 3;

   
    myFractal(x - newSize / 2, y, newSize, depth - 1); // Left
    myFractal(x + newSize / 2, y, newSize, depth - 1); // Right
    myFractal(x, y - newSize / 2, newSize, depth - 1); // Up
    myFractal(x, y + newSize / 2, newSize, depth - 1); // Down
}
