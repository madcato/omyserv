# Exit immediately if a command exits with a non-zero status
set -e

# Check the distribution name and version and abort if incompatible
source ~/.local/share/omyserv/install//check-version.sh

echo "Installing terminal tools..."
# Install terminal tools
source ~/.local/share/omyserv/install//terminal.sh