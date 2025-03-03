#!/bin/bash
# Activate the Python environment and run the application

# Navigate to the project directory
cd /home/n4v/Projects/lute-v3/

# Activate the Python virtual environment
source /home/n4v/Projects/lute-v3/venv/bin/activate

# Run the application
python /home/n4v/Projects/lute-v3/lute/main.py &

# Open Lute
firefox -new-window localhost:5001
