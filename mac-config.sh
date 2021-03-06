#!/usr/bin/env zsh



## Dock

# Automatically hide or show the Dock （Dock を自動的に隠す）
defaults write com.apple.dock autohide -bool true

# Wipe all app icons from the Dock （Dock に標準で入っている全てのアプリを消す、Finder とごみ箱は消えない）
defaults write com.apple.dock persistent-apps -array

# Dock 再起動
killall Dock



## Mission Control

# 最新の使用状況に基づいて操作スペースを自動的に並べ替える
defaults write com.apple.dock mru-spaces -bool false

# アプリケーションの切り替えで、アプリケーションのウィンドウが開いている操作スペースに移動
defaults write .GlobalPreferences AppleSpacesSwitchOnActivate -bool false

# ウィンドウをアプリケーションごとにグループ化
defaults write com.apple.dock expose-group-apps -bool false

# ディスプレイごとに個別の操作スペース
defaults write com.apple.spaces spans-displays -bool false

# Hot corners （Mission Control のホットコーナーの設定）
# Possible values:
#  0: no-op
#  2: Mission Control
#  3: Show application windows
#  4: Desktop
#  5: Start screen saver
#  6: Disable screen saver
#  7: Dashboard
# 10: Put display to sleep
# 11: Launchpad
# 12: Notification Center
# 14: クイックメモ

# 左上 Misson Control
defaults write com.apple.dock wvous-tl-corner -int 2

# 右上 Show application windows
defaults write com.apple.dock wvous-tr-corner -int 3



## Finder

# 新規ウィンドウで"ダウンロード"を開く
defaults write com.apple.finder NewWindowTarget -string "PfLo"
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/Downloads"

# Finder 再起動
killall Finder



## Terminal.app

# プロファイルをインポート
open ~/.dotfiles/Iceberg_Cica.terminal

# プロファイルをデフォルトに設定
defaults write com.apple.Terminal "Default Window Settings" -string "Iceberg_Cica"
defaults write com.apple.Terminal "Startup Window Settings" -string "Iceberg_Cica"



## Trackpad

# タップでクリック
# システム環境設定の GUI 上はチェックが入るけど、実際には動作しないなど、うまくいかない様子。
# defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
# defaults -currentHost write -globalDomain com.apple.mouse.tapBehavior -int 1

# 軌跡の速さを速くする
defaults write -g com.apple.trackpad.scaling 3



## Keyboard

# Character Pickerを無効にし、キーリピートを有効にする
defaults write -g ApplePressAndHoldEnabled -bool false

# キーのリピート
defaults write -g KeyRepeat -int 2

# リピート入力認識までの時間
defaults write -g InitialKeyRepeat -int 15

# F1、F2などのキーを標準のファンクションキーとして使用
defaults write -g com.apple.keyboard.fnState -bool true

# control + space で「前の入力ソースを選択」になるのを無効化
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 60 "<dict><key>enabled</key><false/></dict>"

