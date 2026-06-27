# Wind — Changelog

Every release, newest first. Generated from the in-app Wiki patch notes — the same notes you
see inside Wind, so this never drifts from the product.

---

## v4.5.0

**v4.5.0 — Open BETA self-host: install Wind in one command, run it from a Windows tray, and a hardened payment path.** Wind is now something anyone can stand up on their own machine from a public image — the trading engine itself is unchanged.

### 📦 One-command self-host
- Wind ships as a **pre-built public image**: `docker run … ghcr.io/aiomacademy/wind-trades-hub:latest`, then open http://localhost:3010 — no source checkout, no build step. First run needs **no exchange key and no capital**.

### 🪟 Windows — no terminal
- A new **system-tray controller** (Show Wind · Restart Wind · Quit Wind) runs the whole stack in the background. Double-click to start; drop it in Startup to launch with Windows.

### 🛰️ Fleet visibility (super-admin)
- Self-hosted instances **check in anonymously** with your Wind Master, so the super-admin panel shows your live BETA fleet (last-seen, online). One setting opts out — no trading data ever leaves the box.

### 🔒 Hardened money-path
- Marketplace payment verification now checks the **exact token and amount** on-chain and **rejects a transaction hash already used** for another purchase (anti-replay); the NFT-image fetch got an SSRF guard. Security-only — your trades are untouched.

### 🐛 Fixes & polish
- Token / NFT Sniper history rows no longer show "?" for symbol and liquidity.
- The "Notifications" toast is labelled correctly and no longer repeats.
- **Unlock** buttons deep-link straight to the right pass in the marketplace.
- A redesigned **3D $WINDH centerpiece** on the Whitepaper, clearer AI-chat bubbles, Sniper titles that match the Whales tracker, and a fixed tablet-width horizontal scroll.

_Frontend changes = hard-refresh. The beacon, payment hardening and Sniper history fixes take effect after a backend restart._

---

## v4.4.0

**v4.4.0 — Wind 4. The hub grows up: an app-wide canvas, a frosted top bar, a desktop chat dock, and a deep mobile polish pass.** The platform era (the NFT layer, Wind ACCESS, the marketplace, the HUB) finally gets the cohesive, modern shell to match — nothing changes about how the engine trades.

### 🎨 A more modern shell
- The lighter **"canvas" backdrop** (subtle grid + soft brand glows) now spans the whole app, not just the marketplace — one cohesive surface.
- The top bar is now a **frosted, translucent header** that blends into the canvas instead of a flat dark strip.
- The left navigation is **tighter and more compact** — pro density, less wasted space.

### 💬 Desktop chat dock
- A **Messenger-style dock** sits bottom-right on desktop: one click opens your channels and direct messages, with a live **"X online"** count. Open small chat windows that dock along the bottom. (Mobile keeps the full chat page.) Gated by the Wind Chat Pass.

### 📱 Mobile polish
- Bottom tab bar: **Marketplace** replaces History (History stays in the drawer).
- A **touch-target pass** — wallet actions (Copy / Backup / Delete / Refresh), the Positions row menu, and Token Sniper's Trade and chain filters are now comfortably tappable.
- More secondary screens stack into **cards** instead of side-scrolling tables.

### 🛒 Marketplace
- Reworked toolbar — the **category filter gets its own full-width row**, with search and sort grouped and a live result count. New **Newest** and **Price** sorts.

### 🔓 License Manager
- Connected as super-admin, you can now **unlock any Wind ACCESS feature** for a client straight from Manage License.

### 🎯 Token Sniper
- Better default RPC endpoints plus a **bytes32 symbol/name fallback** → far fewer "UNKNOWN" tokens in the radar.

_Frontend changes = hard-refresh. The Token Sniper RPC defaults and the License unlock endpoint take effect after a backend restart._

---

## v4.3.0

**v4.3.0 — A real NFT layer, the All-Access Max Pack, and pay-from-your-Wind-wallet.** Makes Wind ACCESS passes and NFTs first-class, transferable assets.

### 🖼️ NFT layer (Wind wallets)
- Wind wallets now **hold, transfer and list real ERC-721 NFTs**. Import an NFT you own by contract + token ID (verified on-chain via ownerOf — no API key needed), then **transfer** it (safeTransferFrom) or **list it for sale** (the marketplace list form opens pre-filled).

### 🟣 All-Access Max Pack
- One NFT — the **Wind All-Access Pass** ($499.99) — unlocks ALL seven Wind ACCESS features at once (best value vs. buying each pass). The super-admin Access menu can grant it too.

