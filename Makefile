# Makefile for Mohamed Mahrous Portfolio

.PHONY: help install demo clean validate

# Default target
help:
    @echo "Available commands:"
    @echo "  make install   - Install dependencies (http-server)"
    @echo "  make demo      - Run local development server"
    @echo "  make clean     - Clean any temporary files"
    @echo "  make validate  - Validate HTML files"

# Install dependencies
install:
    @echo "Installing dependencies..."
    npm install http-server -g

# Run local development server
demo:
    @echo "Starting local server on http://localhost:8080"
    npx http-server -p 8080 -o

# Clean any temporary files
clean:
    @echo "Cleaning temporary files..."
    find . -name '*DS_Store*' -type f -delete
    find . -name '*.log' -type f -delete

# Validate HTML files (optional, requires tidy or htmlhint)
validate:
    @echo "Validating HTML files..."
    tidy -qe *.html
