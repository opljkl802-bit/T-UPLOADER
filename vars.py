import os

raw_api_id = os.environ.get("API_ID", "30296254")
# This checks if the string is empty or None before converting
API_ID = int(raw_api_id) if raw_api_id and raw_api_id.strip() else 30296254
# ------------------------------------------------
API_HASH = os.environ.get("API_HASH", "c2b5306f4ccd2d795405a026c10b4c62")
# ----------------D--------------------------------
BOT_TOKEN = os.environ.get("BOT_TOKEN", "8712933155:AAFMd0N2QyeAGMrRQt68NKDwVqBS8Skso6o")
