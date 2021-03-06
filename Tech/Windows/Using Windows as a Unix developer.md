---
slug: windows-for-unix-dev
date: 2020-07-25
---

# Using Windows as a Unix developer

For a short while I switched to Windows on my laptop, which was mostly occasioned by my [[4fdbc878]] (NixOS) lately. The idea was to experience the best of both worlds --- a performant, flexible and open development environment to which I remote from a laptop that has great user experience as well as battery life.

## Windows Subsystem for Linux

* Install [**WSL 2**](https://docs.microsoft.com/en-us/windows/wsl/install-win10): Enables us to run Ubuntu, etc in a seamless manner.
* Install [**Windows Terminal Preview**](https://www.microsoft.com/en-us/p/windows-terminal-preview/9n8g5rfz9xk3?activetab=pivot:overviewtab): This will be our terminal app. Yes, Windows has an almost as good a terminal as Unix these days.

### Nix

Follow instructions at <https://github.com/srid/nix-config> to get most software installed through Nix and home-manager.

### Haskell development

This works rather smoothly, including native VSCode support: <https://twitter.com/sridca/status/1290785695913713664>

## For power users

* Install [PowerToys](https://github.com/microsoft/powertoys)
* Learn about [virtual desktop and task view](https://community.windows.com/en-us/stories/virtual-desktop-windows-10) (`Win+Tab`)

## Powershell for Unix users

* Start an administrator shell (equivalent to **sudo**):
  ```shell
  Start-Process -Verb RunAs powershell
  ```
* [Manage services](https://docs.microsoft.com/en-us/powershell/scripting/samples/managing-services?view=powershell-7)
  * Enable **ssh-agent**:
    ```
    Set-Service ssh-agent -StartupType Automatic
    Start-Service ssh-agent
    ```
* Pretty prompts via Powerline: [Tutorial: Set up Powerline in Windows Terminal](https://docs.microsoft.com/en-us/windows/terminal/tutorials/powerline-setup) (This works on Ubuntu as well, as long as Windows Terminal Preview is used)
  
### Known issues

- Use Ubuntu's ssh, until <https://github.com/PowerShell/Win32-OpenSSH/issues/1263> gets resolved.

## Misc

- [Outlook supports **RSS feeds**](https://support.microsoft.com/en-us/office/what-are-rss-feeds-e8aaebc3-a0a7-40cd-9e10-88f9c1e74b97). While it is widely known as to how Google gave up on RSS, hardly anybody knows that Microsoft still supports them in their desktop software.