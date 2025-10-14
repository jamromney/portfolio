# Jake Romney's Programming Portfolio | 2026

## Term 1 Projects

### Calculator (2025)

📝 Project Report

Project Title: Graphical Calculator in Processing
Author: Jake Romney
Date: September 25
Language/Platform: Processing (Java-based)
File Name: Calculator.pde

🎯 Project Objective

The objective of this project is to design and implement a fully functional graphical calculator using the Processing programming environment. The calculator supports both basic arithmetic and scientific operations and allows user interaction through clickable buttons within a visual interface.

📱 Features and Functionality
✔️ Basic Operations

Addition (+)

Subtraction (-)

Multiplication (×)

Division (÷)

Equals (=)

✔️ Scientific and Special Functions

Square (S)

Square Root (√)

Natural Logarithm (L)

Pi (π)

Sign Toggle (±)

Decimal Point (.)

Clear (C)

🧠 Program Structure
🧩 Key Components

Button Arrays:

buttons[] — an array of 12 function/operator buttons

numButtons[] — an array of 10 numeric buttons (0–9)

Core Variables:

float l, r — stores the left and right operands

float result — stores the calculation result

String dVal — string representation of the current display value

char op — stores the selected operator

boolean left — indicates which operand (left or right) is being input

🧮 Calculator Logic

When a number button is pressed, it updates either l or r depending on the left flag.

When an operator is pressed (+, -, ×, ÷), the program stores the operator and switches input to the right operand.

Pressing = triggers the calculation using the current operands and operator, storing the result in result and displaying it.

Scientific functions like square, square root, and logarithm apply directly to the current operand.

Special buttons such as π insert the value of pi, and ± toggles the sign of the current operand.

The C button resets all input and values.

🎨 User Interface

Canvas Size: 240 × 450 pixels

Design:

Calculator background color: light blue (#C2DEFA)

Buttons are styled with different colors based on their purpose (numeric, function, operator)

Hover effects are applied to buttons for better user interaction

Display Area:

A white rectangle at the top of the canvas shows the current number or result.

The font size adjusts dynamically to fit larger numbers within the display area.

🧪 Technical Skills Demonstrated

Event handling using mousePressed() and hover detection

Use of arrays and object-oriented programming (Button class)

Conditional logic and operand management

Drawing and layout using Processing graphics functions

Implementing both arithmetic and scientific operations

Dynamic user interface updates and feedback

📌 Potential Improvements

Add keyboard input support

Improve input handling (e.g., prevent multiple operators in a row)

Implement expression history or memory storage

Handle edge cases like divide-by-zero more gracefully

Add parentheses for multi-step operations

Support continuous operations without needing to reset

✅ Conclusion

This project successfully demonstrates a functional, interactive calculator interface built from scratch using Processing. It reinforces core programming concepts such as object-oriented design, event-driven input, graphical layout, and real-time user feedback, while also providing an introduction to building custom GUI applications.

![RunningCalculator](https://github.com/jamromney/portfolio/blob/main/images/Calc.png?raw=true)

* [Windows](https://github.com/jamromney/portfolio/blob/main/src/Calc/windows-amd64.zip)
* [MacOS](https://github.com/jamromney/portfolio/blob/main/src/Calc/macos-aarch64.zip)
* [SourceCode](https://github.com/jamromney/portfolio/blob/main/src/Calc/Calculator.zip)
