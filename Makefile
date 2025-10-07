.PHONY: build serve clean deploy

# Default target
all: build

# Build the site
build:
	hugo --minify

# Start the development server
serve:
	hugo server -D

# Clean the public directory
clean:
	rm -rf public/

# Build and deploy (you'll need to customize this based on your hosting)
deploy: clean build
	@echo "Deploying site..."
	# Add your deployment commands here
	# For example, if using rsync:
	# rsync -avz --delete public/ user@your-server:/path/to/website/

# Help target
help:
	@echo "Available targets:"
	@echo "  make build    - Build the site with minification"
	@echo "  make serve    - Start the development server"
	@echo "  make clean    - Remove the public directory"
	@echo "  make deploy   - Build and deploy the site"
	@echo "  make help     - Show this help message" 