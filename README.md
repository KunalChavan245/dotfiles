<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body style="background:#0a0a0f; color:#e8e8f0; font-family:sans-serif; max-width:900px; margin:0 auto; padding:2rem;">

  <h1 style="font-size:2.5rem; margin-bottom:0.5rem;">Kunal's <span style="color:#7c6af7;">Dotfiles</span></h1>
  <p style="color:#666680;">Personal HyDE + Hyprland configuration for Arch Linux. One command to restore everything on a fresh install.</p>

  <p>
    <span style="background:#1a1a24; border:1px solid #2a2a3a; color:#7c6af7; padding:0.2rem 0.6rem; border-radius:4px; font-size:0.8rem;">Arch Linux</span>
    <span style="background:#1a1a24; border:1px solid #2a2a3a; color:#6af7c8; padding:0.2rem 0.6rem; border-radius:4px; font-size:0.8rem;">Hyprland 0.54</span>
    <span style="background:#1a1a24; border:1px solid #2a2a3a; color:#7c6af7; padding:0.2rem 0.6rem; border-radius:4px; font-size:0.8rem;">HyDE</span>
    <span style="background:#1a1a24; border:1px solid #2a2a3a; color:#f76a8f; padding:0.2rem 0.6rem; border-radius:4px; font-size:0.8rem;">Waybar</span>
    <span style="background:#1a1a24; border:1px solid #2a2a3a; color:#6af7c8; padding:0.2rem 0.6rem; border-radius:4px; font-size:0.8rem;">Kitty</span>
  </p>

  <hr style="border:1px solid #2a2a3a; margin:2rem 0;">

  <!-- 01 What's Included -->
  <h2 style="color:#7c6af7;">01 — What's Included</h2>
  <pre style="background:#111118; border:1px solid #2a2a3a; border-radius:8px; padding:1.2rem; color:#6af7c8; font-size:0.85rem; line-height:2;">
dotfiles/
  hypr/          # Hyprland config, keybindings, animations
  waybar/        # Waybar config + styles
  hyde/          # HyDE themes + wallbash
  install.sh     # Full auto install script
  sync.sh        # Push latest configs to GitHub
  README.html    # This file
  </pre>

  <hr style="border:1px solid #2a2a3a; margin:2rem 0;">

  <!-- 02 Fresh Install -->
  <h2 style="color:#7c6af7;">02 — Fresh Install Guide</h2>
  <p style="color:#666680;">Follow these steps in order on a fresh Arch Linux installation.</p>

  <table style="width:100%; border-collapse:collapse; margin-bottom:1.5rem;">
    <tr style="background:#111118;">
      <td style="border:1px solid #2a2a3a; padding:0.8rem 1rem; color:#7c6af7; font-weight:bold; width:40px;">1</td>
      <td style="border:1px solid #2a2a3a; padding:0.8rem 1rem;"><strong>Install Arch Linux base</strong><br><span style="color:#666680; font-size:0.88rem;">Make sure git and base-devel are installed.</span></td>
    </tr>
    <tr>
      <td style="border:1px solid #2a2a3a; padding:0.8rem 1rem; color:#7c6af7; font-weight:bold;">2</td>
      <td style="border:1px solid #2a2a3a; padding:0.8rem 1rem;"><strong>Clone this dotfiles repo</strong><br><span style="color:#666680; font-size:0.88rem;">Download your personal dotfiles from GitHub.</span></td>
    </tr>
    <tr style="background:#111118;">
      <td style="border:1px solid #2a2a3a; padding:0.8rem 1rem; color:#7c6af7; font-weight:bold;">3</td>
      <td style="border:1px solid #2a2a3a; padding:0.8rem 1rem;"><strong>Run the install script</strong><br><span style="color:#666680; font-size:0.88rem;">Installs HyDE, restores all configs automatically.</span></td>
    </tr>
    <tr>
      <td style="border:1px solid #2a2a3a; padding:0.8rem 1rem; color:#7c6af7; font-weight:bold;">4</td>
      <td style="border:1px solid #2a2a3a; padding:0.8rem 1rem;"><strong>Reboot</strong><br><span style="color:#666680; font-size:0.88rem;">Full reboot required for all services to initialize.</span></td>
    </tr>
  </table>

  <pre style="background:#111118; border:1px solid #2a2a3a; border-radius:8px; padding:1.2rem; color:#6af7c8; font-size:0.85rem; line-height:2;">
