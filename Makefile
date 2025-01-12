# Variables
PYTHON=python3.12
VENV_DIR=nn_env
REQUIREMENTS=requirements.txt

# Targets
.PHONY: all setup clean

# Default target: Set up the environment
all: setup

# Create the virtual environment and install requirements
setup:
	@echo "Creating virtual environment..."
	$(PYTHON) -m venv $(VENV_DIR)
	@echo "Activating virtual environment and installing dependencies..."
	$(VENV_DIR)/bin/pip install --upgrade pip setuptools wheel
	$(VENV_DIR)/bin/pip install -r $(REQUIREMENTS)

update:
	pip freeze -> $(REQUIREMENTS)

# Clean up the virtual environment
clean:
	@echo "Removing virtual environment..."
	rm -rf $(VENV_DIR)
