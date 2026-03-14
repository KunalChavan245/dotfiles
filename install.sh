
#!/bin/bash
echo "🚀 Installing Kunal's dotfiles..."


# Install HyDE first
git clone --depth 1 https://github.com/HyDE-Project/HyDE ~/HyDE
cd ~/HyDE/Scripts && ./install.sh


# Copy dotfiles
echo "📁 Restoring configs..."
cp -r ~/dotfiles/hypr/* ~/.config/hypr/
cp -r ~/dotfiles/waybar/* ~/.config/waybar/
cp -r ~/dotfiles/hyde/* ~/.config/hyde/


# Uncomment app variables
sed -i 's/# \$TERMINAL = kitty/$TERMINAL = kitty/' ~/.config/hypr/keybindings.conf
sed -i 's/# \$EDITOR = code/$EDITOR = code/' ~/.config/hypr/keybindings.conf
sed -i 's/# \$EXPLORER = dolphin/$EXPLORER = dolphin/' ~/.config/hypr/keybindings.conf
sed -i 's/# \$BROWSER = firefox/$BROWSER = firefox/' ~/.config/hypr/keybindings.conf

echo "✅ Done! Please reboot."
