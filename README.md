💗🎀 FPGA Snake Game – Basys 3 Edition 🎀💗
<div align="center"> <p style="font-size: 18px;"> A super-cute, hardware-powered Snake Game built with love (and Verilog 💅). Play your fav retro game on a real FPGA — complete with VGA output & adorable pastel aesthetics! </p> <img src="YOUR_IMAGE_LINK_HERE" width="600" style="border-radius: 20px; margin-top: 10px;"/> </div>
🌸✨ Features ✨🌸
<div style="background: #ffe6f3; padding: 15px; border-radius: 15px; border: 2px solid #ffb6d9;">

💕 Full hardware implementation — no CPU, only pure logic magic

🌈 640×480 VGA output with smooth + cute visuals

🐍 Snake movement, growth & collision logic

🍬 Random food generator using LFSR

✨ Modular Verilog design (clean & aesthetic)

🎮 Push-button controls on the Basys 3

💗 Totally kawaii retro gaming vibe

</div>
💞 Project Structure 💞
📁 vga_controller.v      → Handles VGA timing (the screen queen 👑)
📁 snake_logic.v         → Core snake movement + collisions 🐍✨
📁 lfsr_random.v         → Generates cute random food 🍬
📁 input_controller.v    → Button debouncing 💅
📁 score_count.v         → Score logic 🌸
📁 seg_7_disp.v          → 7-segment display driver 🔢💗
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

<div align="center"> <p style="font-style: italic; color:#d47ca6;"> Your full architecture — clean, modular, and adorable ✨ </p> </div>
🎮 How to Play 🎮
<div style="background: #fff0f7; padding: 15px; border-radius: 12px; border: 2px solid #ffb6d9; width: 70%; margin: auto;">

⬆️ BTNU – Up

⬇️ BTND – Down

⬅️ BTNL – Left

➡️ BTNR – Right

Eat the food, grow longer, avoid crashing — and slay the FPGA world 💖🐍✨

</div>
🌷 Setup Instructions 🌷

Open project in Vivado

Click Synthesize ✨

Generate the bitstream 💎

Program the Basys 3 board 🌸

Connect a VGA monitor 💗

🧁 Final Notes 🧁

This project is perfect for learning:

FPGA design fundamentals

VGA timing + sync signals

Modular hardware design

Digital logic

How to make engineering ✨aesthetic✨
