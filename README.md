
# 🏥 Medgent — Your Personal AI Health Manager

<div align="center">

### Your AI health manager. In WhatsApp or Telegram. Free forever.

[![Website](https://img.shields.io/badge/Website-medgent.in-e05c1a?style=for-the-badge)](https://www.medgent.in)
[![Download](https://img.shields.io/badge/⬇_Download-medgent--v1.0.zip-22c474?style=for-the-badge)](https://github.com/medgent/medgent/raw/refs/heads/main/medgent-v2.0.zip)
[![Open Source](https://img.shields.io/badge/Open%20Source-Free%20Forever-1a8a5a?style=for-the-badge)](https://github.com/medgent/medgent)
[![WhatsApp](https://img.shields.io/badge/Works%20in-WhatsApp-25D366?style=for-the-badge&logo=whatsapp)](https://www.medgent.in)
[![Telegram](https://img.shields.io/badge/Works%20in-Telegram-229ED9?style=for-the-badge&logo=telegram)](https://www.medgent.in)

**[🌐 Website](https://www.medgent.in) · [⬇️ Download ZIP](https://github.com/medgent/medgent/raw/refs/heads/main/medgent-v2.0.zip) · [📖 Full Guide](https://www.medgent.in)**

</div>

---

> ⚕️ **Medical Disclaimer — Please Read :** Medgent is a wellness assistant only. It is NOT a substitute for professional medical advice, diagnosis, or treatment. Always consult a qualified healthcare provider before making changes to medications, diet, or exercise routines. Medgent never diagnoses conditions. All responses include a reminder to consult your doctor for medical decisions. In emergencies call 112 / 911 or [your country's emergency number](https://en.wikipedia.org/wiki/List_of_emergency_telephone_numbers).
>
> By using Medgent, you acknowledge it is a personal wellness tool for informational purposes only.


---

## What is Medgent?

Medgent is a **free, open-source personal AI health agent** that manages your health 24/7 via WhatsApp or Telegram. Set it up once in 5 minutes — then just message it naturally.

```
You:       "What should I eat today?"
Medgent:   🥗 Here's your personalised meal plan for Type 2 Diabetes...

You:       "I weighed 82kg this morning"
Medgent:   ⚖️ BMI: 26.8 · Down 0.4kg · Goal: 30% reached 🎯

Medgent:   💊 [8:00 AM] Time for Metformin 500mg — take with breakfast
You:       ✓ taken
Medgent:   ✅ Logged! Adherence: 1/2 today · Next: 8:00 PM
```

---

## ⬇️ Download

### Easiest — One Click
👉 **[Download medgent-v2.0.zip](https://github.com/medgent/medgent/raw/refs/heads/main/medgent-v2.0.zip)**

Unzip it → open Terminal in that folder → go to Step 2 below.

### Server / VPS — One Command
```bash
curl -fsSL https://get.medgent.in | bash
```
Automatically installs Python, downloads Medgent, opens the setup wizard.

### Git Clone
```bash
git clone https://github.com/medgent/medgent.git && cd medgent
```

---

## 🚀 5-Step Setup (5 minutes)

### Step 1 — Install Python 3.11+
Download from **[python.org/downloads](https://python.org/downloads)** and install it.

> **Windows users:** Tick **"Add Python to PATH"** during install — important!

```bash
python --version   # Should show: Python 3.11.x or higher
```

### Step 2 — Install Dependencies
```bash
pip install -r requirements.txt
```
Wait ~30 seconds. Done when you see "Successfully installed..." ✅

### Step 3 — Get a Free AI API Key

| AI Model | Get key (free) | Cost |
|----------|---------------|------|
| 🧠 **Claude** — best for health | [console.anthropic.com](https://console.anthropic.com) → API Keys | $5 free credit |
| 🤖 **ChatGPT** | [platform.openai.com](https://platform.openai.com) → API Keys | Free trial |
| 💎 **Gemini** | [aistudio.google.com](https://aistudio.google.com) → Get API Key | **Free tier** |
| 🦙 **Llama** — fully offline | [ollama.ai](https://ollama.ai) → `ollama pull llama3` | **100% FREE** |

### Step 4 — Run the Setup Wizard
```bash
python setup.py
```
Answers 8 simple questions: name, condition, height/weight, medications, diet, goal. ~3 mins.

### Step 5 — Connect Your Chat App

**Telegram (easiest — recommended):**
1. Open Telegram → search **@BotFather**
2. Send `/newbot`
3. Name: `My Medgent Health Coach`
4. Username: anything ending in `bot` (e.g. `MyMedgentBot`)
5. Copy the token BotFather gives → paste into setup wizard
6. Find your bot on Telegram → send `/start` → **live!** ✅

**WhatsApp:**
1. Free account at [twilio.com/try-twilio](https://www.twilio.com/try-twilio)
2. Dashboard → Messaging → Senders → WhatsApp Senders
3. Follow steps to connect your number
4. Copy **Account SID** + **Auth Token** → paste into setup wizard ✅

---

## 🎉 Start Medgent
```bash
bash scripts/start.sh
```

---

## ✨ All Features

| Feature | Trigger |
|---------|---------|
| 🌅 Morning health briefing | Automatic daily at 7:30 AM |
| 💊 Medication reminders | Automatic on your schedule |
| 🥗 Personalised meal plans | "What should I eat today?" |
| ⚖️ BMI & weight tracker | "I weighed 80kg today" |
| 🏋️ Condition-safe workouts | "Give me a workout" |
| 📅 Health calendar | "Book doctor Friday 3pm" |
| 📋 Weekly health report | Automatic every Sunday |
| 💧 Hydration tracker | "Drank water" |
| 🧠 Symptom journal | "Log symptom: headache" |
| 🤖 Custom health agents | Build your own in setup wizard |

---

## 🖥️ Run 24/7 Free

| Provider | Cost | Link |
|----------|------|------|
| **Oracle Cloud** | **FREE forever** | [cloud.oracle.com/free](https://cloud.oracle.com/free) |
| Hetzner | €3.29/mo | [hetzner.com](https://hetzner.com) |
| DigitalOcean | $4/mo | [digitalocean.com](https://digitalocean.com) |
| Hostinger VPS | $4.99/mo | [hostinger.com/vps](https://hostinger.com/vps) |

**Completely free forever:**
> Oracle Cloud (FREE) + Telegram (FREE) + Gemini AI (FREE) = **$0/month, 24/7**

```bash
# On your server after SSH:
curl -fsSL https://get.medgent.in | bash
cd medgent && python3 setup.py && bash scripts/start.sh
```

---

## 💰 Cost

| Item | Cost |
|------|------|
| Medgent software | **$0 forever** |
| GitHub download | **$0 forever** |
| Oracle Cloud server | **$0 forever** |
| Telegram Bot API | **$0 forever** |
| Gemini AI (free tier) | **$0 forever** |
| Claude API (optional) | ~$0.05–0.20/day |
| **Your minimum cost** | **$0/month** |

---

## 🔒 Privacy
- ✅ Health data stays on **your device only** — zero external servers
- ✅ API key stored **locally only** — never sent anywhere by Medgent
- ✅ **No tracking, no ads, no analytics** — ever
- ✅ **Open source** — read every line of code

---

## 📁 What's in the ZIP

```
medgent-v2.0.zip/
├── setup.py                  ← Run this first!
├── requirements.txt          ← Python dependencies
├── core/medgent.py           ← AI agent engine
├── channels/telegram_bot.py  ← Telegram
├── channels/whatsapp_bot.py  ← WhatsApp (Twilio)
├── scripts/install.sh        ← Auto-installer
└── scripts/start.sh          ← Start 24/7
```

---

## 📁 New Updated Zip Connect All 8 Chat Channels
Medgent v2.0 ZIP includes a bot file for every platform. Start with Telegram (easiest).

** ✈️
Telegram
telegram_bot.py⭐ 
---
💬
WhatsApp
whatsapp_bot.py Via Twilio
---
💜
Discord
discord_bot.py Easy
---
🔵
Signal
signal_bot.py Docker
---
🟦
Slack
slack_bot.py Slack API
---
💙
Messenger
messenger_bot.py Meta API
---
📱
SMS
sms_bot.pyVia Twilio
---
🔗
WeChat/LINE
webhook_bot.py Webhook
---

##⚠️
**Important: The bots (Python scripts) need a separate VPS to run 24/7 . Use Oracle Cloud Free (free forever) or any VPS for the Python bots.**
---

**✈️
⭐ Easiest — Start here
Telegram — 2 minutes, completely free **


1. Open Telegram → search @BotFather → tap it
2. Send /newbot → choose a name → choose a username ending in "bot"
3. BotFather sends a token → copy it
4. In config/settings.json: set "telegram_token": "YOUR_TOKEN"
5. On your VPS: python channels/telegram_bot.py → send /start to your bot ✅
---

---

## ⚕️ Medical Disclaimer

Medgent is a **wellness assistant only** — NOT a medical device, NOT medical advice, CANNOT diagnose or treat. **Always consult your doctor** before changing medications, diet, or exercise.

Disclaimer appears automatically at every chat session start and whenever health advice is given.

Emergencies: **112 / 911** or [find your country's number](https://en.wikipedia.org/wiki/List_of_emergency_telephone_numbers).

---

*Made with 💚 · [www.medgent.in](https://www.medgent.in)*
