# exit on error
set -o errexit

# Install dependencies
bundle install
npm install

# Build JavaScript with esbuild
npm run build

# Build Tailwind CSS
bundle exec rails tailwindcss:build

# Precompile Rails assets
bundle exec rails assets:precompile
bundle exec rails assets:clean

# Run database migrations
bundle exec rails db:migrate