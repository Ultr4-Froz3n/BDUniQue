#!/usr/bin/env bash
while true ; do
  for entr in beyond.sh ; do
    entry="${beyond/.sh/}"
    tmux kill-session -t BDUniQue
    rm -rf ~/.telegram-cli/data/animation/*
    rm -rf ~/.telegram-cli/data/audio/*
    rm -rf ~/.telegram-cli/data/document/*
    rm -rf ~/.telegram-cli/data/photo/*
    rm -rf ~/.telegram-cli/data/sticker/*
    rm -rf ~/.telegram-cli/data/temp/*
    rm -rf ~/.telegram-cli/data/video/*
    rm -rf ~/.telegram-cli/data/voice/*
    rm -rf ~/.telegram-cli/data/profile_photo/*
    tmux new-session -d -s BDUniQue "./beyond.sh"
    tmux detach -s BDUniQue
  done
  echo Bots Running!
  sleep 1800
done
