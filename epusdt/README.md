docker run -d -p 8000:8000 --name epusdt  -v ./.env.example:/app/.env baicailin/epusdt:alpine && docker logs -f epusdt
