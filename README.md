# katzEco Homebrew Tap

Personal Homebrew tap by [@katzEco](https://github.com/katzEco).

This tap provides custom casks and packages, including fonts and utilities for macOS.

---

## Installation & Usage

1. **Add the tap:**
   ```bash
   brew tap katzEco/repo
   ```
   *(Note: Homebrew automatically expands `katzEco/repo` to `https://github.com/katzEco/homebrew-repo`)*

2. **Install packages:**
   ```bash
   # Install LINE Seed Sans TH font
   brew install --cask lineseed-th

   # Install katzu-welcome
   brew install katzu-welcome

   # Install katzu-git (CLI)
   brew install katzu-git

   # Install overlay-manager
   brew install overlay-manager
   ```

---

## Available Packages

For the complete list and detailed descriptions of all available formulae and casks, see **[`index.md`](index.md)**.

---

## Updates & Maintenance

### Update Tap & Upgrades

To update the tap index and upgrade installed packages:

```bash
brew update
brew upgrade
```

To upgrade a specific package:

```bash
brew upgrade --cask lineseed-th
```

---

## Uninstallation

To uninstall a package:

```bash
brew uninstall --cask lineseed-th
```

To remove this tap from your Homebrew setup:

```bash
brew untap katzEco/repo
```

---

## Documentation & Useful Links

- [Homebrew Documentation](https://docs.brew.sh)
- [Homebrew Taps Documentation](https://docs.brew.sh/Taps)
- [Homebrew Cask Documentation](https://docs.brew.sh/Cask-Cookbook)
