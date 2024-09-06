# Libinput-Mac-Gesture-Arch

## Overview

**`libinput-mac-gestures`** is a project for Arch Linux that allows you to use multi-touch gestures on your touchpad to manage workspaces and applications. This tool is specifically designed to work with the `libinput` library and `xdotool` for gesture detection and execution. The gesture controls are similar to those found on macOS.

The project is still under development and does not yet include all planned gestures. Contributions and improvements are welcome!

## Features

- **Workspace Management**: Navigate between workspaces and show workspace overview.
- **Application Management**: Open the application overview.
- **Window Management**: Minimize or hide the current window.

## Gestures and Actions

The `Libinput-Mac-Gesture-Arch` project includes the following gestures and their corresponding actions:

- **Swipe Up**:
  - **First Swipe**: Shows the workspace overview.
  - **Second Swipe**: Opens the application overview.

- **Swipe Down**:
  - **From Workspace Overview**: Returns to the current workspace.
  - **From Application Overview**: Returns to the current workspace.
  - **From Current Workspace**: Minimizes the current window.

- **Swipe Left**:
  - **From Workspace Overview**: Moves to the right workspace.

- **Swipe Right**:
  - **From Workspace Overview**: Moves to the left workspace.

  
## Installation

### Prerequisites

1. **Install Dependencies**:
   - `libinput-gestures`:
     ```bash
     sudo pacman -S libinput-gestures
     ```
   - `xdotool`:
     ```bash
     sudo pacman -S xdotool
     ```

2. **Clone the Repository**:
   ```bash
   git clone https://github.com/Dharnish1134/Libinput-Mac-Gesture-Arch.git
   ```

## Setting Up the Gestures

1. **Configure User for Input**:
   Add your user to the `input` group:
   ```bash
   sudo gpasswd -a $USER input
   ```

2. **Reboot Your System:** 
   Reboot to apply the user group changes:
   ```bash
   sudo reboot
   ```

3. **Stop and Autostart libinput-gestures:** 
   Stop the libinput-gestures service if it's running:
   ```bash
   libinput-gestures-setup stop
   ```
   Autostart libinput-gestures on boot:
   ```bash
   libinput-gestures-setup autostart
   ```

4. **Start libinput-gestures:** 
   Start the libinput-gestures service:
   ```bash
   libinput-gestures-setup start
   ```

5. **Move Configuration Files:** 
    Move libinput-gestures.conf and gesture-handler.sh from the code directory to the ~/.config directory:
    ```bash
    mv code/libinput-gestures.conf ~/.config/
    mv code/gesture-handler.sh ~/.config/
    ```

6. **Set File Permissions:**
   Provide execute permissions to the gesture-handler.sh script:
   ```bash
   chmod +x ~/.config/gesture-handler.sh
   ```

7. **Restart libinput-gestures:** 
   Restart the service to apply changes:
   ```bash
   libinput-gestures-setup restart
   ```

8. **Debugging:** 
   Run libinput-gestures in debug mode to check for issues:
   ```bash
   libinput-gestures -d
   ```

9. **Make libinput-gestures Autostart:** 
   Ensure libinput-gestures starts automatically on login:
   ```bash
   libinput-gestures-setup autostart
   ```

10. **Final Reboot:** 
    Reboot your system to ensure all changes are applied:
    ```bash
    sudo reboot
    ```

# Contributing to Libinput-Mac-Gesture-Arch

## Contribution Guidelines

The project is open to improvements and contributions. If you have suggestions for new gestures or enhancements, please feel free to contribute:

1. **Fork the Repository**: Click the “Fork” button on the repository page.
2. **Create a Branch**: Create a new branch for your changes.
3. **Make Your Changes**: Implement your improvements or new features.
4. **Submit a Pull Request**: Submit a pull request with a description of your changes.

## Additional Information

For more details on Libinput and libinput-gestures, refer to the [Arch Wiki](https://wiki.archlinux.org/title/Libinput).

---

Thank you for contributing to the project!



   

