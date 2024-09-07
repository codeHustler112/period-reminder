#!/bin/bash

LAST_PERIOD="2024-08-21"

REMINDER_DATE=$(date -d "$LAST_PERIOD +25 days" +"%Y-%m-%d")

CURRENT_DATE=$(date +"%Y-%m-%d")

START_REMINDER=$(date -d "$REMINDER_DATE" +"%Y-%m-%d")
END_REMINDER=$(date -d "$REMINDER_DATE +4 days" +"%Y-%m-%d")

if [[ "$CURRENT_DATE" > "$START_REMINDER" && "$CURRENT_DATE" < "$END_REMINDER" ]] || [[ "$CURRENT_DATE" == "$START_REMINDER" ]] || [[ "$CURRENT_DATE" == "$END_REMINDER" ]]; then
  MESSAGE="Reminder: Your period might be due soon!"
  notify-send "$MESSAGE"
  
fi

