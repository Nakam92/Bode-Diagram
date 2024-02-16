# README - Bode Diagram

## Description
This code, created using Processing, provides a graphical interface for analyzing a series RC circuit. The interface displays a Bode plot (gain versus frequency) along with tables for resistors, capacitors, and results.

## Features
- **Bode Plot:** The top part of the interface shows a Bode plot representing the gain as a function of frequency for a series RC circuit.
- **Resistor Table:** The left side of the table presents various resistor values. By clicking on a value, the circuit's resistance is adjusted accordingly.
- **Capacitor Table:** The right side of the table presents various capacitor values. By clicking on a value, the circuit's capacitor is adjusted accordingly.
- **Results Display:** At the bottom of the interface, the current values of resistance (ZVR), capacitor (ZVC), and cutoff frequency (ZVF) are displayed.

## Usage
1. **Select Resistance:** Click on the desired resistance value in the left table.
2. **Select Capacitor:** Click on the desired capacitor value in the right table.
3. **Observe the Plot:** The Bode plot updates in real-time based on the selected values.

## Variables
- **ZVR (Resistance):** Variable representing the selected resistance value.
- **ZVC (Capacitor):** Variable representing the selected capacitor value.
- **ZVF (Cutoff Frequency):** Variable representing the calculated cutoff frequency based on resistance and capacitor.
- **bx, by, xb, yb, f, t:** Variables used for plotting the Bode plot.

## Functions
- **setup():** Initial configuration of the interface.
- **ligne():** Draws the plot and reference lines.
- **text():** Displays values on the plot.
- **textRes(), textCond(), textFreq():** Displays tables for resistors, capacitors, and frequency.
- **schema():** Draws the RC circuit schematic.
- **separ():** Draws separation lines in the tables.
- **Gain():** Draws the Bode curve based on resistor and capacitor values.
- **draw():** Main function continuously updating the interface.
- **mouseClicked():** Function executed on mouse click to adjust resistor and capacitor values.

## Author
**Makan**

---

**Note:** Make sure to have Processing installed to run this code. You can adjust resistor and capacitor values by clicking on the various options in the tables.

**[Install Processing](https://processing.org/download/)**