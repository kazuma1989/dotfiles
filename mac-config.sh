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
defaults write com.apple.spaces spans-displays -bool true

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
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true

# 軌跡の速さを速くする
defaults write -g com.apple.trackpad.scaling 3



## Keyboard

# キーのリピート
defaults write -g KeyRepeat -int 1

# リピート入力認識までの時間
defaults write -g InitialKeyRepeat -int 13

