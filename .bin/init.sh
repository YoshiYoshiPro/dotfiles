#!/usr/bin/env zsh

# Check operating system
if [[ "$(uname)" != "Darwin" ]]; then
    echo "Not macOS!"
    exit 1
fi

# Install brew
if ! command -v brew &> /dev/null; then
    echo "Installing Homebrew..."
    /bin/zsh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo "Homebrew installed successfully."
fi

if [[ "$(uname -m)" == "arm64" ]] && ! grep -q 'eval "$(/opt/homebrew/bin/brew shellenv)"' /Users/${USER}/.zprofile; then
    echo 'Adding Homebrew initialization to .zprofile...'
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/${USER}/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Install xcode
if ! xcode-select -p &> /dev/null; then
    echo "Installing Command Line Tools for Xcode..."
    xcode-select --install
    echo "Command Line Tools for Xcode installed successfully."
else
    echo "Command Line Tools for Xcode are already installed."
fi

# Install Rosetta 2 for Apple Silicon
if [[ "$(uname -m)" == "arm64" ]] && ! [[ -f "/Library/Apple/System/Library/LaunchDaemons/com.apple.oahd.plist" ]]; then
    echo "Installing Rosetta 2..."
    /usr/sbin/softwareupdate --install-rosetta --agree-to-license
    if [[ $? -ne 0 ]]; then
        echo "Error: Failed to install Rosetta 2."
        exit 1
    fi
    echo "Rosetta 2 installed successfully."
fi

echo "Initialization complete!"
exit 0
