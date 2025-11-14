# 🎀💗 FPGA Snake Game – Basys 3 Edition 💗🎀

A super cute hardware-powered Snake Game made with love (and Verilog) for the Basys 3 FPGA board! Play your favorite retro game on a real FPGA, complete with VGA output and adorable pastel aesthetics 💕✨

![FPGA Snake Game](<img width="1536" height="1024" alt=" FPGAsnake" src="https://github.com/user-attachments/assets/b8562e72-e7ed-45bb-83af-8c723c2a7584" />
)

## 🌸✨ Features ✨🌸

- 💕 **Full hardware implementation** — no CPU, just pure digital logic magic!
- 🌈 **VGA display** (640×480) with smooth, colorful graphics
- 🐍 **Snake movement, growth, & food spawning**
- 🍬 **Random food** using an LFSR (sparkle randomness!)
- 🌟 **Sweet modular Verilog design**
- 🎮 **Button controls** using the Basys 3 push-buttons
- ✨ **Cute + nostalgic gameplay vibes**

## 💞 Project Structure 💞
📁 vga_controller.v → Handles VGA timing (aka "the screen queen" 👑)
📁 snake_logic.v → The heart of the game (snake brain 🧠💚)
📁 lfsr_random.v → Pseudo-random sparkles ✨
📁 input_controller.v → Button debouncing so inputs behave nicely 💅
📁 score_count.v → Keeps track of your cute lil score 🔢🌸
📁 seg_7_disp.v → 7-seg score display driver 💗
📁 top.v / topwrapper.v → Everything comes together 💞


## 🎮 How to Play 🎮

Connect your Basys 3 to a VGA monitor, program the bitstream, and you're ready! Use the buttons to move your little snake:

- ⬆️ **BTNU** – Up
- ⬇️ **BTND** – Down  
- ⬅️ **BTNL** – Left
- ➡️ **BTNR** – Right

## 🌷 Setup Instructions 🌷

1. **Open** the project in Vivado
2. **Synthesize** ✨
3. **Generate** the bitstream 💎
4. **Program** the Basys 3 board 🌸
5. **Plug in** a VGA display 💗

## 🧁 Final Notes 🧁

This project is perfect for anyone learning about:
- FPGA design
- VGA timing  
- Digital logic
- Modular Verilog

---

*Made with 💗 for the FPGA community!*
