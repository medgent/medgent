## Hi there 👋

Medical Disclaimer — Please Read Medgent is a wellness assistant only. It is NOT a substitute for professional medical advice, diagnosis, or treatment. Always consult a qualified healthcare provider before making changes to medications, diet, or exercise routines. Medgent never diagnoses conditions. All responses include a reminder to consult your doctor for medical decisions. In an emergency, call emergency services immediately (112 / 911 or your countries respective emergency numbers {  (https://en.wikipedia.org/wiki/List_of_emergency_telephone_numbers) }).

By using Medgent, you acknowledge it is a personal wellness tool for informational purposes only.

------------------------------------------------------------------------------------------------------------------------------------------

Run Medgent on Your Phone or Computer Start here if you just want to try Medgent. No server needed — runs right on your device.

1 Install Python (takes 2 minutes) Python is the language Medgent is written in. It's free. 1a 🆓 Free Download Python Go to python.org/downloads — click the big yellow button. Run the installer. Done.

💡 Windows users: When the installer opens, tick the box that says "Add Python to PATH" — this is important! Then click Install Now. 1b ⏱ 30 seconds Verify Python installed Open Terminal (Mac/Linux) or Command Prompt (Windows) and type:

Terminal python --version

Should show: Python 3.11.x or higher
2 Download and Set Up Medgent Get the code and run the wizard. 2a ⬇️ Download Download the ZIP file Click the big download button above, or use this command:

Terminal copy git clone https://github.com/medgent/medgent.git cd medgent 📌 No Git? Just download the ZIP from the button above, unzip it, then open Terminal in that folder. 2b ⏱ 1 minute Install dependencies This installs all the helper libraries Medgent needs.

Terminal — inside the medgent folder copy pip install -r requirements.txt

Wait ~30 seconds while packages download...
You'll see "Successfully installed..." when done ✅
2c ✨ Easiest step Run the Setup Wizard This guided wizard asks you 8 questions and sets everything up automatically.

Terminal copy python setup.py 🎯 The wizard guides you step by step. It's like filling out a form. You'll choose your AI (Claude, ChatGPT, etc.), connect your chat app, and set your health profile. 2d Start Medgent! Once setup is complete, run this to start your health manager:

Terminal bash scripts/start.sh

OR for Telegram only:
python channels/telegram_bot.py

OR for WhatsApp only:
python channels/whatsapp_bot.py 🎉 That's it! Open your Telegram or WhatsApp and message your Medgent bot. Send /start on Telegram to begin. Part B Upload Medgent to GitHub This makes your Medgent version available to anyone in the world to download. It's like creating your own app store listing — free forever on GitHub.

ℹ️ Why GitHub? GitHub is like Google Drive for code. Millions of developers use it. When you put Medgent on GitHub, anyone anywhere in the world can download and run it with one click. And it's completely free. 1 Create Your Free GitHub Account Takes 2 minutes. Like signing up for Gmail. 1 🆓 Free forever Sign up at github.com Go to github.com → Click "Sign up" → Enter email, password, username → Done. Free plan is everything you need.

2 Create a New Repository A "repository" is just a folder for your code on GitHub. 2a Click "New repository" On GitHub, click the green "New" button (or go to github.com/new)

📝 Fill in: Repository name: medgent Description: Personal AI Health Manager — Open Source Visibility: ✅ Public (so anyone can download it) Add README: ✅ Yes Then click "Create repository" 3 Upload Your Medgent Files Two ways — use whichever is easier for you. 3A 👆 Easiest — No Terminal Upload via GitHub website Drag and drop your files directly in the browser.

On your new GitHub repository page, click "uploading an existing file" Drag and drop your entire medgent folder into the window Scroll down and click "Commit changes" Done! ✅ Your code is live at github.com/YOUR-USERNAME/medgent 3B ⌨️ Terminal Method Upload via terminal (Git commands) Faster once you know it. Replace YOUR-USERNAME with your GitHub username.

Terminal — inside your medgent folder copy

Initialize Git in your medgent folder
git init git add . git commit -m "Initial Medgent release 🏥" git branch -M main git remote add origin https://github.com/YOUR-USERNAME/medgent.git git push -u origin main

✅ Done! Your code is now on GitHub
🌍 Your Medgent is now live! Anyone in the world can now visit github.com/YOUR-USERNAME/medgent and download it. Share this link everywhere! YOUR GITHUB PAGE WILL LOOK LIKE THIS: 📁 YOUR-USERNAME / medgent ⭐ 0 stars 🍴 0 forks 👁 1 watching 📁 channels/ telegram_bot.py · whatsapp_bot.py 📁 core/ medgent.py 📁 scripts/ install.sh · start.sh 📄 README.md 📄 requirements.txt 📄 setup.py README.md

🏥 Medgent — Personal AI Health Manager
Open Source · Free · WhatsApp & Telegram · Claude AI Part C Make Medgent Run 24/7 For proactive reminders (morning briefings, medication alerts) to work even when your phone is off, you need a server that runs all the time. Here are the free options.

💡 Oracle Cloud is completely FREE forever — 4 CPUs and 24GB RAM at zero cost. It's perfect for Medgent. Takes 10 minutes to set up. 1 Choose a Free Server All of these work. Oracle is the best free option. Provider Cost How to get it Rating Oracle Cloud FREE forever cloud.oracle.com/free → Create account ⭐⭐⭐⭐⭐ Best Hetzner €3.29/month hetzner.com → Cloud → Create Server ⭐⭐⭐⭐⭐ Best paid DigitalOcean $4/month digitalocean.com → Droplets → Create ⭐⭐⭐⭐ Easy Hostinger VPS $4.99/month hostinger.com/vps ⭐⭐⭐⭐ Good support Your computer FREE Just leave it running ⭐⭐ Not 24/7 2 Connect to Your Server Use SSH — like a remote control for your server. 2 Open a connection to your server Your VPS provider gives you an IP address (looks like 123.45.67.89). Use it here:

Terminal on YOUR computer ssh root@YOUR-SERVER-IP

Example: ssh root@123.45.67.89
Enter the password your VPS provider gave you
You're now INSIDE your server! 🎉
💻 Windows users: Use Windows Terminal or download PuTTY (free) to connect via SSH. Or use the "Console" button on your VPS provider's website — no download needed. 3 Install & Start Medgent on the Server Copy and paste — that's literally all you do. 3 🚀 One command Install Medgent on your server Paste this in your server terminal. It automatically installs everything.

Server Terminal (after SSH) copy

Step 1: Install Medgent (downloads everything)
curl -fsSL https://raw.githubusercontent.com/medgent/medgent/main/scripts/install.sh | bash

Step 2: Go into the medgent folder
cd medgent

Step 3: Run setup wizard
python3 setup.py

Step 4: Start running 24/7
bash scripts/start.sh 🎊 Medgent is now running 24/7! You can close your terminal and your server keeps running. Your morning briefings, medication reminders, and weekly reports will all be delivered automatically — even when your phone is off. Part D How Messages Reach Your Phone Here's the complete picture of how Medgent works end-to-end.

👤 You send "What should I eat?" → 💬 WhatsApp or Telegram → 🖥️ Your server (medgent.py) → 🧠 Claude AI API call → 📱 Reply arrives in 3 seconds Connect Your Messaging App ✈️ Telegram Easiest option. Free forever. Create a bot with @BotFather in 60 seconds.

Open Telegram → search @BotFather Send /newbot Name it My Medgent Copy the token → paste in setup.py ⭐ Easiest 💬 WhatsApp Needs a free Twilio account. $15 free credit when you sign up.

Create free account at twilio.com Go to Messaging → WhatsApp Sandbox Scan the QR code with your phone Copy SID + Token → paste in setup.py Popular choice 🌐 Web Browser No messaging app needed. Just open a URL in your browser.

Run: python channels/web_server.py Open http://localhost:5050 Chat directly in your browser No setup What You Receive Every Day 🏥 Medgent Health Coach 🟢 Online · Always on 🌅 Good morning, Sarah!

💊 Metformin 500mg at 8AM 🥗 Breakfast: Oats + almond milk 💧 Goal: 8 glasses of water 🏋️ Tip: Walk 20 mins after lunch

⚕️ Wellness assistant — consult your doctor for medical decisions. I weighed 79.2kg today ⚖️ BMI: 26.1 (Overweight range) ↓ 0.3kg from last week! Goal: 72kg · Progress: 34% 🎯

Keep it up! 💚 Part E What Does It All Cost? Complete cost breakdown. Medgent itself is free. These are the only external costs.

Medgent software $0 — Free forever GitHub hosting (your code) $0 — Free forever Oracle Cloud server (24/7) $0 — Free forever Telegram Bot API $0 — Free forever Claude API (typical daily use) ~$0.05–0.20/day Twilio WhatsApp (if used) ~$0.005/message Your TOTAL cost to run Medgent $0 — $5/month max 🆓 100% free option: Use Oracle Cloud (free VPS) + Telegram (free bot) + Gemini AI (free tier) = Medgent running 24/7 at zero cost, forever. Checklist Your Complete Setup Checklist Download Medgent ZIP from GitHub Install Python 3.11+ Run pip install -r requirements.txt Get a free API key (Claude / Gemini / ChatGPT) Run python setup.py and answer 8 questions Connect Telegram (easiest) or WhatsApp Start Medgent with bash scripts/start.sh Send /start to your bot and get your first message Optional: Upload to GitHub so others can use it Optional: Deploy on free Oracle Cloud server for 24/7 use 🎉 You're ready! Medgent is live. Your AI health manager will send you daily briefings, medication reminders, meal plans, BMI updates, and weekly reports — all in WhatsApp or Telegram.

⬇️ Download Medgent Now — Free



<!--
**medgent/medgent** is a ✨ _special_ ✨ repository because its `README.md` (this file) appears on your GitHub profile.

Here are some ideas to get you started:

- 🔭 I’m currently working on ...
- 🌱 I’m currently learning ...
- 👯 I’m looking to collaborate on ...
- 🤔 I’m looking for help with ...
- 💬 Ask me about ...
- 📫 How to reach me: ...
- 😄 Pronouns: ...
- ⚡ Fun fact: ...
-->
