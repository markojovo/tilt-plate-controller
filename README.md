# Slider and Plate State Space Control System

## Overview
This project implements a control system for a simulated slider moving across a simulated tilt plate. The system uses state-space control techniques to manipulate the slider's position by actuating the plate's rotation.

## Key Features
- Continuous-domain control system for a torque-actuated tilt plate
- Consideration of non-inertial reference frame forces (Euler and Coriolis)
- Implementation of both LQR and pole placement controllers
- Lunenburg observer for state estimation
- Simulation of various path trajectories (Astroid, Cardioid, Epicycloid)

## System Details
- Decoupled control in X and Y directions
- Nonlinear system dynamics linearized around the origin
- Full state feedback control with observer

## Implementation
- Environment: MATLAB/Simulink/SimMechanics
- Key components:
  - System plant (nonlinear dynamics)
  - LQR and pole placement controllers
  - Lunenburg observer
  - Path generation for various trajectories

## Results
- Successful control of slider position through plate actuation
- Comparison of LQR and pole placement controllers
- Demonstration of observer effectiveness
- Visualization of slider paths for different input trajectories

## Author
Marko Jovanovic

## Acknowledgements
This project was completed by Marko Jovanovic as part of MSE 483 course taught by Dr. Mehrdad Moallem

