# Finite State Machine for 1011 Sequence Detection

This Verilog project implements a finite state machine (FSM) designed to detect the "1011" sequence. Included in this repository is the Verilog implementation for the FSM along with its test bench to verify the design.

## Design Overview

The finite state machine is designed to detect the "1011" sequence within a given input sequence. It transitions between states based on the input sequence and detects when the "1011" sequence is encountered.

## Verilog Implementation

The Verilog implementation of the FSM consists of the following components:

- Input: Sequential input signal representing the input sequence.
- Output: Signal indicating when the "1011" sequence is detected.
- States: Finite set of states representing the different states of the FSM.
- State Transition Logic: Logic to transition between states based on the input sequence.

The Verilog code for the FSM is included in the repository as `1011_sequence_detector.v`.

## Test Bench

A test bench is provided to verify the functionality of the FSM design. The test bench generates input sequences and checks for the detection of the "1011" sequence according to the FSM's behavior.

The test bench code is included in the repository as `1011_sequence_detector_tb.v`.

## Usage

To use the FSM design and test bench:

1. Instantiate the `1011_sequence_detector` module in your Verilog design.
2. Connect the input and output ports accordingly.
3. Simulate the design using the provided test bench to verify correct functionality.

