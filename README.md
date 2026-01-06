# AlphaCatch: x86 Real-Time Assembly Game

## Project Overview

AlphaCatch is a 16-bit arcade application developed in x86 Assembly Language (NASM). Built as a final project for the Computer Organization and Assembly Language (COAL) curriculum, this software demonstrates proficiency in low-level system architecture, direct hardware manipulation, and custom interrupt handling within a DOS environment.

The application bypasses standard BIOS routines to interact directly with video memory and hardware interrupts, resulting in a high-performance, flicker-free real-time rendering engine.

## Technical Architecture

This project implements several advanced low-level programming concepts:

### 1. Direct Video Memory Access (DMA)
Instead of relying on slow DOS interrupts (INT 21h) for output, the engine writes directly to the Video Graphics Array (VGA) memory segment at `0xB800`.
* **Performance:** Achieves zero-latency updates and eliminates screen tearing.
* **Double Buffering:** Implements a screen save/restore mechanism to preserve the user’s original command prompt state upon application exit.

### 2. Custom Interrupt Service Routines (ISRs)
Standard hardware interrupts were hooked and replaced with custom handlers to manage concurrency.
* **Keyboard ISR (INT 0x09):** A non-blocking input handler was developed to process scancodes directly from the keyboard controller ports. This allows for N-key rollover simulation, enabling simultaneous movement for multiplayer modes and "Shift" key speed modifiers without input buffer delays.
* **Timer ISR (INT 0x08):** Manages the game loop, physics calculations, and the countdown clock independently of the rendering cycle.

### 3. Algorithmic Logic
* **Linear Congruential Generator (LCG):** A custom implementation of the LCG algorithm utilizes the system timer to seed pseudo-random number generation for dynamic character spawning.
* **Collision Detection:** Real-time logic compares memory offsets of the player sprites against falling objects to determine valid "catches" or "misses."

## Game Specifications

### Modes of Operation
* **Single Player:** The user controls a primary collection basket. Difficulty scales dynamically; as the score increases, the drop velocity of characters accelerates.
* **Multiplayer (Co-operative):** Two users share the same input interface. The custom ISR allows independent control of two separate baskets simultaneously on the same screen.

### Controls Interface

| Action | Player 1 Keybind | Player 2 Keybind |
| :--- | :--- | :--- |
| **Lateral Movement** | Left / Right Arrow | A / D |
| **Velocity Boost** | Shift (Hold) | Shift (Hold) |
| **Menu Navigation** | Up / Down Arrow | N/A |
| **Confirm Selection** | Enter | N/A |
| **Terminate Program** | Esc | N/A |

## Setup and Execution

### Prerequisites
To compile and execute this 16-bit application on modern architecture, the following tools are required:
* **NASM:** The Netwide Assembler for building the source.
* **DOSBox:** An x86 emulator for the runtime environment.

### Build Instructions

1.  **Clone the Repository**
    ```bash
    git clone https://github.com/rauf-babar/Alphabet-Catcher.git
    cd Alphabet-Catcher
    ```

2.  **Assemble the Source**
    Compile the assembly file into a `.COM` executable using NASM:
    ```bash
    nasm main.asm -f bin -o main.com
    ```

### Runtime Instructions

1.  Launch **DOSBox**.
2.  Mount the project directory as a virtual drive (ensure the path matches your local directory):
    ```dos
    mount c C:\path\to\AlphaCatch-Assembly
    c:
    ```
3.  Execute the binary:
    ```dos
    main.com
    ```


## Gameplay Demonstration

https://github.com/user-attachments/assets/9f376213-4b57-4676-bfd4-e2679b5b1181

