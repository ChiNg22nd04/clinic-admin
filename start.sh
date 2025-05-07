#!/bin/bash

# Chạy Docker Compose (build và start container)
docker-compose up -d

# Đợi một chút để container khởi động
sleep 5

# Mở trình duyệt với địa chỉ của Directus
open http://localhost:8055