### 💳 Pay from your Wind wallet
- One-click **"Pay from my Wind wallet"** in the buy flow for EVM listings (resolves the listing's chain + token and sends from your custodial Wind wallet, then auto-confirms) — alongside the existing $WINDH / Solana one-click.

### ✨ Polish
- **Lazy-loaded images** across the marketplace grid (smoother scroll with 70+ cards) and **seller view counts** on your live listings (My Items).

_Frontend = hard-refresh. The NFT layer, the pay endpoint, the Max Pack seed and view counts take effect after a backend restart._

---

## v4.2.0

**v4.2.0 — NFT Sniper becomes its own app, and Wind ACCESS gates two more features.** A focused follow-up to the v4.1.0 Wind ACCESS launch.

### 🖼️ NFT Sniper — now a standalone app
- The Token Sniper's **Tokens / NFTs toggle is gone**: Token Sniper is tokens-only, and the NFT scanner is its own **NFT Sniper** app (its own page + a sidebar entry right below Token_Sniper).
- Token Sniper was renamed **Token_Sniper** to match Whales_Sniper, and the classic 🐋 / 🎯 / 🖼️ marks are back in the sidebar.

### 🔑 Wind ACCESS — two more passes
- New **NFT Sniper Pass** and **AI Assistant Pass** ($99.99) join the collection. The **NFT Sniper** and the **AI Trades Assistant** are now gated like the rest — hold the pass (or have an operator activate it) to use them.
- Wind ACCESS now covers **seven features**: Chat, Pattern Trader, Patterns Detector, Whales Sniper, Token Sniper, NFT Sniper and AI Assistant. The super-admin Access menu toggles all seven.

_Frontend = hard-refresh. The new access gating + ACCESS seeds take effect after a backend restart._

---

## v4.1.0

**v4.1.0 — Wind becomes a platform: repositioning, Wind ACCESS NFTs, a motion pass and a unified Marketplace.** A big release that reframes Wind as the self-hosted, non-custodial trading hub and ships the pieces to sell it. 469 tests.

### 🧭 Positioning & docs
- Wind is now told as **the self-hosted, non-custodial crypto trading hub** — a bot at its core, surrounded by an on-chain DEX, your own wallets, a marketplace, $WINDH and an AI copilot.
- The **Wiki opens product-first** ("What is Wind?" + a section per pillar: Marketplace, $WINDH & Wind Pay, Wallets, HUB, AI). A new **Whitepaper** page and a **License** page (in the profile menu) were added.

### 🛒 Marketplace
- **Immersive full-screen** layout, a proper **mobile pass** (search, scrollable category pills, Sort pinned right) and a black, legible toolbar.
- **My Items** — your collectibles plus management of your live listings (edit price, transfer payout, delist) and the sales ledger, all in one place.

### 🔑 Wind ACCESS — feature passes (NFTs)
- A new **Wind ACCESS** marketplace category with five collectible passes ($99.99): **Chat, Pattern Trader, Patterns Detector, Whales Sniper, Token Sniper**.
- Each pass **unlocks its feature** — hold the NFT (or have an operator activate it from the super-admin panel) to access the page; otherwise a clean lock screen guides the purchase.

### ✨ Motion & feel (60fps, reduced-motion safe)
- Animated **count-up** on PnL / balances, **scroll-reveal** with stagger, **shimmer skeletons**, button press feedback and a premium **3D tilt** on the Whitepaper cards — all CSS-first (transform / opacity only).

### 🔧 Fixes
- Marketplace tabs (Browse / Activity / My Items) now respond on the **first click** (they used to re-mount on every price tick).
- **Manual closes** read **MANUAL_CLOSE** in History instead of EXCHANGE_CLOSED (a reconciliation race) — label only, no PnL change.
- Whales Sniper / Token Sniper sidebar marks restored to their classic emoji.

_Most of this is frontend (hard-refresh). The access gating, the Wind ACCESS seeds and the manual-close label take effect after a backend restart._

---

## v4.0.0

**v4.0.0 — $WINDH on Solana, a wallet that holds it, and an assistant that remembers you.** The Wind HUB token ($WINDH) arrives on Solana — the most active, lowest-fee chain — with a custodial Solana account built right into your Wind wallet, $WINDH checkout in the Marketplace, and an AI Trades Assistant that finally keeps your conversation history. Plus a broad design pass and far quieter logs.

### 🪙 $WINDH — the Wind HUB token (Solana)
- **$WINDH launches on Solana** (SPL), chosen for the most active community and near-zero fees. A full tokenomics spec ships with it: fixed 100M supply, mint & freeze authorities revoked, with utility across licenses, the marketplace, staking and governance.
- Devnet mint tooling is included so the token can be created and tested safely before mainnet.

### 👛 Your Wind wallet now speaks Solana
- Every Wind wallet gains a **custodial Solana account** alongside its EVM one — see your **SOL and $WINDH balance**, copy your Solana address, and **send** SOL or $WINDH straight from the Wallet tab.
- **Real token logos** now render across the wallet (token list, native balance, every chain row) instead of letter placeholders.

### 🛒 Pay in $WINDH + a fresher Marketplace
- Listings priced in **$WINDH** are paid and **verified on-chain on Solana** — the buy flow adapts automatically (a Solana signature instead of an EVM hash).
- A brand-new **Marketplace logo**, and a fix so the CatalystDEX header and tab navigation stay visible on the Wallet tab.
- **Network-agnostic discovery**: a freshly-deployed instance now finds the shared Marketplace by the stable hub domain, on any network.

### 🤖 The AI Trades Assistant remembers
- Your conversation is now **saved and restored** — reopen the assistant and your past chats are right there. A one-tap **New chat** starts fresh.

### 🎨 Design & reliability
- App-wide polish: keyboard focus rings, reduced-motion support, stronger text contrast, crisper navigation icons and clearer touch targets.
- **Quieter logs** — noisy public-RPC retries from the on-chain discovery radars are tamed and no longer flood the log as fatal errors.

_Solana features activate after a backend restart + dependency install; the rest is frontend (hard-refresh)._

---

## v3.9.4

**v3.9.4 — auto-reverse after John Wick, faster grid re-deploy, and account groundwork.** A new opt-in setting that flips your position after a winning John Wick pullback (only when signals confirm), a quicker bidirectional grid reset after John Wick wins, and the first pieces of central Wind accounts + sign-in.

### 🔄 Auto-Reverse after John Wick pullback (new — opt-in)
- When a John Wick ride exits on a pullback in profit, Wind can now immediately open the **opposite** position with the closed quantity — but **only if the signal confluence confirms** the new direction (the whipsaw guard). Find it under **Settings → Advanced → Auto-Reverse**: turn on "Enable Auto-Reverse" and "Reverse after John Wick pullback". It stays **off on existing setups** until you flip those toggles; kill it the same way anytime.
- It deliberately ignores quick no-DCA take-profits, partial closes, breakeven and stop-loss — only the John Wick pullback win triggers it.

### ⚡ Faster grid re-deploy after a John Wick win
- After a John Wick pullback close, the bidirectional grid now re-deploys on the **fast 10-second path** instead of the ~60-second stop-loss cooldown — your levels are back working sooner.

### 👤 Central accounts & sign-in (groundwork)
- Behind the scenes: the start of **one Wind account** for the website — email/password and **Google/GitHub** sign-in, with a one-click bridge into your dashboard once your instance is provisioned. Operator setup only for now; nothing changes in your current login.

_Money-path execution unchanged — auto-reverse is opt-in and signal-gated; the rest is timing + accounts._

---

## v3.9.3

**v3.9.3 — numbers that always agree, a calmer app, cleaner internals.** A round of correctness and polish: the Discord daily total now matches the app to the cent, the notifications panel opens where it should, the DEX page fails gracefully, and the logs are far quieter.

### 📊 Discord "Daily" = the app's Today's PnL (fix)
- The daily total under each Discord trade alert summed only full closes and left out partial take-profits, so it read lower than the app's Today's PnL (e.g. about $787 on Discord when the app showed about $1,351). Both numbers are now computed from one shared source, so they can never diverge again.

### 🔔 Notifications & messages — open under the bell
- On desktop the dropdowns used to float toward the middle of the screen, over the other top-bar icons. They now hang neatly under their button, opening to the left.

### ⚡ CatalystDEX — graceful with no wallet
- With no DEX wallet selected (or a public market feed rate-limiting), the page used to log repeated errors. It now skips the call and shows a clean empty state.

### 🧹 Quieter & more consistent
- The whale scanner no longer floods the logs with "failed to detect network" retries from public RPC nodes — that was about a fifth of the log.
- The DCA "max refreshes" default is now 20 (it had been an unbounded value, out of step with the rest of the settings).
- The sidebar version now comes straight from the build, so it can't drift.

### 🛠 Under the hood
- The partial-take-profit PnL math lived in several hand-copied places; it is now one shared, test-locked function — which is exactly what the Today's PnL accuracy above relies on.

_Money-path: unchanged. All changes are reporting, notifications, UI and internal cleanup._

---

## v3.9.2

**v3.9.2 — accurate Today's PnL, tighter Discord, and a one-tap backtest.** A reporting fix so Today's PnL is right from the first second after a restart, Discord alerts that read cleanly on a phone, a live-trades bar on the Positions page, and a backtest button that runs your real pairs.

### 📊 Today's PnL — correct immediately (fix)
- After a restart, Today's PnL used to briefly show an **incomplete** number (it left out partial take-profits) before jumping to the full total once a lagging internal table caught up. It now reads partial closes straight from the canonical history, so it shows the **complete, correct total from the first refresh** — no flicker. Each partial is still counted exactly once (no double-count).

### 📱 Discord alerts — compact on mobile
- Embeds carried up to 5–6 separate fields, which **stack into a tall column on the Discord phone app**. Entry, close, stop-loss, liquidation, DCA-fill and the daily/weekly recaps now fold their details into 1–2 fields — far shorter on mobile, still a tidy grid on desktop.
- Every **position-opened** alert now carries a one-tap **"Automate this on your account — Get Wind"** link/button.

### 📈 Positions — live-trades bar (desktop)
- A glass summary strip at the top of Positions: **open trades**, **unrealized PnL**, **total exposure**, and a **long/short ratio** — at a glance.

### 🧪 Backtest — "Run my pairs"
- One button to backtest **exactly the pairs your bot is configured to trade**, no manual selecting.

### 🛡 Smoother updates
- After a new release, a stale tab could throw "Failed to fetch dynamically imported module". The app now **auto-reloads once** to pick up the fresh build instead of erroring.

_Money-path: unchanged. All changes are reporting, notifications and UI._

---

## v3.9.1

**v3.9.1 — entry alerts fixed + wallet/chat polish.** The headline: **position-entry calls now actually reach Discord and push.** Closes always worked, but fresh entries were silently failing — that's fixed and verified live. Plus a rounder Wallet, a Chat that uses your profile identity, and exchange-aware branding.

### 🔔 Entry alerts on Discord & push (fix)
- New positions now fire a **📈 Entered** alert to **Discord and your phone**, with side, base symbol, **entry price**, size, margin, leverage and engine.
- The alert path is now **crash-proof**: if anything fails while enriching the rich embed, a **bare entry call still goes out** (graceful degradation) instead of vanishing — and the degrade is logged so it stays visible.

### 👛 Wallet & 💬 Chat polish
- Wallet: restyled **Create / Import** actions, removed the duplicate total at the bottom, and fixed the exchange logo in the **Wind ⇄ exchange** toggle.
- Chat: your **handle and avatar now come from Profile settings** — no more separate editable pseudo.

### 🔌 Exchange-aware branding
- The connected-exchange logo and labels are resolved through a shared helper, so they render reliably on mobile.

_Money-path: unchanged. Every change here is notifications and UI — entry/DCA/TP/trailing logic is untouched._

---

## v3.9.0

**v3.9.0 — the native-mobile, multi-exchange & smarter-notifications release.** A deep mobile pass across the app, a rebuilt Wallet that defaults to your own on-chain Wind wallet (with a one-tap toggle to the connected exchange), exchange auto-detection everywhere, and notifications that finally read well on your phone.

### 📱 Native mobile pass
- **Bottom tab bar everywhere** (including Chat, which no longer takes over the whole screen) with a **Wallet** tab; iOS-style page transitions; larger icons, no labels.
- **Chat** rebuilt for phones: the page never scrolls, only the thread does; no more double header in a conversation; wider bubbles.
- **Trade History** stats compacted on mobile (3-per-row, "Current Streak" hidden) so the first trades peek without scrolling.
- Consistent, tighter page titles on phones across ~17 pages — **desktop untouched** (everything via responsive breakpoints).

### 👛 Wallet — Wind first, exchange one tap away
- The **Wallet** tab now opens your **Wind multi-crypto on-chain wallet** (Catalyst) by default, with a **Wind ⇄ exchange** segmented toggle. The CatalystDEX chrome is hidden in this view — it reads as a clean wallet.
- A **balance hero card** (total portfolio value) on the Wind wallet, matching the exchange wallet's hero; long addresses truncated, layouts de-overflowed on mobile.
- The exchange wallet drops the positions list (it's a wallet view) and shows account health, margin, exposure.

### 🔌 Multi-exchange aware
- Every "BingX" label is now driven by the **actually-connected exchange** (`ws.exchangeName`) — BingX today, but it auto-switches to Gate.io / Binance / Bybit / OKX / Kraken / Bitget / BloFin / Coinbase / MEXC, including the **toggle logo** and the external link.

### 🔔 Notifications that read well
- **Push**: stripped the leftover `**markdown**` markers and folded the embed fields (Realized / PnL / Daily / Entry / Size…) into the push body, so your phone shows the real numbers instead of a bare one-liner.
- **Entry alerts** now go to **Discord and push**, with the **entry price** up front plus size, margin, leverage and engine — fresh entries are no longer invisible.
- Discord: profitable closes show a running **Daily** line (`+$X | +Y%`), a **role ping** that works even on non-mentionable roles, and a **"Get Wind" CTA** under TP embeds.

### 📚 Docs
- Back-filled every missing patch note (v3.2.5 → v3.6.6) so the in-app + site Wiki is continuous.

_Money-path: unchanged. The only engine-adjacent change is additive notifications (entry/push) reusing existing events — entry/DCA/TP/trailing logic is untouched._

---

## v3.8.0

**v3.8.0 — the AI & native-feel release.** Wind gets its own **AI Trades Assistant** (chat with Claude over your live book), exchange-truth PnL accounting, richer Discord alerts, a rebuilt BingX Wallet, a brand-new Logs page with long-term archiving, and the most native, iPhone-grade mobile experience Wind has ever shipped — including **drag-to-peek** paging between screens.

### 🤖 AI Trades Assistant (new app)
- Connect **your own Claude account** (Anthropic API key, stored encrypted on your instance) and chat with Claude about your live book. Claude reads positions, risk, history and performance with **read-only tools** — it never trades on its own.
- Ask it to **analyze a coin**, **open a trade on a memecoin with $10**, **close all positions**, or **change settings** (e.g. "set leverage to 8 and enable the kill switch"). Every suggestion renders as an **action card** that does nothing until you tap **Approve** — and only then calls the same audited endpoints the manual pages use.
- The connect prompt now reads like the assistant's first message; the chat page is a true fixed-height messenger (only the thread scrolls), tuned for iPhone safe areas.

### 💵 Exchange-truth PnL accounting (money-path)
- Position closes are now booked at the **real exchange fill price** (read back from the order's realized profit) instead of Wind's internal tick — with automatic retry/backoff against rate-limit storms. This removes the small day-over-day drift where Wind slightly over-counted realized PnL vs the exchange. Closes themselves are unchanged; only the *recorded* price is corrected.

### 🔔 Richer Discord alerts
- Notifications are now **rich embeds** colored by event, with the **token's logo**, key fields and an optional **role mention**.
- New **entry** and **DCA-fill** notifications (throttled) so you see grids building in real time.
- The **daily recap** replies to yesterday's recap (a clean running thread) and the **weekly digest** ships as a formatted embed with deltas.

### 👛 BingX Wallet — full redo
- Rebuilt from scratch: **account-health score**, margin **donut**, **closest-liquidation** spotlight, long/short exposure split, and a mobile-first positions list. Reads-only, redesigned for phones (iPhone 15 Pro Max included).

### 🐋 Whales tracker & 🎯 Token Sniper
- The Whales radar now **auto-starts at boot**, even before trading is started, and runs on a **separate price feed** (public exchange tickers) so it never eats your trading rate-limits — fixing the stale-price bug that froze ETH/BTC at fallback values.
- Token Sniper is a **scan-only** scanner (no auto-buy); spotted tokens get a **Trade** button, just like Patterns Trader.

### 🪵 Logs page + long-term archive
- The Logs page is fully redesigned (live feed, severity colors, stat chips), and Wind now **archives logs to daily files** (`data-master/logs-archive/`) with rotation — so you can analyze the bot's behavior over weeks, not just the live buffer.

### 📊 Reports & Risk
- **Funding & fees** are now computed correctly in the Trading calcs and surfaced in the UI.
- **Close Reasons** now splits each reason into **longs vs shorts** with their own PnL.
- **Risk Monitor** layout fixed on desktop; **net-directional** exposure is recomputed from the live exchange snapshot (orphans included) so it's accurate again.

### 📈 Positions & Home
- **Live Positions** (renamed): mobile cards restyled — side-colored bars (green long / red short), a big uPnL, trimmed trailing-zero prices (e.g. 0.750200 → 0.7502), and **TP $ / SL $** estimates. Desktop rows gain TP $ / SL $ and a soft amber hover.
- **Liquidation Guard now defaults OFF** — it was trimming before interesting DCA layers could fill; enable it deliberately if you want it.
- **Home**: deeper, recessed card backgrounds with corner-gradient washes for depth, and a new **24h** range on the Portfolio PnL chart (next to 7D).
- **Backtest** can now run on **every BingX pair** with a search filter.

### 📱 Native, iPhone-grade mobile feel
- The bottom tab bar gains a **Wind logo** (opens the full tools drawer, which now **pushes** the screen instead of overlapping) and an **AI** tab; labels are gone in favor of **larger icons**.
- **iOS-style page transitions**: screens slide + fade in the direction you navigate.
- **Drag-to-peek paging** (Snapchat / iOS-menu style): press and drag horizontally in the middle of the screen and the **adjacent page follows your finger live** — release past a third (or flick) to commit, otherwise it snaps back.
- The iOS system **back-swipe** is suppressed on the edges so it no longer fights Wind's own menu/chat gestures; the **Refill DCA** action is now async (no more timeout on big ladders).

_Money-path note: the only engine-level change is **how closes are priced in the books** (real exchange fill instead of internal tick) and the AI assistant's approvals, which reuse the existing audited trade endpoints. Entry, DCA, TP and trailing logic are untouched._

---

## v3.7.4

**v3.7.4 — the guardian release.** A Liquidation Guard that de-risks positions before they blow up, real push notifications on your phone even with the app closed, a brand-new Risk Monitor page, and the biggest mobile/app-feel upgrade Wind has ever shipped.

### 🛡 Liquidation Guard
- After a position drifts within a configurable distance of its **liquidation price** (default 3%) for several consecutive checks, Wind now **automatically trims 25%** of it at market — pushing the liquidation price away instead of letting the exchange take everything. Cooldown, hysteresis and per-symbol tracking built in; disable with `liqGuardEnabled: false`.
- Trims are booked at the **real fill price** and show up in History as 🛡 *Liq Guard Trim*.
- A replay/calibration script (`scripts/calibrate-liq-guard.mjs`) grid-searches threshold × fraction × sustain against real price history.
- **Recovery mode**: after a liquidation, that symbol re-enters at **half size for 24 hours** — no full-size re-entry into the same falling knife.

### 📲 Push notifications (app closed!)
- Wind can now send **real Web Push notifications** to your phone or desktop: every trade close (threshold configurable via `pushMinCloseUsd`), liquidations, Liq Guard trims, circuit breaker — plus a **weekly digest** every Monday.
- Enable from the bell panel → **📲 Push** (on iPhone: install the app to your Home Screen first — iOS 16.4+). Clear in-app guidance for every failure case.
- The app icon now carries an **unread badge** that updates from pushes even while closed.

### 🩺 Risk Monitor (new page)
- One page with the whole risk picture: net-directional exposure, danger-zone counter, DCA-ammo status, and every position **sorted by liquidation distance** with margin share, uPnL and the DCA gauge.
- Inline de-risk actions per row: **Trim 25%** (two-tap confirm, books at real fill price) and **Refill DCA**.

### 📱 App-feel mobile upgrade
- **Bottom tab bar** (Home · Positions · Risk · History · Chat) with thumb-reach navigation, active highlight and safe-area support.
- **Pull-to-refresh** anywhere; **swipe a Positions card left** (iOS-Mail style) to reveal Refill/Close; **skeleton loaders**; scroll resets on navigation.
- Trade History becomes **mobile cards**; tables fit small screens; toasts clear the iPhone notch/Dynamic Island.
- A friendly **offline page** when the master is unreachable, and an **Add-to-Home-Screen banner** for browsers.

### 🧹 Quality of life
- **Trading Dashboard retired** — Home took over; old links redirect.
- The first-run wizard's "seen" flag now lives **server-side**: it never re-appears when you switch browsers or devices.
- **Lazy-loaded routes** cut the initial bundle by ~35%, with hover/touch prefetch.
- **Accounting CSV export** (canonical ledger) from Trade History; weekly report endpoint; optional **2FA (TOTP)** on login; admin DB purge tool; dead-order-stack sweeper in reconciliation.

_Money-path note: the Liquidation Guard and manual trim reuse the existing audited partial-close path with real-fill booking. Entry/DCA/TP logic is otherwise untouched._

---

## v3.7.3

**v3.7.3 — honest PnL.** Wind's realized-PnL reporting now books trades at the exchange's REAL fill prices, and the ground-truth checker against the exchange is back online.

### 🎯 Closes are booked at the real fill price
- A deep audit compared Wind's daily realized PnL against the exchange's own income history: Wind was **overstating by ~13-16% per day**. Cause: partial and full closes were recorded at the last *internal* tick price, while market orders actually fill with slippage.
- Every TPSL close — partial take-profits (TP1…TPn, John Wick TP1, reconciliation TP guard) **and** full closes (John Wick pullback, No-Layer TP, breakeven, stop-loss) — now fetches the **actual average fill price** from the exchange right after the order and books PnL, trade history and statistics with it.
- Fully best-effort: if the fill price can't be read, the previous behavior applies — the close itself is never delayed or affected. Trailing/ride logic still runs on live market prices (unchanged).

### 🔬 Ground-truth verification repaired
- `/api/stats/verify` — the built-in reconciliation of Wind's PnL vs the exchange's income history — had been silently broken since the multi-exchange connector migration. It now works again (and runs automatically when trading starts).
- Two read-only analysis tools ship in `scripts/`: a 7-day exchange-vs-Wind comparison (with proper pagination of the exchange's 1000-row income API) and a per-day drift dissector.

_Reporting-accuracy release: order placement, position sizing and exit logic are untouched._

---

## v3.7.2

**v3.7.2 — Wind goes mobile.** A full responsive overhaul: the entire app now works beautifully from a 375px phone to an ultra-wide desktop — and installs like a native app.

### 📱 Mobile shell
- The sidebar becomes an **off-canvas drawer** below tablet width — hamburger button in the top bar, backdrop blur, closes on navigation.
- **Snapchat-style swipe gestures**: swipe from the **left edge** to open the menu, from the **right edge** to peek the chat — a **full swipe jumps straight into Wind Chat**. Swipe back to close.
- Top bar, paddings and page headers adapt to small screens (no more clipped buttons).

### 🎯 Positions, rebuilt for the phone
- The 10-column table becomes **rich position cards** on mobile: symbol + side + leverage + engine, big colored PnL, Entry/Mark/Size cells, **Est. TP / John Wick "Trailing" badge**, color-coded liquidation distance, a full-width **DCA ammo gauge with x/y counter**, and Refill DCA / Close buttons.
- Cards carry a **side-colored frame** (green long / red short) and float on a darker, shadowed body for depth. A summary strip shows position count + total uPnL.
- Desktop keeps the original full table, untouched.

### 📲 Installable app (PWA)
- **Add to Home Screen** from Safari/Chrome → Wind launches **fullscreen, without browser chrome**, with a proper app icon (real PNG for iOS) and dark themed status bar.
- **Notch-safe**: content respects the iPhone safe areas (status bar, home indicator) while the dark background fills edge-to-edge.
- Heights now track the **real visible viewport** (dvh) — no more chat input hidden behind the browser bar.

### 🧰 Polish everywhere
- Notification & message panels fit the screen on phones (full-width, anchored under the top bar).
- Catalyst: chart and order panel stack on mobile; market table adapts; all wallet modals respect screen edges.
- Chat behaves like a messenger on mobile (list ↔ conversation with a back button).
- Dashboard unrealized PnL formatting fixed; all wide tables scroll safely.

_Frontend-only release — no engine changes._

---

## v3.7.1

**v3.7.1 — zombie price feed fix + richer Home chart.** One important safety fix and a visual upgrade.

### 🛡️ TPSL: a frozen price feed can no longer blind your stop-loss
- Found during a deep audit: a symbol's WebSocket price stream can go **zombie** (socket alive, that one stream dead) — the engine kept evaluating SL/safety on a price that was **hours old**, while the REST fallback was being rate-limited at the same time.
- The engine now runs a full recovery cascade when a price goes stale: **re-subscribe the WS stream** (revives zombie feeds in seconds) → REST ticker → **exchange mark price** (published by the reconciliation's existing bulk position fetch — zero extra API calls, immune to quote rate-limits) → only then fall back to the stale price.
- Mark-price evaluations protect SL/safety only — take-profit partials never execute on a non-tradeable price.

### 📈 Home: Portfolio PnL widget, redesigned
- New stat strip (**Peak equity · Best day · Avg/day**), a subtle glowing line, a **pulsing live dot**, and discreet peak/low markers on the curve.

_The TPSL fix takes effect after a restart._

---

## v3.7.0

**v3.7.0 — live landing dashboard.** The public site can now show your master bot for real.

### 📡 A real, live hero dashboard on the marketing site
- New **public read-only endpoint** `/api/public/landing` (opt-in via `WIND_PUBLIC_LANDING=1`): the marketing site (windhub) hero card now pulls your master's **real equity, open-position count, active strategy/exit, today's PnL%** and a **live-updating equity sparkline** — refreshing every 20s.
- Exposes **only** those aggregates — never API keys, never per-position detail, never client/license info. Off by default; if disabled or the master is unreachable, the site shows a graceful illustrative fallback.
- This is a genuine differentiator: a public landing page backed by the operator's real, live bot.

_No money-path changes. Read-only endpoint._

---

## v3.6.9

**v3.6.9 — DCA gauge fix.** Display fix only — no engine changes.

### 🩹 Positions: the "DCA Layers" gauge tells the truth after a reboot
- After a restart, the bot rebuilds a **fresh full DCA ladder** for each position. The gauge was wrongly subtracting the **restored lifetime fill count** from the brand-new ladder, so heavily-DCA'd positions showed an **empty bar ("looks non-DCA")** even though they had a full ladder of orders waiting.
- The gauge now reads the **live count of open DCA orders on the book** — so positions with a full fresh ladder read full, exhausted ones read low, and a truly gridless position (like one capped out near liquidation) reads empty. Trading was never affected (the engine uses the raw fill count separately).

_Backend display fix — takes effect after a restart._

---

## v3.6.8

**v3.6.8 — accurate Home P&L + Catalyst height.** No engine changes.

### 🩹 Home "Recent Activity" shows the real $
- The widget now reads the **canonical realized ledger** (the same source as Trade History / Reports), so the **dollar P&L is exact** — no more derived/phantom amounts (e.g. a small win briefly showing a large fake loss). Percentages and colors match reality.

### 🎨 CatalystDEX
- Chart height nudged back up a touch while keeping a little breathing room at the bottom.

_No money-path changes._

---

## v3.6.7

**v3.6.7 — UX polish.** No engine changes.

### ✨ Polish
- **CatalystDEX**: the chart + order panel are a touch shorter with a little breathing room at the bottom, and the order panel shows a subtle hint when empty instead of a big blank space.
- **Trade History**: the **Closed** column now shows a friendly **relative time** for recent trades ("12 min ago", "3h ago") and falls back to a clean date ("Jun 9, 10:30 PM") for older ones.

_No money-path changes._

---

## v3.6.6

**v3.6.6 — Home "Recent Activity" P&L coloring fix.**

- The Recent Activity list coloured win/loss from a stale per-trade percent that read 0 on reconciliation closes — so a real loss could show up green. Win/loss (and the colour) are now derived from the **realized $**, matching History and Reports.

_No engine / money-path changes._

---

## v3.6.5

**v3.6.5 — CatalystDEX restyle, part 2.** Visual polish of the Buy/Swap order panel — no engine changes.

### 🎨 Order panel refresh
- **BUY / SELL** is now a clean segmented toggle (soft green/red active pill) instead of an underline.
- Wallet / chain / amount inputs got a consistent **glass** treatment with clear focus rings.
- 24h **High / Low / Volume** are now tidy stat chips with tabular figures.
- Pair selector restyled to match.

_No money-path changes._

---

## v3.6.4

**v3.6.4 — CatalystDEX restyle.** Visual refresh only — no trading-engine changes.

### 🎨 CatalystDEX got a modern coat
- **Segmented tab controls** (Markets / Buy & Swap / Wallet, Swap / Sniper, filters) replace the heavy filled buttons — soft active pill with a subtle accent.
- **Glass panels**: the chart, order form and confirm dialog now use translucent surfaces with soft hairline borders instead of loud gradient outlines.
- **Softer quick-amount chips** (25/50/75/100%) and the 24h change shown as a clean colored pill with tabular figures.
- Desaturated header and lighter shadows — the accent color is now reserved for the active element, for a calmer, more depth-y look.

_No money-path changes._

---

## v3.6.3

**v3.6.3 — stability hotfix.** Maintenance only — no trading-engine changes.

### 🩹 Fix
- Resolved a **blank-screen-on-load** regression introduced in v3.6.2 by an experimental bundle-splitting optimization. Reverted; the dashboard loads normally again. If you still see a blank page, do a hard refresh (Ctrl+Shift+R) to clear cached files.

_No money-path changes._

---

## v3.6.2

**v3.6.2 — security & faster loads.** Maintenance only — no trading-engine changes. (362 unit tests.)

### 🔒 Security
- Patched a batch of **high-severity** dependency advisories (HTTP client + build tooling) using non-breaking upgrades — no change to behavior.
- Removed an unused on-chain library from the frontend, which also closed its advisories at the root.

_No money-path changes._

---

## v3.6.1

**v3.6.1 — maintenance & polish.** A small, safe release. (362 unit tests.)

### 📊 Reports
- The **By Symbol** table is now **sortable** — click any header (Symbol / Trades / Win Rate / PnL) to sort, click again to flip. Arrows show the active column and direction; default is biggest PnL first.

### 🧹 Under the hood
- **Lighter install & smaller attack surface**: removed unused dependencies (frontend & backend) — no change to what ships in the app.
- **Security**: patched a high-severity build-tool advisory.
- **Docs never drift**: the public wiki now regenerates automatically from this in-app wiki on every build.

_No trading-engine changes._

---

## v3.6.0

**v3.6.0 — the business layer: buy → auto-deploy → license, + an operator console.** All tested (**362 unit tests**).

### 🛒 Buy → auto-deployed Wind (managed tier)
- Checkout creation and the **Stripe payment webhook now run on the Wind master** (always-on, persistent) — not on serverless. A purchase verifies the signature, **signs an Ed25519 license**, **provisions a dedicated VPS** (its own IP → no shared exchange rate-limits), and the license is **injected at boot** (`-e WIND_LICENSE`) so the bot self-activates. HTTPS subdomain via Caddy. Renewals re-issue the key each cycle; cancellation tears the VPS + DNS down.

### 🛡️ Operator console — "Licences & Users"
- New profile-menu entry (super-admin only): manage every client, **grant / extend licenses**, ban, ping, and **delete (tear down the VPS)**.
- **Live drill-down on each remote Wind**: see its equity, today's PnL, open positions (DCA + PnL%), recent trades and health — read-only, secret-gated (no keys ever exposed).

### 📊 Stats integrity — the PnL you see matches the exchange
- Fixed a **double-count of partial closes** that inflated Today's / Daily PnL ~9×, and a **500-row cap** that froze the Portfolio PnL chart. Every PnL surface now reads the canonical realized ledger. Added a **ground-truth reconciliation** against the exchange's own income.

### 🐋 Whales_Sniper is now an app
- Its on-chain discovery radar **auto-starts at boot and runs invisibly** — no Start button. It scans public blockchain RPCs, fully separate from the trading API (no impact on trading rate-limits).

### ✨ UI
- New **Trading Days** KPI + styled Quick-launch cards on Home. **Wiki** moved under Buy Crypto; **Configuration → "Main Settings"** in the profile menu. Trade History "Closed" now shows the full date/time.

_Upgrade note: backend changes take effect after a restart._

---

## v3.5.4

**v3.5.4 — in-app Wiki redesigned.**

- The in-app Wiki now matches the public site: one **continuous-scroll** document with a **scrollspy** sidebar (the section you're reading is highlighted), smooth-scroll anchors and live search filtering.

_Frontend only. No money-path changes._

---

## v3.5.3

**v3.5.3 — Portfolio PnL / Reports were frozen (fixed).**

- The trade-history reader capped rows at **500**, and the report generator asks for the *oldest* rows first — so once you had 500+ closes it only ever saw ancient trades and Portfolio PnL + Reports froze on stale data. The cap is raised to **100,000**, so reporting sees every close and the 1D/7D/30D windows move again.

_Reporting only. Money-path untouched; effective on reboot._

---

## v3.5.2

**v3.5.2 — statistics integrity + Trading Days KPI.**

- Fixed a **double-count** of partial closes that inflated Today's PnL (~9×), corrected a stats fallback that summed leveraged **percent as if it were dollars**, and annualized Sharpe/Sortino on short histories.
- Added a **verify-against-exchange** pass that reconciles Wind's PnL with the exchange's realized income and logs any drift.
- New **Trading Days** KPI on Home.

_Reporting only. Money-path untouched; the canonical realized-$ source is positions_history._

---

## v3.5.1

**v3.5.1 — Home PnL in lockstep + public wiki & branding.**

- Home's **Portfolio PnL** chart now refetches on the same 15s clock as Today's PnL (was a stale 30s timer), so the two never disagree.
- Public **Wiki & Docs** page generated from the in-app wiki (zero drift), exact app **brand corner** (logo + wordmark + favicon), and pricing set to **$49.99 self-host / $99.99 managed**.

_Frontend / site only. Money-path untouched._

---

## v3.5.0

**v3.5.0 — operator console + end-to-end client flow.**

- **Super-admin console** on the master: clients table + grant/extend/ban/ping/delete (managed-VPS teardown), gated to ghost-admin or a configured super-admin so it works on a production master.
- **Client lifecycle** wired end-to-end: website CTA → Stripe Checkout → signed license → (managed) auto-provisioned VPS → renewals push a fresh license each billing cycle.

_Business layer (non-money-path)._

---

## v3.4.0

**v3.4.0 — the business layer.**

- **Dual-tier site** (Self-host vs Managed "done for you") with a single checkout config driving prices and CTAs.
- **Stripe Checkout** + a signature-verified, idempotent webhook: self-host emails a license + Docker one-liner; managed provisions a VPS and emails the dashboard.
- **Ed25519-signed licenses** redeemed on the instance; managed-VPS orchestration (Hetzner + Cloudflare + Caddy HTTPS).

_Go-to-market scaffolding. Money-path untouched._

---

## v3.3.0

**v3.3.0 — Chat + DMs, Whales UX, deploy infra.**

- **Wind Chat** became a full two-pane messenger: public channels **and** private direct messages (gated to their two participants), presence, unread badges and a cross-device thread list.
- **Whales_Sniper**: honest radar state (Connecting / Live / Idle) with Start/Stop and "Calculating" shimmers; **Buy Crypto** got real coin logos.
- **Deploy infra**: Dockerfile + CI + public website; ghost-admin properly gated off in production.

_Non-money-path._

---

## v3.2.6

**v3.2.6 — Buy Crypto on-ramp aggregator.**

- **Buy Crypto** rebuilt from static link cards into a fiat→crypto **estimator + on-ramp comparison**: amount + fiat (USD/EUR/GBP) + coin + payment method → "you receive ≈ X COIN" net of typical fees, ranking MoonPay / Ramp / Binance / Coinbase / Kraken with a **Best Value** badge and deep-links that pre-fill coin + amount. Non-custodial — Wind never touches fiat.
- CatalystDEX defaults to **Swap**; the redundant CEX-Buy tab was removed.

_Frontend only. Money-path untouched._

---

## v3.2.5

**v3.2.5 — Whales_Sniper perfected.**

- **Data integrity**: blended cross-chain win-rate (fixes "100% WR + negative P&L"), clamped unrealized P&L (kills bad-decimal garbage), and coherent buy+sell trade counts.
- **Profile aggregation**: a whale's profile now aggregates across chains (was single-chain, mismatching the leaderboard row).
- **Clarity**: tooltips on all 13 column headers, "Calculating" shimmers during radar boot, and **click-to-sort** on 8 columns.

_Analytics only (non-money-path)._

---

## v3.2.4

**v3.2.4 — a decentralized Marketplace relay + a fresh storefront.** All tested (**356 unit tests**).

### 🛰️ One master = the public hub
- The **WIND MASTER** is the single central hub clients connect to. Its public endpoints (`/api/public/marketplace/*`, `/api/public/chat/*`) expose **only** marketplace / chat data — never trading, config or keys — so a client on any VPS can browse / buy / chat without ever reaching a live trading bot.
- Run a master **without exchange keys** and it's automatically a **pure marketplace / chat hub** (no exchange, no trading); add keys + Start and the same instance can also trade. Clients (`start2.bat`…`start5.bat`) federate to it via `WIND_MASTER_URL`. One role, no separate relay — cleaner.

### 🛒 Marketplace storefront, refreshed
- The Marketplace page is rebuilt on the app's modern design system — cleaner listing cards, modals, tabs and badges, plus **loading skeletons** instead of blank states.
- **Remote reviews** now read / write against the host you're browsing (not just locally).
- Payments are unchanged and stay decentralized: you pay the seller's wallet on-chain and confirm with the tx hash; Wind custodies nothing.

### 🔔 Notifications
- Short trades now read in **minutes** — any close held under **1h20** shows e.g. "45m" instead of "0.8h".

_Upgrade note: the relay mode + marketplace endpoints take effect after a backend restart._

---

## v3.2.3

**v3.2.3 — equal-margin DCA, honest reporting & no more blank screens.** A reliability + polish follow-up. All tested (**356 unit tests**).

### 🛡️ Engine — equal-margin DCA allocation (money-path)
- The per-position DCA budget is now split across **all live positions**, not just the configured symbols. Before, a book of 28 positions each claimed `equity / 12` and demanded ~2.3× equity → the deepest DCA layers were rejected ("insufficient margin") and late-gridded positions got a near-empty ladder. Now margin is shared **equally across every held position**, so the whole book fits inside equity and each position keeps its full ladder (margin already consumed is subtracted first).

### 📊 Reporting
- **Today's PnL** is read from the **persisted database** (the full UTC calendar day) instead of the in-memory session total — it no longer resets to ~$0 after a restart.
- **Trading Days** counts from the **first trade in the database** (day 1 = your very first trade), not just the trades on the current page.
- Removed the redundant **Avg PnL %** tile from Trade History.

### 🏠 Home & UI
- **No more blank "—" while data loads** — KPIs (Equity, Today's PnL, Win Rate, Open Pos, Active Grids, Health), the Portfolio chart and the Dashboard's System Health show an animated **"Calculating…"** state until their data is ready.
- **Taller Portfolio PnL chart**, and the running **version** now shows next to "Trading Hub".

### 📚 Docs
- The **Wiki is fully redesigned** — a modern two-pane layout with a grouped, searchable sidebar (Engine / Markets & Tools / Risk & Access / Patch Notes / FAQ) — and every section was refreshed to match the current engine (orphan adoption, equal-margin allocation, per-position leverage, max-positions 30).

_Upgrade note: the equal-margin DCA change takes effect after a backend restart._

---

## v3.2.2

**v3.2.2 — every position managed, all the time.** A reliability-focused follow-up: Pattern Trader positions can no longer slip through unmanaged, the DCA-state logic is simplified to a single source of truth, plus honest reporting and a few Home upgrades. All tested (**351 unit tests**).

### 🛡️ Engine — no more unmanaged positions (money-path)
- **Orphan adoption.** A Pattern Trader position opened on a non-config symbol (and not restored after a reboot because it had no persisted grid) used to ride **unmanaged** — no take-profit, no stop-loss, no DCA grid. Reconciliation now reaches those exchange-held positions and **adopts every one** into tracking.
- **Continuous DCA defense.** The grid engine now **adopts any held position that lacks a grid** on each cycle, and a held position is always allowed to build its DCA defense even when the daily-trade cap or a cooldown is active (those gates only block *new* entries). Pattern Trader positions finally get their layer ladder.
- **Simpler L13 protection.** The separate periodic self-heal pass is **removed** — `dcaFillCount` is now restored in one place, when a position is adopted, from its persisted grid. A re-adopted DCA'd position rides **John Wick** with no second-guessing. Confirmed live: every position adopted, John Wick on DCA'd, No-Layer on clean.
- **Max open positions** raised to **30**.

### 📊 Honest reporting
- **Corrupt-PnL filter is now $-aware.** A real high-leverage win (e.g. 20× on a 15% move = 300%) is no longer mistaken for a corrupt record and dropped from your stats. A close is rejected only when **both** its leveraged % is impossible **and** its $ is impossible for a single position.

### 🏠 Home & UI
- **Market Heatmap** replaces Best & Worst — a live **TradingView** heatmap with a **Crypto / Stocks** toggle.
- **Recent Activity** shows the realized **$** next to the %, and both **Recent Activity** and **Market News** scroll.
- **Positions** — the DCA-layers gauge is back to a clean bar (the "bleeding" L13 warning was retired now that the engine self-corrects).
- **Navigation** — Pattern Trader and Whales Sniper swapped order in the Applications menu.

_Upgrade note: the engine changes (orphan adoption, grid adoption, gate bypass, heal removal, max-positions cap) take effect after a backend restart._

---

## v3.2.1

**v3.2.1 — per-position leverage, a refreshed Home, and a money-path L13 fix.** A focused follow-up to v3.2.0: one real engine fix plus a wave of dashboard polish. All tested (**328 unit tests**).

### 🛡️ Engine — BUG-L13 reboot fix (money-path)
- **Per-position leverage** — each position now carries its **actual exchange leverage** instead of the global config default. A manually-opened x20 is piloted as x20 (PnL %, TP targets, John Wick, breakeven, stop-loss, liquidation distance all use the real value). Abnormal leverage is detected on adoption + re-synced every cycle and flagged with a notification.
- **dcaFillCount restored after reboot** — a heavily-DCA'd position adopted *before* the first equity sync could be left at `dcaFillCount=0` and wrongly No-Layer-TP'd instead of riding **John Wick**. Two fixes: the boot now **waits for the first equity sync before rebuilding DCA grids**, and a **runtime self-heal pass** re-classifies any position whose live size clearly exceeds a single entry. Conservative — it only ever adds John Wick protection, never removes it.

### 🏠 Home — a real cockpit
- **Portfolio PnL chart** — a cumulative realized-PnL area chart with **7D / 30D / 90D** toggle, replacing the old exposure bar.
- **Market News** — a live crypto-headlines feed (key-less RSS, cached) with thumbnails, source and relative time, each clickable to the article.
- **6 live KPIs**, a **Recent Activity** feed and **Best & Worst** trades — all with **coin logos**, side pills and relative timestamps.
- Greeting header, calmer (non-clickable) cards, a tidier scrollbar and Quick-Launch tiles.

### 🎨 Look & feel
- **Unified gradient page titles** across the whole app (brand gold → pink → magenta).
- **Gradient avatars** + more colour choices in Account settings.
- **Positions → CatalystDEX** — click a position's logo or symbol to jump straight to that token's chart.

_Upgrade note: the engine changes (leverage, L13 fix, News endpoint) take effect after a backend restart._

---

## v3.2.0

**v3.2.0 — Marketplace 2.0, Chat HUB, Backtester, proactive alerts & a safer engine.** The biggest release yet — six feature arcs plus money-path hardening, all tested (311 unit tests).

### 🛒 Marketplace 2.0
- **Trustworthy ratings** — one review per author, self-review blocked, forged star values dropped so the score can't be gamed. Per-star distribution bars in the reviews modal.
- **Verified performance** — listings show a real **win rate, avg PnL, profit factor and max drawdown** computed from actual closed trades, badged **Verified** vs **Self-reported**.
- **Payments scaffold** — a records-only payment-intent + on-chain receipt layer on top of the existing P2P pay-the-seller flow. No funds are ever custodied; a sale only settles once the transaction is verified on-chain.

### 💬 Wind Chat HUB
- Multi-client chat with persisted history, rooms and presence. **Server-authored identity** — a logged-in user can no longer post under someone else's name.

### 📊 Backtester (now in-app)
- The strategy **Backtester is wired into the app** (its own page + nav): run your live config over historical candles for an equity curve, win rate, PnL and drawdown.
- A faithful **full-system Wick Hunter backtest** (entry + DCA ladder + John Wick exit) was built to settle live-readiness — verdict: **not yet** (the high win rate is a martingale illusion erased by the liquidation tail).

### 🐋 Whales Sniper / Copy-Trade
- A safety-gated copy layer (size caps, cooldowns, opt-in) that records intent without auto-firing real orders.

### 🛡️ Proactive alerts & a safer engine
- **Liquidation-near / DCA-low alerts** on the dashboard (and Telegram once configured).
- **John Wick on adopted positions** — re-adopted DCA'd positions now correctly ride John Wick instead of closing flat (No-Layer). Confirmed live.
- **Net-directional cap** (off by default) — refuses to deepen a one-sided book.
- **Pattern Trader now enforces your configured leverage** — it used to inherit whatever leverage a symbol had on the exchange (e.g. x20 instead of x10).
- Faster startup, truer breakeven arming, and correct engine attribution on every close.

### 🎁 UI & notifications
- **Refer & Earn** and **CatalystDEX** moved into the top bar; **settings search** on the Advanced page; notification history & bell badge now hold **999**; clearer **John Wick TP** labels; History shows **Trading Days**.
- **Many more toasts** — Binance price-stream connect/disconnect, plus position-opened, grid started/stopped, auto-reverse, circuit-breaker, low-margin, backup-SL and wick-entry events now surface on the dashboard, not just Telegram.

---

## v3.1.8

**v3.1.8 — Security & reporting hardening, operator safety suite, Pattern Trader, scanner redesign**

---

### Security (hardening)
- **JWT secret no longer leaks.** `GET /api/config` was returning the per-instance JWT signing secret — anyone who saw it could forge a valid token for any user (incl. admin). Internal keys are now stripped from the response.
- **DEX wallet encryption** uses a **random per-instance key** (persisted) instead of a public hardcoded default; pre-existing wallets still decrypt.
- **Login brute-force throttle** (lockout after repeated failures). Bind address is configurable (`HOST`), and the first-run "no users yet" window no longer opens the whole API.

### Reporting accuracy
- **Partial-TP profits are counted again.** Statistics/reports/daily-stats matched a literal type that the real partials (`JW_TP1_PARTIAL`…) never used — so roughly half of every John Wick winner was missing. Fixed.
- **Funding is exchange-agnostic** (BingX + Gate.io), no longer BingX-only, and duplicate funding rows logged by past restarts are cleaned up at boot.

### Reliability fixes
- **DCA fills found by polling now count** toward the layer total (fixes the wrong "Low P.Guard" badge and the No-Layer-vs-John-Wick misfire when a fill's WS event was missed).
- **Durable closes:** closes/trades flush to disk ~1.2s after the event (not just the 10s timer) — they survive a hard stop.
- The **logs** table is pruned (>7 days) so the DB stays small and saving stays fast.

### Operator safety (new)
- **Config Health** pre-flight on the Dashboard — flags risky settings (no SL, high leverage, full deployment, missing circuit breakers…).
- **System Health** on the Dashboard — live runtime signals: price-feed/WS, rate-limit, persistence, reconciliation, and **positions near liquidation**.
- **Active alerts:** DANGER findings are pushed to **toast + Telegram** (deduped).

### Strategy & configuration
- The **strategy selector moved to the Configuration page** — named cards, **Asgrid Dynamics Levels** and **Wick Hunter** (the third engine, **Patterns Detectors**, runs as the Pattern Trader bonus app). The **Advanced** tab stays hidden until a strategy is selected and saved.

### Pattern Trader — new BONUS app
- Detects **11 chart patterns** (cup & handle, double/triple bottom, inverse H&S, wedges, flags, triangles, range breakout, uptrend pullback, double top) with confidence, target and a **mini price-graph**. Opt-in **auto-trade** deploys **AsGrid** on strong setups (risk-gated, no double-entry, cooldown) and a per-card **Trade now** button.

### Patterns Detector — redesign & expansion
- **Full modern redesign** (card grid). Now combines TA confluence + candlestick patterns + **geometric chart patterns** + **price sparklines** per pair.

### UX
- **Toasts show the coin logo + symbol** — you always know which pair fired.
- DEX **Buy & Swap** chart overlays live positions + DCA layers.

### Quality
- Unit test suite grown **59 → 173** (strategy gating, realized PnL, risk gates, breakeven, side inference, funding normalization, statistics, config/system health, pattern detection & trade eligibility, DCA-state restore across reboot, marketplace/chat server logic, and the phantom-profit close guard).

### Pattern Trader — limits & alerts
- **Max trades cap.** A **1 / 5 / 10** dropdown limits how many positions auto-trade can open concurrently — enabling auto-trade can no longer open trades without bound. The scan logs a one-line summary (detections / opened / live / skipped).
- **Trade notifications.** Pattern Trader now posts a 🔬 *Pattern Trade* toast that routes to **Positions** (the trade is open, not in history).

### Positions & history
- **Positions reorganised by engine.** The old "Bot-Managed" block is split into **⚙️ Asgrid Dynamics Levels** and **🔬 Patterns Trader** sections (like Exchange positions). Each card adds an **Est. TP price** (next take-profit) and a pulsing **"Trailing to the moon 🌙"** badge while John Wick rides after TP1.
- **History — Engine column.** Between Reason and Duration, every trade shows which engine opened it (🔬 Patterns / ⚙️ Asgrid / ✋ Manual), persisted on the trade. `JW_TP1_PARTIAL` rows now show their hold **duration** (it was hard-coded to 0).

### TP behaviour & reboot safety
- **John Wick PnL drift fixed.** During the post-TP1 ride the bot tracked PnL on a stale internal avg entry that only reconciled at a TP trigger — so the displayed "Bot PnL" diverged from the real PnL for the whole ride. The ride now reconciles with the exchange avg entry (throttled), keeping the displayed PnL and the peak/pullback honest.
- **DCA state survives a reboot.** When the bot restarted it re-adopted each open position but rebuilt its DCA grid from scratch (`dcaFillCount` reset to 0, initial size set to the already-averaged-down quantity). A genuinely layered position then looked "clean" and could be closed 100% by **No-Layer TP** at +X% instead of getting the **John Wick** ride (50% + trail). On adoption the bot now **restores the true `dcaFillCount` and initial entry size from the persisted grid** (same-side, non-closed) and self-heals (a position larger than its base is never treated as clean), so the layer count and TP behaviour stay correct across restarts.

### Reports, logos & naming
- **Coin logos & hype emojis.** Reports show **coin logos** per symbol and **hype emojis** on close reasons (🌙 John Wick Pullback, 🚀 TP3, 🛑 Stop Loss, 🔫 `JW_TP1_PARTIAL`…); missing numbers no longer render as "$undefined".
- **Multi-source logo fallback.** Icons try several CDNs before falling back, so far fewer coins (SUI, SEI, WIF, TIA, ONDO…) show a bare letter; the letter fallback uses brand colours.
- **Toast logos fixed.** Layer / DCA toasts were missing the coin logo & name (the symbol was never passed to the toast); the dedup window no longer swallows rapid successive DCA layers.
- **Naming.** Strategies are now **Asgrid Dynamics Levels**, **Patterns Detectors** and **Wick Hunter** across the app.

### Referral, Catalyst & logging
- **Refer Friends & Earn — rebuilt.** Reward is **$12 per invited member**, with a prominent **Whop invite** link, plus the exchange sign-up links and Discord.
- **Catalyst** got a premium header banner (glowing mark, DEX badge, module tagline) and modern pill tabs.
- **Logs.** A one-line boot summary on trading start (strategy / TP mode / leverage / engines / Pattern Trader state / funding / alerts), plus richer Pattern Trader (scan summary, max-trades) and John Wick reconciliation logs.

### Marketplace & Chat — decentralized hub
- **Strategy Marketplace** replaces Upgrade in the nav: browse, buy and **list** strategies, NFTs and items. Payments are **peer-to-peer on-chain** — you pay the seller's wallet directly and the transaction is verified on-chain; Wind custodies nothing. Sellers list from their **Wind wallet**, and a small platform fee applies per sale and per swap (stays off until a fee wallet is set).
- **Paid strategy presets are locked.** A buyer receives the strategy config only **after the on-chain payment is verified** — free strategies stay open.
- **Multi-client, master-hosted.** One build; the role is decided by which launcher runs (**1 MASTER + up to 5 clients**). Clients **auto-federate** with the master — no link to paste, cross-VPS ready.
- **Wind Chat HUB.** Rooms (#general / #strategies / #signals / #nfts), **direct messages**, presence and **real-time** delivery, with a **Messages** menu in the header. Share a marketplace listing straight into a chat.
- Listings show a **verified track record** plus **ratings & reviews**.

### Reporting accuracy (more)
- **Phantom-profit guard.** A position that vanished from the exchange (liquidation / external close) could book a fake gain if its internal average entry had drifted — one force-closed position once recorded a **+5,203** phantom. Such involuntary closes can no longer book an implausible profit (they're flagged and zeroed), the **equity curve** no longer rebuilds that phantom from price data, and pre-existing bad rows are cleaned up at boot. The realized-PnL total and the circuit breaker now stay honest.
- **CEX market buy in Catalyst.** Alongside the DEX swap you can now **market-buy on your connected exchange** directly from the Buy panel.

### Appearance & profile
- **Left-menu themes.** Four looks — **Aurora** (default: a glowing gradient indicator + slide-on-hover), **Pill**, **Glass** and **Flat** — switchable from the **Profile menu**, remembered per browser.
- **Profile Settings, redesigned from scratch** to match the new look: avatar + color, password change, an **Appearance** theme picker, and session — replacing the old amber/gradient cards.
- **Pattern Detector loads far faster** (parallel scan + an instant cached view while it refreshes).

---

## v3.1.5

**v3.1.5 — DCA defense fix, John Wick/No-Layer resolution, license system, Whop, tooling & UX**

---

### CRITICAL — DCA defense restored
- **Market-anchored DCA ladder.** The ladder was anchored on the average entry; once a position was underwater the top layers landed above market and the exchange rejected every one (`PRICE_TOO_DEVIATED`) → zero DCA defense while sliding to liquidation. The ladder now anchors on the **current market price** when underwater, so layers are placed where the exchange accepts them.
- **Error mis-classification fixed.** Gate's "deviation-rate limit" rejection contains the substring "rate limit" and was treated as a rate-limit → the DCA refresh "halted (rate limited)" and retried **every cycle forever**. Now correctly classified; a too-deviated layer is skipped, not looped.

### TP behaviour
- **John Wick vs No-Layer TP resolved.** A clean (no-DCA) position now closes 100% at +2% via No-Layer TP — **no John Wick ride**. John Wick (50% + trail) applies only after the position has averaged down. Previously both fired at the same +2% threshold and the runner was closed instantly.
- **No-Layer TP** default 2% (real price move, leverage-independent) and active by default.

### Defaults
- Grid direction **bidirectional**, TP mode **john_wick**, **45** DCA layers, DCA spacing multiplier **1.05**, DCA size multiplier **1.07**, **percBalance 100%**. The **Default** button applies the client preset (secrets preserved).

### License & access
- Built-in **license system**: per-instance expiry, header/sidebar status chip, full-screen lock + "Renew on Whop" when inactive, trading gated until active. Days granted by support.
- **Upgrade page** rebuilt around the **Whop** subscription (Aiom Academy — $49.99/mo, 7-day trial); shows "access active" with days remaining once licensed.

### Positions & history
- **DCA Layers Left** gauge on positions (exchange table + managed cards) — green→amber→red fuel gauge from real open-order counts.
- **Trade History**: Action column with **Modify data** and **Delete trade**; changes propagate to statistics and reports (which recompute live from the trade tables; daily-stats cache rebuilt).

### Quality
- Repo under git with a regression **test suite** (Node test runner) covering PnL math, roundQty, retry/grid error classification, config normalization, grid budget conservation, liquidation distance.
- Backtest harness (`tools/backtest.mjs`) — long-only vs bidirectional on real klines.
- Follow-price no longer repriced DCA orders (was triggering 100410 rate-limit storms); Whale Discovery radar auto-start gated off by default.

---

## v2.3

**v2.3 — BE State Leak Fix + John Wick TP + 5-Chain Whale Scanner**

---

### Critical: Breakeven State Leak Fixed
New positions inherited tpHits/breakeven from previous position on same symbol via DB recovery. 78% of breakeven closes had NO real TP trade. Fix: grid entries get clean state, only adopted positions recover from DB.

### John Wick TP Mode
New TP strategy (`tpMode: 'john_wick'` in Advanced Config):
- **Phase 1:** Close 50% at 2% spot (20% at 10x) — hardcoded
- **Phase 2:** Rest rides to the moon, closes on 0.5% spot pullback from peak
- **Safety:** Auto-close at 0% PnL to protect entry

### Whale Scanner v2 — 5 Chains, 21 Pools
ETH (10 pools), Arbitrum (8), Base (2), Polygon (3), BSC (3). Threshold $1K (was $5K). Lookback 2000 blocks. Max 2000 whales. Deduplication, pagination 500/25, chain filter, token unwrap (WETH->ETH), trending detection, wallet auto-tracking at boot.

### Rate Limit Hardening
Testnet: 1 call/7s. Reconciliation bulk fetch (2 calls instead of 40). Sequential grid boot. Post-100410 cooldown.

### Reliability
- Race DCA vs Close: isClosing() check before DCA placement
- Asymmetric grid detection: cancel if 0 BUY or 0 SELL placed
- Memory leak: throttle maps cleaned every 10 minutes
- Grid polling: 15s (was 5s), fills via PrivateWS events

### Frontend
- Config save try/catch + error display
- Reset All button (full client deploy reset)
- Close position Wind-styled modal
- Health Dashboard (12 metrics)
- Cash money TP sounds (ka-ching + victory chord)

---

## v2.2

**v2.2 — Trailing Fix + DCA Hardening + Whales_Sniper v2**

---

### Trailing TP Fix (CRITICAL)
- **minProfitPnl REMOVED** — Was blocking trailing close when PnL dropped below 5% (0.5% price × 10x lev). Positions with peak +15% would not close at +4.8% because 4.8% < 5.0% threshold.
- **Now:** Once drawdown exceeds trail width and the position reached the activation gate, CLOSE. No profit floor check.
- **BUG-27 verify** updated: only blocks if exchange PnL is below SL (not minProfit).

### DCA Race Hardening
- **Smart skip** — refreshDCA() skips if config unchanged + entry drift < 2% + DCA still open
- **Exchange verify** — Queries open orders before placement, cancels orphans
- **Atomic refresh** — Snapshots qty before cancel, detects mid-cancel fills
- **Anti-duplicate** — Skips layers within 0.1% of existing price

### Breakeven Removal
- "Close at BE" mechanism fully removed (caused false closes on client VPS)
- Breakeven restored in v2.3 — closes at [0%, 1.1%] after TP1 + profit arm

### Whales_Sniper v2
- **Multi-chain** — ETH + ARB + BASE scanning in parallel, auto-start at boot
- **Token decode** — Exact tokenIn/tokenOut/symbolIn/symbolOut from Uniswap V3 calldata
- **Real P&L** — Weighted avg entry, realized on sell, unrealized live
- **GoPlus Safety** — Token honeypot/scam detection
- **Whale clustering** — Linked wallet detection
- **Etherscan enrichment** — 100 historical tx for top whales
- **Alpha + Confluence** — First-time buys + 3+ whales same token in 30min
- **Telegram alerts** — 4 types: new_token, big_trade, sell, cluster
- **Persistent leaderboard** — Cumulative data survives reboots
- **Podium** — Medals for top 3, numbered badges for 4+

### Reports
- PnL calculation fixed ($8,622 → $9.69)
- Reconciliation close reasons enriched (8 types)

### Exchanges
10 exchanges fully configured: BingX, MEXC, Binance, Gate.io, Kraken, BloFin, Coinbase, Bybit, OKX, Bitget.
Each with REST connector + WebSocket + Private WebSocket.

---

## v2.1 (v1.2.7)

**v2.1 — DCA Race Fix + Breakeven Safety + Catalyst DEX + Whales_Sniper**

---

### AsGrid DCA Fixes
Client-reported: "layers en trop consommés et mal placés"

- **Smart Skip** — refreshDCA() no longer cancels/re-places 30 DCA every 15min. Skips if config unchanged + entry drift < 2%. Reduces API calls ~90%.
- **Exchange Verify** — Queries open orders before placement, cancels orphan DCA from partial cancel failures.
- **Atomic Refresh** — Snapshots position qty before cancel, detects fills during 1s cancel window, syncs before re-placing.
- **Anti-Duplicate** — Tracks placed prices, skips layers within 0.1% of existing. Prevents double orders.

### Breakeven Safety
Client-reported: "TP1 ne fire jamais, breakeven close à 0.2%"

- **tpHits >= 1 gate** — Breakeven blocked unless TP1 actually executed a partial close.
- **5-gate defense**: breakeven=true → tpHits>=1 → 30s cooldown → _reachedProfit → PnL zone [0%, 1.1%]
- "Close at BE" mechanism fully removed (caused false closes on client VPS)

### Reports & Trade History
- PnL calculation fixed: $8,622 → $9.69 (correct)
- Reconciliation close reasons enriched (8 types instead of generic RECONCILIATION_CLOSED)
- TP_PARTIAL → TP1_PARTIAL, TP2_PARTIAL, etc.
- Trade History cards: Wind gradient style

### Other Fixes
- marginMode default: CROSSED → ISOLATED (matches config)
- tpTargets fallback: [0.5] → [0.45] in 5 locations
- TPSL memory leak: throttle maps cleaned on position close
- TP race condition: _lastTPCloseTime set before closePartial
- Boot speed: parallel grid setup (batch 4) → 60s → 15s
- Login persistence: JWT in localStorage
- Patterns Detector: white borders fixed (Tailwind surface colors)

### Catalyst DEX (NEW)
Full DeFi trading platform integrated into Wind.

- **Markets** — 50 coins live (CoinGecko), real logos, sparklines, price flash
- **Trading** — TradingView SuperChart + real DEX swaps (Uniswap V3 / PancakeSwap)
- **Wallet** — Real EVM wallets, 28 ERC-20 tokens, 7 chains
- **Swaps** — Quote, slippage config, gas estimation, confirmation modal
- **Portfolio** — USD value, chain distribution, live pricing
- **Sniper Mode** — Factory event monitoring, honeypot detection
- **MEV Protection** — Flashbots RPC on Ethereum
- **Live Prices** — Binance WebSocket (sub-second) on Trading tab

### Whales_Sniper (NEW)
Dedicated page: detect, track & copy the most profitable on-chain whales.

- **Discovery Radar** — Scans Uniswap V3 Swap events on ETH + ARB + BASE
- **Token Decode** — Extracts exact tokenIn/tokenOut from swap calldata
- **Scoring 0-100** — Consistency, win rate, Sharpe, volume, recency, diversity
- **Classification** — Sniper, Flipper, Accumulator, Smart Money
- **P&L Tracking** — Weighted avg entry, realized on sell, unrealized live
- **Persistent Leaderboard** — Cumulative in DB, survives reboots
- **GoPlus Safety** — Honeypot/scam detection per token
- **Clustering** — Detects linked wallets (same tokens < 5min)
- **Alpha Detection** — First-time buys by top whales
- **Confluence** — 3+ whales buy same token within 30min
- **Telegram Alerts** — new_token, big_trade, sell, cluster
- **Copy Trading** — Track wallets, auto-copy 0.1x-2x multiplier
- **Multi-chain** — ETH + ARB + BASE, auto-start at boot

### Auth System (NEW)
- Login page with Wind gradient
- JWT token persistence (auto-login on reboot)
- Profile dropdown with sign out
- Start Trading confirmation modal with config summary