# Step 1 — Install git
sudo pacman -S git base-devel

# Step 2 — Clone dotfiles
git clone https://github.com/KunalChavan245/dotfiles ~/dotfiles

# Step 3 — Run install script
cd ~/dotfiles
chmod +x install.sh
./install.sh

# Step 4 — Reboot
sudo reboot
  </pre>

  <p style="background:#0d1f1a; border:1px solid #1a4a3a; border-radius:8px; padding:1rem; color:#6af7c8; font-size:0.88rem;">
    💡 The install script handles everything automatically. Just sit back and wait!
  </p>
  <p style="background:#1f0d12; border:1px solid #4a1a22; border-radius:8px; padding:1rem; color:#f76a8f; font-size:0.88rem;">
    ⚠️ Do NOT close the terminal during installation. Takes 10–20 minutes. Say Y to all prompts.
  </p>

  <hr style="border:1px solid #2a2a3a; margin:2rem 0;">

  <!-- 03 Syncing -->
  <h2 style="color:#7c6af7;">03 — Syncing Changes to GitHub</h2>
  <p style="color:#666680;">Whenever you make config changes, sync to GitHub with one command.</p>
  <pre style="background:#111118; border:1px solid #2a2a3a; border-radius:8px; padding:1.2rem; color:#6af7c8; font-size:0.85rem;">
