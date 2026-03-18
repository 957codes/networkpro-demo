#!/bin/bash
# Network Pro Demo Launcher
# Opens the demo in your default browser with sample data

echo "🚀 Starting Network Pro Demo..."
echo ""
echo "The app will open in your browser at http://localhost:3000?demo=true"
echo "Press Ctrl+C to stop the server."
echo ""

# Check if npx is available
if ! command -v npx &> /dev/null; then
    echo "Error: Node.js is required. Download it from https://nodejs.org"
    exit 1
fi

# Open browser after a short delay
(sleep 2 && open "http://localhost:3000?demo=true" 2>/dev/null || xdg-open "http://localhost:3000?demo=true" 2>/dev/null) &

# Start the server
npx serve . -l 3000
