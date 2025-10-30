// Jake Romney | 9/25 | Calculator
Button[] buttons = new Button[12];
Button[] numButtons = new Button[10];
float l, r, result;
String dVal;
char op;
boolean left;

void setup() {
  //background
  size(240, 450);
  background(#C2DEFA);

  // Vars
  l = 0.0;
  r = 0.0;
  result = 0.0;
  dVal = "0";
  op = ' ';
  left = true;

  // Number Buttons
  buttons[0] = new Button(120, 420, 105, 45, '=', #E0A100, #B48202); // =
  buttons[1] = new Button(210, 420, 45, 45, '±', #C9C9C9, #E8E8E8); // s
  buttons[2] = new Button(210, 360, 45, 45, '+', #C9C9C9, #E8E8E8); // +
  buttons[3] = new Button(210, 300, 45, 45, '-', #C9C9C9, #E8E8E8); // -
  buttons[4] = new Button(210, 240, 45, 45, 'x', #C9C9C9, #E8E8E8); // x
  buttons[5] = new Button(60, 180, 105, 45, 'C', #E0A100, #B48202); // C
  buttons[6] = new Button(150, 180, 45, 45, '.', #C9C9C9, #E8E8E8); // .
  buttons[7] = new Button(210, 180, 45, 45, '÷', #C9C9C9, #E8E8E8); // /
  buttons[8] = new Button(30, 120, 45, 45, 'π', #C9C9C9, #E8E8E8);
  buttons[9] = new Button(90, 120, 45, 45, 'S', #C9C9C9, #E8E8E8);
  buttons[10] = new Button(150, 120, 45, 45, '√', #C9C9C9, #E8E8E8);
  buttons[11] = new Button(210, 120, 45, 45, 'L', #C9C9C9, #E8E8E8);

  // Number Buttons
  numButtons[0] = new Button(30, 420, 45, 45, '0', #E8E8E8, #ADAEAF); //0
  numButtons[1] = new Button(30, 360, 45, 45, '1', #E8E8E8, #ADAEAF); // 1
  numButtons[4] = new Button(30, 300, 45, 45, '4', #E8E8E8, #ADAEAF); //4
  numButtons[7] = new Button(30, 240, 45, 45, '7', #E8E8E8, #ADAEAF); // 7
  numButtons[2] = new Button(90, 360, 45, 45, '2', #E8E8E8, #ADAEAF ); // 2
  numButtons[5] = new Button(90, 300, 45, 45, '5', #E8E8E8, #ADAEAF); // 5
  numButtons[8] = new Button(90, 240, 45, 45, '8', #E8E8E8, #ADAEAF); // 8
  numButtons[3] = new Button(150, 360, 45, 45, '3', #E8E8E8, #ADAEAF); // 3
  numButtons[6] = new Button(150, 300, 45, 45, '6', #E8E8E8, #ADAEAF); // 6
  numButtons[9] = new Button(150, 240, 45, 45, '9', #E8E8E8, #ADAEAF); // 9
}

void draw() {
  background(#C2DEFA);
  for (int i=0; i<buttons.length; i++) {
    buttons[i].display();
    buttons[i].hover(mouseX, mouseY);
  }
  for (int i=0; i<numButtons.length; i++) {
    numButtons[i].display();
    numButtons[i].hover(mouseX, mouseY);
  }
  updateDisplay();
}

void keyPressed() {
  println("key:" + key);
  println("keyCode:" + keyCode);
  if (keyCode == 107 || keyCode == 61) {
    dVal = "0";
    left = false;
    op = '+';
  } else if (keyCode == 10) {
    performCalculation();
    l = result;
  } else if (keyCode == 111 || keyCode == 47) {
    dVal = "0";
    left = false;
    op = '/';
  } else if (keyCode == 106 || keyCode == 56) {
    dVal = "0";
    left = false;
    op = '*';
  } else if (keyCode == 109 || keyCode == 45) {
    dVal = "0";
    left = false;
    op = '-';
  } else if (keyCode == 110 || keyCode ==46) {
    if (dVal.contains(".") == false) {
      dVal += ".";
    }
  } else if ((keyCode == 101 || keyCode == 53) && left == true && dVal.length() < 9) {
    if (dVal.equals("0")) {
      dVal = str(5);
      l = float(dVal);
    } else {
      dVal += str(5);
      l = float(dVal);
    }
  } else if ((keyCode == 101 || keyCode == 53) && left == false && dVal.length() < 9) {
    if (dVal.equals("0")) {
      dVal = str(5);
      r = float(dVal);
    } else {
      dVal += str(5);
      r = float(dVal);
    }
  } else if ((keyCode == 100 || keyCode == 52) && left == true && dVal.length() < 9) {
    if (dVal.equals("0")) {
      dVal = str(4);
      l = float(dVal);
    } else {
      dVal += str(4);
      l = float(dVal);
    }
  } else if ((keyCode == 100 || keyCode == 52) && left == false && dVal.length() < 9) {
    if (dVal.equals("0")) {
      dVal = str(4);
      r = float(dVal);
    } else {
      dVal += str(4);
      r = float(dVal);
    }
  } else if ((keyCode == 99 || keyCode == 51) && left == true && dVal.length() < 9) {
    if (dVal.equals("0")) {
      dVal = str(3);
      l = float(dVal);
    } else {
      dVal += str(3);
      l = float(dVal);
    }
  } else if ((keyCode == 99 || keyCode == 51) && left == false && dVal.length() < 9) {
    if (dVal.equals("0")) {
      dVal = str(3);
      r = float(dVal);
    } else {
      dVal += str(3);
      r = float(dVal);
    }
  } else if ((keyCode == 98 || keyCode == 50) && left == true && dVal.length() < 9) {
    if (dVal.equals("0")) {
      dVal = str(2);
      l = float(dVal);
    } else {
      dVal += str(2);
      l = float(dVal);
    }
  } else if ((keyCode == 98 || keyCode == 50) && left == false && dVal.length() < 9) {
    if (dVal.equals("0")) {
      dVal = str(2);
      r = float(dVal);
    } else {
      dVal += str(2);
      r = float(dVal);
    }
  } else if ((keyCode == 97 || keyCode == 49) && left == true && dVal.length() < 9) {
    if (dVal.equals("0")) {
      dVal = str(1);
      l = float(dVal);
    } else {
      dVal += str(1);
      l = float(dVal);
    }
  } else if ((keyCode == 97 || keyCode == 49) && left == false && dVal.length() < 9) {
    if (dVal.equals("0")) {
      dVal = str(1);
      r = float(dVal);
    } else {
      dVal += str(1);
      r = float(dVal);
    }
  } else if ((keyCode == 96 || keyCode == 48) && left == true && dVal.length() < 9) {
    if (dVal.equals("0")) {
      dVal = str(0);
      l = float(dVal);
    } else {
      dVal += str(0);
      l = float(dVal);
    }
  } else if ((keyCode == 96 || keyCode == 48) && left == false && dVal.length() < 9) {
    if (dVal.equals("0")) {
      dVal = str(0);
      r = float(dVal);
    } else {
      dVal += str(0);
      r = float(dVal);
    }
  } else if ((keyCode == 102 || keyCode == 54) && left == true && dVal.length() < 9) {
    if (dVal.equals("0")) {
      dVal = str(6);
      l = float(dVal);
    } else {
      dVal += str(6);
      l = float(dVal);
    }
  } else if ((keyCode == 102 || keyCode == 54) && left == false && dVal.length() < 9) {
    if (dVal.equals("0")) {
      dVal = str(6);
      r = float(dVal);
    } else {
      dVal += str(6);
      r = float(dVal);
    }
  } else if ((keyCode == 103 || keyCode == 55) && left == true && dVal.length() < 9) {
    if (dVal.equals("0")) {
      dVal = str(7);
      l = float(dVal);
    } else {
      dVal += str(7);
      l = float(dVal);
    }
  } else if ((keyCode == 103 || keyCode == 55) && left == false && dVal.length() < 9) {
    if (dVal.equals("0")) {
      dVal = str(7);
      r = float(dVal);
    } else {
      dVal += str(7);
      r = float(dVal);
    }
  } else if ((keyCode == 104 || keyCode == 56) && left == true && dVal.length() < 9) {
    if (dVal.equals("0")) {
      dVal = str(8);
      l = float(dVal);
    } else {
      dVal += str(8);
      l = float(dVal);
    }
  } else if ((keyCode == 104 || keyCode == 56) && left == false && dVal.length() < 9) {
    if (dVal.equals("0")) {
      dVal = str(8);
      r = float(dVal);
    } else {
      dVal += str(8);
      r = float(dVal);
    }
  } else if ((keyCode == 105 || keyCode == 57) && left == true && dVal.length() < 10) {
    if (dVal.equals("0")) {
      dVal = str(9);
      l = float(dVal);
    } else {
      dVal += str(9);
      l = float(dVal);
    }
  } else if ((keyCode == 105 || keyCode == 57) && left == false && dVal.length() < 10) {
    if (dVal.equals("0")) {
      dVal = str(9);
      r = float(dVal);
    } else {
      dVal += str(9);
      r = float(dVal);
    }
  }
  println("dVal full:" + dVal.length());
}


void mousePressed() {
  // All Number Buttons
  if (dVal.length() < 9) {
    for (int i = 0; i<numButtons.length; i++) {
      if (numButtons[i].over && left == true) {
        if (dVal.equals("0")) {
          dVal = str(numButtons[i].val);
          l = float(dVal);
        } else {
          dVal += str(numButtons[i].val);
          l = float(dVal);
        }
      } else if (numButtons[i].over && left == false) {
        if (dVal.equals("0")) {
          dVal = str(numButtons[i].val);
          r = float(dVal);
        } else {
          dVal += str(numButtons[i].val);
          r = float(dVal);
        }
      }
    }
  }
  // Not Number Buttons
  for (int i = 0; i<buttons.length; i++) {
    if (buttons[i].over && buttons[i].val == '+') {
      dVal = "0";
      left = false;
      op = '+';
    } else if (buttons[i].over && buttons[i].val == '=') {
      performCalculation();
      l = result;
    } else if (buttons[i].over && buttons[i].val == '.') {
      if (dVal.contains(".") == false) {
        dVal += ".";
      }
    } else if (buttons[i].over && buttons[i].val == 'S') {
      if (left) {
        l = sq(l);
        dVal = str(l);
      } else {
        r = sq(r);
        dVal = str(r);
      }
    } else if (buttons[i].over && buttons[i].val == '√') {
      if (left) {
        l = sqrt(l);
        dVal = str(l);
      } else {
        r = sqrt(r);
        dVal = str(r);
      }
    } else if (buttons[i].over && buttons[i].val == 'L') {
      if (left) {
        l = log(l);
        dVal = str(l);
      } else {
        r = log(r);
        dVal = str(r);
      }
    } else if (buttons[i].over && buttons[i].val == '-') {
      dVal = "0";
      left = false;
      op = '-';
    } else if (buttons[i].over && buttons[i].val == 'x') {
      dVal = "0";
      left = false;
      op = '*';
    } else if (buttons[i].over && buttons[i].val == '÷') {
      dVal = "0";
      left = false;
      op = '/';
    } else if (buttons[i].over && buttons[i].val == '±') {
      if (left) {
        l = l*=-1;
        dVal = str(l);
      } else {
        r *=-1;
        dVal = str(r);
      }
    } else if (buttons[i].over && buttons[i].val == 'π') {
      if (left) {
        l = PI;
        dVal = str(l);
      } else {
        r = PI;
        dVal = str(r);
      }
    }
  }

  // Logic Check
  println("l:" +  l);
  println("r:" + r);
  println("result" + result);
  println("left:" + left);
  println("op:" + op);

  // reset
  if (buttons[5].over) {
    dVal = "0";
    result = 0;
    left = true;
  }
}

void updateDisplay() {
  rectMode(CENTER);
  fill(255);
  rect(121, 45, 225, 65, 4);
  fill(0);
  textSize(45);
  textAlign(RIGHT);
  text(dVal, width-20, 60);
}

void performCalculation() {
  if (op == '+') {
    result = l + r;
  } else if (op == '-') {
    result = l - r;
  } else if (op == '*') {
    result = l * r;
  } else if (op == '/') {
    result = l / r;
  }
  dVal = str(result);
}
