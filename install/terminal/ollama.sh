if [ -x "$(command -v ollama)" ]; then
  echo "ollama is alredy installed"
else
  curl -fsSL https://ollama.com/install.sh | sh

  sudo cp ~/.local/share/omyserv/configs/ollama/ollama.service /etc/systemd/system/ollama.service

  sudo systemctl daemon-reload
  sudo systemctl restart ollama
fi

