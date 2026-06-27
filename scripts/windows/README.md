# Run Wind on Windows — no terminal

Two files give self-host users a **no-command-line** experience: a tray icon that runs Wind in the
background and a one-click launcher.

| File | What it is |
|---|---|
| `wind-tray.vbs` | **Double-click this.** Launches the tray controller with no console window. |
| `wind-tray.ps1` | The tray controller it runs (WinForms `NotifyIcon` — zero dependencies). |

## What you get
A **Wind icon in the Windows notification area** (bottom-right tray). Right-click it:

- **Show Wind** — opens your local dashboard (`http://localhost:3010`) in your browser. *(Double-clicking the icon does the same.)*
- **Restart Wind** — restarts the instance.
- **Quit Wind** — stops Wind and removes the tray icon.

The controller manages Wind with **`docker compose`** when a `docker-compose.yml` is present (the
recommended path), and falls back to `npm --prefix backend start` otherwise. It brings Wind **up on
launch**, so the only thing the user ever touches is the tray menu.

## First-time setup (one time)
1. Install **Docker Desktop** (recommended) — that's the only prerequisite.
2. Download the **Wind installer** — a small zip containing a pull-based `docker-compose.yml`
   plus this `scripts\windows\` folder. Unzip it anywhere. **No source code, no `git`** —
   the compose pulls the pre-built public image on first run.
3. Double-click **`scripts\windows\wind-tray.vbs`**. Wind pulls + starts; click the tray icon → **Show Wind**.

> First run needs **no exchange API key and no capital** — create a non-custodial wallet, browse the
> marketplace, backtest. Connecting an exchange to trade live is a separate, optional step.

## Start with Windows (auto-launch)
Press **Win+R**, type `shell:startup`, Enter, and drop a **shortcut to `wind-tray.vbs`** in that folder.
Wind now comes up in the tray every time you log in.

## Prefer a real Windows Service?
The tray + auto-launch covers most users. For an always-on, login-independent service, run the Docker
stack as a service: in Docker Desktop enable *Start Docker when you log in*, and the
`restart: unless-stopped` policy in `docker-compose.yml` keeps the container alive across reboots.

## Notes
- The icon uses `frontend/public/favicon.ico` if present, else a stock icon.
- Change the URL/port with the `WIND_URL` env var (default `http://localhost:3010`).
- macOS/Linux users: just `docker compose up -d` and open `http://localhost:3010` (no tray needed —
  the OS already has a clean way to background it).
