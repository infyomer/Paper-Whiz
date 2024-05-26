mkdir -p ~/.streamlit/

echo "\
[general]\n\
email = \"your-email@domain.com\"\n\
" > ~/.streamlit/credentials.toml

echo "\
[server]\n\
headless = true\n\
enableCORS = false\n\
port = $PORT\n\
" > ~/.streamlit/config.toml

# Install system dependencies
apt-get update && apt-get install -y build-essential python3-dev

# Install additional libraries for torch
pip install torch==2.0.1
