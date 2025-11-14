🎀💗 FPGA Snake Game – Basys 3 Edition 💗🎀

A super cute hardware-powered Snake Game made with love (and Verilog) for the Basys 3 FPGA board!
Play your fav retro game on a real FPGA, complete with VGA output and adorable pastel aesthetics 💕✨

<p align="center"> <img src="YOUR_IMAGE_LINK_HERE" width="600"> </p>
🌸✨ Features ✨🌸

💕 Full hardware implementation — no CPU, just pure digital logic magic!

🌈 VGA display (640×480) with smooth, colorful graphics

🐍 Snake movement, growth, & food spawning

🍬 Random food using an LFSR (sparkle randomness!)

🌟 Sweet modular Verilog design

🎮 Button controls using the Basys 3 push-buttons

✨ Cute + nostalgic gameplay vibes

💞 Project Structure 💞
📁 vga_controller.v      → Handles VGA timing (aka “the screen queen” 👑)
📁 snake_logic.v         → The heart of the game (snake brain 🧠💚)
📁 lfsr_random.v         → Pseudo-random sparkles ✨
📁 input_controller.v    → Button debouncing so inputs behave nicely 💅
📁 score_count.v         → Keeps track of your cute lil score 🔢🌸
📁 seg_7_disp.v          → 7-seg score display driver 💗
📁 top.v / topwrapper.v  → Everything comes together 💞


🌈💗 Module Hierarchy (Golden Layout) 💗🌈
topwrapper.v   🌸
│
├── u_master_sm      → Master State Machine 💞
├── u_nav_sm         → Navigation State Machine 🎀
├── u_snake_control  → Snake Control Logic 🐍✨
├── u_score_count    → Score Counter 💗
├── u_target_rdm_gen → Random Target Generator 🍬
├── u_seg_7_disp     → 7-Segment Display Driver 🔢💡
└── u_vga_controller → VGA Controller 🎮🌈



This is your full architecture

🎮 How to Play 🎮

Connect your Basys 3 to a VGA monitor, program the bitstream, and you’re ready!
Use the buttons to move your little snake princess:

⬆️ BTNU – Up

⬇️ BTND – Down

⬅️ BTNL – Left

➡️ BTNR – Right

Eat the food squares, grow longer, and don’t bonk into yourself! 💖🐍

🌷 Setup Instructions 🌷

Open the project in Vivado

Synthesize ✨

Generate the bitstream 💎

Program the Basys 3 board 🌸

Plug in a VGA display 💗

💐 Aesthetic Screenshot Placeholder 💐

(Add a cute screenshot of your VGA output here!)

🌸 “FPGA snake but make it kawaii.” 🌸

🧁 Final Notes 🧁

This project is perfect for anyone learning about:

FPGA design

VGA timing

Digital logic

Modular Verilog
