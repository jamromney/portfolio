# Jake Romney's Programming Portfolio | 2026

## Term 1 Projects

### Calculator (2025)

The Graphical Calculator is an interactive desktop application built in Processing, a Java-based programming environment for visual design and computation. The goal of the project was to create a clean, functional calculator interface that handles both basic arithmetic and a selection of scientific operations, all controlled through clickable, on-screen buttons. The calculator was developed entirely from scratch, including its button system, display logic, and event handling, in a single Processing file named Calculator.pde.

The user interface is rendered on a 240×450 pixel canvas with a soft light-blue background (#C2DEFA) and a white display area at the top that shows the current input or result. The display text automatically scales to fit larger numbers, ensuring readability. Each button—whether numeric, operator, or scientific—is represented by a custom Button class that manages its position, label, color, and hover interaction. This design gives the calculator a dynamic, responsive feel, with subtle hover effects that provide immediate feedback to the user.

Behind the scenes, the calculator’s logic is built around a few core variables and a simple state-management system. Two floating-point operands (l and r) represent the left and right sides of a calculation, while result stores the outcome. The program keeps track of the active operator in a char variable op, and a boolean flag left determines whether the user is currently entering the first or second operand. Input is handled through mouse events—when a number button is pressed, it updates the active operand; when an operator is pressed, it stores the operation and shifts input focus. Pressing the equals button performs the calculation and updates the display in real time. Scientific and special functions—such as square, square root, logarithm, π, and sign toggle—operate directly on the current operand, while the clear button (C) resets the calculator to its default state.

From a technical standpoint, the project showcases several key programming skills: object-oriented design, event-driven input handling, and real-time UI rendering. Arrays are used to efficiently store and manage groups of buttons, simplifying layout generation and input detection. Conditional logic governs operand and operator flow, ensuring the calculator behaves predictably even as users mix numeric and scientific operations. This structure demonstrates a clear understanding of both logical computation and graphical interface design in Processing.

Looking ahead, there are several directions for enhancement, including adding keyboard input, expression history, parentheses for complex operations, and more robust error handling for edge cases like divide-by-zero. Despite its simplicity, the project highlights how core programming concepts—variables, control flow, classes, and rendering—can come together to create a polished, interactive tool. It’s a solid demonstration of turning procedural logic into a cohesive visual experience within Processing.

![RunningCalculator](https://github.com/jamromney/portfolio/blob/main/images/Calc.png?raw=true)

![CalcUML](https://github.com/jamromney/portfolio/blob/main/images/CalcUML.jpg?raw=true)

* [Windows](https://github.com/jamromney/portfolio/blob/main/src/Calc/windows-amd64.zip)
* [MacOS](https://github.com/jamromney/portfolio/blob/main/src/Calc/macos-aarch64.zip)
* [SourceCode](https://github.com/jamromney/portfolio/tree/main/src/Calc/Source%20Code)

### DigiPets

Digipets is an interactive virtual pet game built in Processing (Java) that explores real-time simulation, user interaction, and state-based game design. Players care for a digital pet by managing its mood, cleanliness, and hunger through playful interactions and environmental objects.

The game features a multi-screen system (Start, Play, Menu, End, and Game Over) controlled through a centralized state manager, allowing smooth transitions and clear gameplay flow. During play, the pet responds dynamically to mouse input, moving around the environment and reacting to player actions.

Core gameplay mechanics include:

Timed events that generate waste, requiring player attention and cleanup

Drag-and-drop interaction for waste disposal using a trash can

Interactive objects such as a bath, bed, toy, and food, each affecting the pet’s internal meters

Animated feedback systems (bubbles, “Zzz” effects) to visually communicate pet states

Dynamic meter system where mood, hunger, and cleanliness influence each other over time

The project emphasizes object-oriented programming, with modular classes for game objects (Pet, Waste, Food, Bed, Bath, Meters, Buttons), making the system scalable and easy to extend. A timer-based update loop and collision/hover detection systems reinforce real-time interactivity and player engagement.