~/dotfiles/sync.sh
  </pre>

  <hr style="border:1px solid #2a2a3a; margin:2rem 0;">

  <!-- 04 Keybindings -->
  <h2 style="color:#7c6af7;">04 — Keybindings Cheatsheet</h2>
  <table style="width:100%; border-collapse:collapse;">
    <thead>
      <tr style="background:#111118;">
        <th style="border:1px solid #2a2a3a; padding:0.6rem 1rem; text-align:left; color:#7c6af7;">Keybind</th>
        <th style="border:1px solid #2a2a3a; padding:0.6rem 1rem; text-align:left; color:#7c6af7;">Action</th>
      </tr>
    </thead>
    <tbody>
      <tr><td style="border:1px solid #2a2a3a; padding:0.6rem 1rem;"><code style="color:#6af7c8;">Super + T</code></td><td style="border:1px solid #2a2a3a; padding:0.6rem 1rem; color:#666680;">Open terminal (Kitty)</td></tr>
      <tr style="background:#111118;"><td style="border:1px solid #2a2a3a; padding:0.6rem 1rem;"><code style="color:#6af7c8;">Super + B</code></td><td style="border:1px solid #2a2a3a; padding:0.6rem 1rem; color:#666680;">Open browser (Firefox)</td></tr>
      <tr><td style="border:1px solid #2a2a3a; padding:0.6rem 1rem;"><code style="color:#6af7c8;">Super + E</code></td><td style="border:1px solid #2a2a3a; padding:0.6rem 1rem; color:#666680;">File explorer (Dolphin)</td></tr>
      <tr style="background:#111118;"><td style="border:1px solid #2a2a3a; padding:0.6rem 1rem;"><code style="color:#6af7c8;">Super + C</code></td><td style="border:1px solid #2a2a3a; padding:0.6rem 1rem; color:#666680;">Text editor (VSCode)</td></tr>
      <tr><td style="border:1px solid #2a2a3a; padding:0.6rem 1rem;"><code style="color:#6af7c8;">Super + A</code></td><td style="border:1px solid #2a2a3a; padding:0.6rem 1rem; color:#666680;">App launcher (Rofi)</td></tr>
      <tr style="background:#111118;"><td style="border:1px solid #2a2a3a; padding:0.6rem 1rem;"><code style="color:#6af7c8;">Super + Q</code></td><td style="border:1px solid #2a2a3a; padding:0.6rem 1rem; color:#666680;">Close focused window</td></tr>
      <tr><td style="border:1px solid #2a2a3a; padding:0.6rem 1rem;"><code style="color:#6af7c8;">Super + L</code></td><td style="border:1px solid #2a2a3a; padding:0.6rem 1rem; color:#666680;">Lock screen</td></tr>
      <tr style="background:#111118;"><td style="border:1px solid #2a2a3a; padding:0.6rem 1rem;"><code style="color:#6af7c8;">Super + W</code></td><td style="border:1px solid #2a2a3a; padding:0.6rem 1rem; color:#666680;">Toggle floating window</td></tr>
      <tr><td style="border:1px solid #2a2a3a; padding:0.6rem 1rem;"><code style="color:#6af7c8;">Super + Tab</code></td><td style="border:1px solid #2a2a3a; padding:0.6rem 1rem; color:#666680;">Window switcher</td></tr>
      <tr style="background:#111118;"><td style="border:1px solid #2a2a3a; padding:0.6rem 1rem;"><code style="color:#6af7c8;">Super + 1-9</code></td><td style="border:1px solid #2a2a3a; padding:0.6rem 1rem; color:#666680;">Switch workspace</td></tr>
      <tr><td style="border:1px solid #2a2a3a; padding:0.6rem 1rem;"><code style="color:#6af7c8;">Super + Shift + 1-9</code></td><td style="border:1px solid #2a2a3a; padding:0.6rem 1rem; color:#666680;">Move window to workspace</td></tr>
      <tr style="background:#111118;"><td style="border:1px solid #2a2a3a; padding:0.6rem 1rem;"><code style="color:#6af7c8;">Super + P</code></td><td style="border:1px solid #2a2a3a; padding:0.6rem 1rem; color:#666680;">Screenshot (snip)</td></tr>
      <tr><td style="border:1px solid #2a2a3a; padding:0.6rem 1rem;"><code style="color:#6af7c8;">Print</code></td><td style="border:1px solid #2a2a3a; padding:0.6rem 1rem; color:#666680;">Screenshot all monitors</td></tr>
      <tr style="background:#111118;"><td style="border:1px solid #2a2a3a; padding:0.6rem 1rem;"><code style="color:#6af7c8;">Alt_R + Ctrl_R</code></td><td style="border:1px solid #2a2a3a; padding:0.6rem 1rem; color:#666680;">Toggle Waybar</td></tr>
      <tr><td style="border:1px solid #2a2a3a; padding:0.6rem 1rem;"><code style="color:#6af7c8;">Super + Alt + Left/Right</code></td><td style="border:1px solid #2a2a3a; padding:0.6rem 1rem; color:#666680;">Next / previous wallpaper</td></tr>
      <tr style="background:#111118;"><td style="border:1px solid #2a2a3a; padding:0.6rem 1rem;"><code style="color:#6af7c8;">Super + Shift + T</code></td><td style="border:1px solid #2a2a3a; padding:0.6rem 1rem; color:#666680;">Select theme</td></tr>
    </tbody>
  </table>

  <hr style="border:1px solid #2a2a3a; margin:2rem 0;">

  <!-- 05 Troubleshooting -->
  <h2 style="color:#7c6af7;">05 — Troubleshooting</h2>

  <h3 style="color:#e8e8f0; margin-top:1.5rem;">Waybar not visible</h3>
  <pre style="background:#111118; border:1px solid #2a2a3a; border-radius:8px; padding:1.2rem; color:#6af7c8; font-size:0.85rem;">
pkill waybar && waybar &
  </pre>

  <h3 style="color:#e8e8f0; margin-top:1.5rem;">Keybindings not working after restore</h3>
  <pre style="background:#111118; border:1px solid #2a2a3a; border-radius:8px; padding:1.2rem; color:#6af7c8; font-size:0.85rem; line-height:2;">
# Uncomment app variables in keybindings.conf
nano ~/.config/hypr/keybindings.conf
# Uncomment: $TERMINAL, $EDITOR, $EXPLORER, $BROWSER
hyprctl reload
  </pre>

  <h3 style="color:#e8e8f0; margin-top:1.5rem;">HyDE services not starting</h3>
  <pre style="background:#111118; border:1px solid #2a2a3a; border-radius:8px; padding:1.2rem; color:#6af7c8; font-size:0.85rem; line-height:2;">
systemctl --user daemon-reload
systemctl --user restart hyde-config.service
  </pre>

  <hr style="border:1px solid #2a2a3a; margin:2rem 0;">

  <p style="text-align:center; color:#666680; font-size:0.82rem;">
    made with love by KunalChavan245 &nbsp;·&nbsp; Arch Linux + HyDE + Hyprland
  </p>

</body>
</html>
