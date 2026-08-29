# 4-Bit Synchronous Counter using Verilog

## Description

A **4-Bit Synchronous Counter** is a sequential digital circuit that counts binary values from `0000` to `1111`.

In a synchronous counter, all flip-flops are triggered by the **same clock signal**. The counter increments on every positive edge of the clock.

### Inputs

* `clk` – Clock signal
* `reset` – Reset signal

### Output

* `count[3:0]` – 4-bit counter output

## Counting Sequence

| Clock | Count |
| ----- | ----- |
| Reset | 0000  |
| 1     | 0001  |
| 2     | 0010  |
| 3     | 0011  |
| 4     | 0100  |
| 5     | 0101  |
| 6     | 0110  |
| 7     | 0111  |
| 8     | 1000  |
| 9     | 1001  |
| 10    | 1010  |
| 11    | 1011  |
| 12    | 1100  |
| 13    | 1101  |
| 14    | 1110  |
| 15    | 1111  |
| 16    | 0000  |

After reaching `1111`, the counter rolls over to `0000`.

## Project Files

* `synchronous_counter.v` – 4-Bit Synchronous Counter design
* `synchronous_counter_tb.v` – Testbench
* `README.md` – Project documentation
* `output.txt` – Sample simulation output

## Requirements

* Visual Studio Code
* Icarus Verilog
* GTKWave (optional)

## Compile

```bash
iverilog -o synchronous_counter_sim synchronous_counter.v synchronous_counter_tb.v
```

## Run

```bash
vvp synchronous_counter_sim
```

## Expected Output

The simulation displays the reset signal and counter value at each clock event.

```text
Time = 0   | Reset = 1 | Count = 0000
Time = 10  | Reset = 0 | Count = 0001
Time = 20  | Reset = 0 | Count = 0010
Time = 30  | Reset = 0 | Count = 0011
Time = 40  | Reset = 0 | Count = 0100
Time = 50  | Reset = 0 | Count = 0101
Time = 60  | Reset = 0 | Count = 0110
Time = 70  | Reset = 0 | Count = 0111
Time = 80  | Reset = 0 | Count = 1000
Time = 90  | Reset = 0 | Count = 1001
Time = 100 | Reset = 0 | Count = 1010
Time = 110 | Reset = 0 | Count = 1011
Time = 120 | Reset = 0 | Count = 1100
Time = 130 | Reset = 0 | Count = 1101
Time = 140 | Reset = 0 | Count = 1110
Time = 150 | Reset = 0 | Count = 1111
Time = 160 | Reset = 0 | Count = 0000
```

## Working Principle

The counter increments by one at every positive edge of the clock.

```text
Count = Count + 1
```

The sequence is:

```text
0000 → 0001 → 0010 → 0011 → 0100
  → 0101 → 0110 → 0111 → 1000
  → 1001 → 1010 → 1011 → 1100
  → 1101 → 1110 → 1111 → 0000
```

The reset input sets the counter back to `0000`.

## Author

4-Bit Synchronous Counter using Verilog HDL.
