<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Kunal's Dotfiles</title>
<link href="https://fonts.googleapis.com/css2?family=JetBrains+Mono:wght@300;400;600;800&family=Syne:wght@400;600;800&display=swap" rel="stylesheet">
<style>
  :root {
    --bg: #0a0a0f;
    --surface: #111118;
    --surface2: #1a1a24;
    --border: #2a2a3a;
    --accent: #7c6af7;
    --accent2: #f76a8f;
    --accent3: #6af7c8;
    --text: #e8e8f0;
    --muted: #666680;
    --code-bg: #0d0d16;
  }

  * { margin: 0; padding: 0; box-sizing: border-box; }

  body {
    background: var(--bg);
    color: var(--text);
    font-family: 'Syne', sans-serif;
    min-height: 100vh;
    overflow-x: hidden;
  }

  /* Noise texture overlay */
  body::before {
    content: '';
    position: fixed;
    inset: 0;
    background-image: url("data:image/svg+xml,%3Csvg viewBox='0 0 256 256' xmlns='http://www.w3.org/2000/svg'%3E%3Cfilter id='noise'%3E%3CfeTurbulence type='fractalNoise' baseFrequency='0.9' numOctaves='4' stitchTiles='stitch'/%3E%3C/filter%3E%3Crect width='100%25' height='100%25' filter='url(%23noise)' opacity='0.03'/%3E%3C/svg%3E");
    pointer-events: none;
    z-index: 1000;
    opacity: 0.4;
  }

  /* Grid background */
  body::after {
    content: '';
    position: fixed;
    inset: 0;
    background-image: 
      linear-gradient(rgba(124, 106, 247, 0.03) 1px, transparent 1px),
      linear-gradient(90deg, rgba(124, 106, 247, 0.03) 1px, transparent 1px);
    background-size: 40px 40px;
    pointer-events: none;
  }

  .container {
    max-width: 900px;
    margin: 0 auto;
    padding: 0 2rem;
    position: relative;
    z-index: 1;
  }

  /* Hero */
  .hero {
    padding: 5rem 0 3rem;
    position: relative;
  }

  .hero-glow {
    position: absolute;
    top: 0;
    left: 50%;
    transform: translateX(-50%);
    width: 600px;
    height: 300px;
    background: radial-gradient(ellipse, rgba(124, 106, 247, 0.12) 0%, transparent 70%);
    pointer-events: none;
  }

  .badge {
    display: inline-flex;
    align-items: center;
    gap: 0.5rem;
    background: rgba(124, 106, 247, 0.1);
    border: 1px solid rgba(124, 106, 247, 0.3);
    color: var(--accent);
    font-family: 'JetBrains Mono', monospace;
    font-size: 0.75rem;
    padding: 0.3rem 0.8rem;
    border-radius: 999px;
    margin-bottom: 1.5rem;
    animation: fadeDown 0.6s ease forwards;
  }

  .badge::before {
    content: '';
    width: 6px;
    height: 6px;
    background: var(--accent);
    border-radius: 50%;
    animation: pulse 2s infinite;
  }

  @keyframes pulse {
    0%, 100% { opacity: 1; transform: scale(1); }
    50% { opacity: 0.5; transform: scale(1.4); }
  }

  h1 {
    font-size: clamp(2.5rem, 6vw, 4rem);
    font-weight: 800;
    line-height: 1.1;
    margin-bottom: 1rem;
    animation: fadeDown 0.6s ease 0.1s both;
  }

  h1 span {
    background: linear-gradient(135deg, var(--accent), var(--accent2));
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    background-clip: text;
  }

  .subtitle {
    color: var(--muted);
    font-size: 1.1rem;
    font-weight: 400;
    max-width: 500px;
    line-height: 1.6;
    margin-bottom: 2rem;
    animation: fadeDown 0.6s ease 0.2s both;
  }

  .tags {
    display: flex;
    gap: 0.5rem;
    flex-wrap: wrap;
    animation: fadeDown 0.6s ease 0.3s both;
  }

  .tag {
    font-family: 'JetBrains Mono', monospace;
    font-size: 0.72rem;
    padding: 0.25rem 0.7rem;
    border-radius: 4px;
    border: 1px solid var(--border);
    color: var(--muted);
  }

  .tag.green { border-color: rgba(106, 247, 200, 0.3); color: var(--accent3); background: rgba(106, 247, 200, 0.05); }
  .tag.pink { border-color: rgba(247, 106, 143, 0.3); color: var(--accent2); background: rgba(247, 106, 143, 0.05); }
  .tag.purple { border-color: rgba(124, 106, 247, 0.3); color: var(--accent); background: rgba(124, 106, 247, 0.05); }

  /* Divider */
  .divider {
    height: 1px;
    background: linear-gradient(90deg, transparent, var(--border), transparent);
    margin: 2.5rem 0;
  }

  /* Section */
  .section {
    margin-bottom: 3rem;
    animation: fadeUp 0.6s ease both;
  }

  .section-header {
    display: flex;
    align-items: center;
    gap: 0.75rem;
    margin-bottom: 1.5rem;
  }

  .section-num {
    font-family: 'JetBrains Mono', monospace;
    font-size: 0.7rem;
    color: var(--accent);
    background: rgba(124, 106, 247, 0.1);
    border: 1px solid rgba(124, 106, 247, 0.2);
    padding: 0.2rem 0.5rem;
    border-radius: 4px;
  }

  h2 {
    font-size: 1.3rem;
    font-weight: 700;
    color: var(--text);
  }

  h3 {
    font-size: 1rem;
    font-weight: 600;
    color: var(--text);
    margin-bottom: 0.75rem;
    margin-top: 1.5rem;
  }

  p {
    color: var(--muted);
    line-height: 1.7;
    font-size: 0.95rem;
    margin-bottom: 1rem;
  }

  /* Code blocks */
  .code-block {
    background: var(--code-bg);
    border: 1px solid var(--border);
    border-radius: 10px;
    overflow: hidden;
    margin: 1rem 0;
    position: relative;
  }

  .code-header {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 0.6rem 1rem;
    background: var(--surface);
    border-bottom: 1px solid var(--border);
  }

  .code-dots {
    display: flex;
    gap: 0.4rem;
  }

  .code-dots span {
    width: 10px;
    height: 10px;
    border-radius: 50%;
  }

  .dot-red { background: #ff5f57; }
  .dot-yellow { background: #febc2e; }
  .dot-green { background: #28c840; }

  .code-label {
    font-family: 'JetBrains Mono', monospace;
    font-size: 0.7rem;
    color: var(--muted);
  }

  .code-block pre {
    padding: 1.2rem 1.4rem;
    font-family: 'JetBrains Mono', monospace;
    font-size: 0.82rem;
    line-height: 1.8;
    overflow-x: auto;
    color: #c8c8e0;
  }

  .code-block pre .comment { color: #444466; }
  .code-block pre .cmd { color: var(--accent3); }
  .code-block pre .flag { color: var(--accent2); }
  .code-block pre .str { color: #f7c96a; }

  /* Steps */
  .steps {
    display: flex;
    flex-direction: column;
    gap: 1rem;
  }

  .step {
    display: flex;
    gap: 1.2rem;
    padding: 1.2rem 1.4rem;
    background: var(--surface);
    border: 1px solid var(--border);
    border-radius: 10px;
    transition: border-color 0.2s;
  }

  .step:hover { border-color: rgba(124, 106, 247, 0.3); }

  .step-num {
    font-family: 'JetBrains Mono', monospace;
    font-size: 0.8rem;
    font-weight: 800;
    color: var(--accent);
    background: rgba(124, 106, 247, 0.1);
    width: 32px;
    height: 32px;
    border-radius: 8px;
    display: flex;
    align-items: center;
    justify-content: center;
    flex-shrink: 0;
    border: 1px solid rgba(124, 106, 247, 0.2);
  }

  .step-content h4 {
    font-size: 0.95rem;
    font-weight: 600;
    margin-bottom: 0.3rem;
    color: var(--text);
  }

  .step-content p {
    font-size: 0.85rem;
    margin: 0;
    color: var(--muted);
  }

  /* File tree */
  .file-tree {
    background: var(--code-bg);
    border: 1px solid var(--border);
    border-radius: 10px;
    padding: 1.2rem 1.4rem;
    font-family: 'JetBrains Mono', monospace;
    font-size: 0.82rem;
    line-height: 2;
  }

  .tree-dir { color: var(--accent); }
  .tree-file { color: var(--muted); }
  .tree-desc { color: #333355; font-size: 0.75rem; }

  /* Warning box */
  .warning {
    background: rgba(247, 106, 143, 0.05);
    border: 1px solid rgba(247, 106, 143, 0.2);
    border-radius: 10px;
    padding: 1rem 1.2rem;
    display: flex;
    gap: 0.75rem;
    align-items: flex-start;
    margin: 1rem 0;
  }

  .warning-icon { font-size: 1rem; flex-shrink: 0; margin-top: 2px; }
  .warning p { color: rgba(247, 106, 143, 0.8); margin: 0; font-size: 0.88rem; }

  /* Info box */
  .info {
    background: rgba(106, 247, 200, 0.05);
    border: 1px solid rgba(106, 247, 200, 0.2);
    border-radius: 10px;
    padding: 1rem 1.2rem;
    display: flex;
    gap: 0.75rem;
    align-items: flex-start;
    margin: 1rem 0;
  }

  .info p { color: rgba(106, 247, 200, 0.8); margin: 0; font-size: 0.88rem; }

  /* Keybinds table */
  .kb-table {
    width: 100%;
    border-collapse: collapse;
    font-size: 0.85rem;
  }

  .kb-table th {
    text-align: left;
    padding: 0.6rem 1rem;
    background: var(--surface);
    border: 1px solid var(--border);
    font-family: 'JetBrains Mono', monospace;
    font-size: 0.75rem;
    color: var(--accent);
    font-weight: 600;
  }

  .kb-table td {
    padding: 0.6rem 1rem;
    border: 1px solid var(--border);
    color: var(--muted);
    font-size: 0.83rem;
  }

  .kb-table tr:hover td { background: var(--surface); }

  kbd {
    font-family: 'JetBrains Mono', monospace;
    font-size: 0.75rem;
    background: var(--surface2);
    border: 1px solid var(--border);
    border-radius: 4px;
    padding: 0.15rem 0.5rem;
    color: var(--accent3);
  }

  /* Footer */
  footer {
    text-align: center;
    padding: 3rem 0;
    color: var(--muted);
    font-size: 0.82rem;
    font-family: 'JetBrains Mono', monospace;
    border-top: 1px solid var(--border);
    margin-top: 2rem;
  }

  footer span { color: var(--accent2); }

  @keyframes fadeDown {
    from { opacity: 0; transform: translateY(-16px); }
    to { opacity: 1; transform: translateY(0); }
  }

  @keyframes fadeUp {
    from { opacity: 0; transform: translateY(16px); }
    to { opacity: 1; transform: translateY(0); }
  }
</style>
</head>
<body>

<div class="container">

  <!-- Hero -->
  <div class="hero">
    <div class="hero-glow"></div>
    <div class="badge">v1.0.0 — dotfiles</div>
    <h1>Kunal's <span>Dotfiles</span></h1>
    <p class="subtitle">Personal HyDE + Hyprland configuration for Arch Linux. One command to restore everything on a fresh install.</p>
    <div class="tags">
      <span class="tag purple">Arch Linux</span>
      <span class="tag green">Hyprland 0.54</span>
      <span class="tag purple">HyDE</span>
      <span class="tag pink">Waybar</span>
      <span class="tag green">Kitty</span>
      <span class="tag purple">Rofi</span>
    </div>
  </div>

  <div class="divider"></div>

  <!-- What's Included -->
  <div class="section">
    <div class="section-header">
      <span class="section-num">01</span>
      <h2>What's Included</h2>
    </div>
    <div class="file-tree">
      <div><span class="tree-dir">dotfiles/</span></div>
      <div>&nbsp;&nbsp;<span class="tree-dir">hypr/</span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="tree-desc"># Hyprland config, keybindings, animations</span></div>
      <div>&nbsp;&nbsp;<span class="tree-dir">waybar/</span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="tree-desc"># Waybar config + styles</span></div>
      <div>&nbsp;&nbsp;<span class="tree-dir">hyde/</span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="tree-desc"># HyDE themes + wallbash</span></div>
      <div>&nbsp;&nbsp;<span class="tree-file">install.sh</span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="tree-desc"># Full auto install script</span></div>
      <div>&nbsp;&nbsp;<span class="tree-file">sync.sh</span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="tree-desc"># Push latest configs to GitHub</span></div>
      <div>&nbsp;&nbsp;<span class="tree-file">README.html</span> &nbsp;&nbsp;&nbsp;<span class="tree-desc"># This file</span></div>
    </div>
  </div>

  <!-- Fresh Install -->
  <div class="section">
    <div class="section-header">
      <span class="section-num">02</span>
      <h2>Fresh Install Guide</h2>
    </div>
    <p>Follow these steps in order on a fresh Arch Linux installation.</p>
    <div class="steps">
      <div class="step">
        <div class="step-num">1</div>
        <div class="step-content">
          <h4>Install Arch Linux base</h4>
          <p>Install Arch Linux with a working internet connection. Make sure git and base-devel are installed.</p>
        </div>
      </div>
      <div class="step">
        <div class="step-num">2</div>
        <div class="step-content">
          <h4>Clone this dotfiles repo</h4>
          <p>Download your personal dotfiles from GitHub to your home directory.</p>
        </div>
      </div>
      <div class="step">
        <div class="step-num">3</div>
        <div class="step-content">
          <h4>Run the install script</h4>
          <p>The script installs HyDE, restores all configs and uncomments app variables automatically.</p>
        </div>
      </div>
      <div class="step">
        <div class="step-num">4</div>
        <div class="step-content">
          <h4>Reboot</h4>
          <p>Full reboot required — not just Hyprland reload — for all services to initialize properly.</p>
        </div>
      </div>
    </div>
    <h3>Run these commands</h3>
    <div class="code-block">
      <div class="code-header">
        <div class="code-dots">
          <span class="dot-red"></span>
          <span class="dot-yellow"></span>
          <span class="dot-green"></span>
        </div>
        <span class="code-label">bash — fresh install</span>
      </div>
      <pre><span class="comment"># Step 1 — Install git if not already installed</span>
<span class="cmd">sudo pacman</span> <span class="flag">-S</span> git base-devel

<span class="comment"># Step 2 — Clone your dotfiles</span>
<span class="cmd">git clone</span> https://github.com/KunalChavan245/dotfiles ~/dotfiles

<span class="comment"># Step 3 — Run install script</span>
<span class="cmd">cd</span> ~/dotfiles
<span class="cmd">chmod +x</span> install.sh
<span class="cmd">./install.sh</span>

<span class="comment"># Step 4 — Reboot</span>
<span class="cmd">sudo reboot</span></pre>
    </div>
    <div class="info">
      <span class="warning-icon">💡</span>
      <p>The install script handles everything — HyDE installation, config restore, and app variable setup automatically. Just sit back and wait!</p>
    </div>
    <div class="warning">
      <span class="warning-icon">⚠️</span>
      <p>Do NOT close the terminal during installation. The process takes 10–20 minutes depending on your internet speed. Say Y to all prompts.</p>
    </div>
  </div>
  <!-- Syncing -->
  <div class="section">
    <div class="section-header">
      <span class="section-num">03</span>
      <h2>Syncing Changes to GitHub</h2>
    </div>
    <p>Whenever you make changes to your configs, sync them to GitHub with one command.</p>
    <div class="code-block">
      <div class="code-header">
        <div class="code-dots">
          <span class="dot-red"></span>
          <span class="dot-yellow"></span>
          <span class="dot-green"></span>
        </div>
        <span class="code-label">bash — sync dotfiles</span>
      </div>
      <pre><span class="cmd">~/dotfiles/sync.sh</span></pre>
    </div>
    <p>This copies your latest configs from <code style="font-family: JetBrains Mono; font-size: 0.82rem; color: var(--accent3); background: var(--surface2); padding: 0.1rem 0.4rem; border-radius: 4px;">~/.config</code> into the dotfiles folder and pushes to GitHub automatically.</p>
  </div>
  <!-- Keybindings -->
  <div class="section">
    <div class="section-header">
      <span class="section-num">04</span>
      <h2>Key Bindings Cheatsheet</h2>
    </div>
    <table class="kb-table">
      <thead>
        <tr>
          <th>Keybind</th>
          <th>Action</th>
        </tr>
      </thead>
      <tbody>
        <tr><td><kbd>Super + T</kbd></td><td>Open terminal (Kitty)</td></tr>
        <tr><td><kbd>Super + B</kbd></td><td>Open browser (Firefox)</td></tr>
        <tr><td><kbd>Super + E</kbd></td><td>Open file explorer (Dolphin)</td></tr>
        <tr><td><kbd>Super + C</kbd></td><td>Open text editor (VSCode)</td></tr>
        <tr><td><kbd>Super + A</kbd></td><td>App launcher (Rofi)</td></tr>
        <tr><td><kbd>Super + Q</kbd></td><td>Close focused window</td></tr>
        <tr><td><kbd>Super + L</kbd></td><td>Lock screen</td></tr>
        <tr><td><kbd>Super + W</kbd></td><td>Toggle floating window</td></tr>
        <tr><td><kbd>Super + Tab</kbd></td><td>Window switcher</td></tr>
        <tr><td><kbd>Super + 1–9</kbd></td><td>Switch workspace</td></tr>
        <tr><td><kbd>Super + Shift + 1–9</kbd></td><td>Move window to workspace</td></tr>
        <tr><td><kbd>Super + P</kbd></td><td>Screenshot (snip)</td></tr>
        <tr><td><kbd>Print</kbd></td><td>Screenshot all monitors</td></tr>
        <tr><td><kbd>Alt_R + Ctrl_R</kbd></td><td>Toggle Waybar</td></tr>
        <tr><td><kbd>Super + Alt + →/←</kbd></td><td>Next / previous wallpaper</td></tr>
        <tr><td><kbd>Super + Shift + T</kbd></td><td>Select theme</td></tr>
      </tbody>
    </table>
  </div>
  <!-- Troubleshooting -->
  <div class="section">
    <div class="section-header">
      <span class="section-num">05</span>
      <h2>Troubleshooting</h2>
    </div>
    <h3>Waybar not visible</h3>
    <div class="code-block">
      <div class="code-header">
        <div class="code-dots"><span class="dot-red"></span><span class="dot-yellow"></span><span class="dot-green"></span></div>
        <span class="code-label">bash</span>
      </div>
      <pre><span class="cmd">pkill</span> waybar <span class="flag">&&</span> <span class="cmd">waybar</span> &</pre>
    </div>
    <h3>Keybindings not working after restore</h3>
    <div class="code-block">
      <div class="code-header">
        <div class="code-dots"><span class="dot-red"></span><span class="dot-yellow"></span><span class="dot-green"></span></div>
        <span class="code-label">bash</span>
      </div>
      <pre><span class="comment"># Make sure app variables are uncommented in keybindings.conf</span>
<span class="cmd">nano</span> ~/.config/hypr/keybindings.conf
<span class="comment"># Uncomment: $TERMINAL, $EDITOR, $EXPLORER, $BROWSER</span>
<span class="cmd">hyprctl</span> reload</pre>
    </div>
    <h3>HyDE services not starting</h3>
    <div class="code-block">
      <div class="code-header">
        <div class="code-dots"><span class="dot-red"></span><span class="dot-yellow"></span><span class="dot-green"></span></div>
        <span class="code-label">bash</span>
      </div>
      <pre><span class="cmd">systemctl</span> <span class="flag">--user</span> daemon-reload
<span class="cmd">systemctl</span> <span class="flag">--user</span> restart hyde-config.service</pre>
    </div>
  </div>

  <div class="divider"></div>

  <footer>
    made with <span>♥</span> by KunalChavan245 &nbsp;·&nbsp; Arch Linux + HyDE + Hyprland
  </footer>

</div>

</body>
</html>
