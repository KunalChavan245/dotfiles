
#!/bin/bash
echo "🔄 Syncing dotfiles to GitHub..."


# Pull latest configs
cp -r ~/.config/hypr/* ~/dotfiles/hypr/
cp -r ~/.config/waybar/* ~/dotfiles/waybar/
cp -r ~/.config/hyde/* ~/dotfiles/hyde/


# Push to GitHub
cd ~/dotfiles
git add .
git commit -m "sync: $(date '+%Y-%m-%d %H:%M')"
git pull --release origin main
git push origin main


echo "✅ Dotfiles synced!"
