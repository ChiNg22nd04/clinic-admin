# # Chọn image gốc cho Directus
# FROM directus/directus:latest

# # Cài đặt các dependencies nếu cần
# # RUN npm install

# # Expose port mặc định của Directus
# EXPOSE 8055

# # Cấu hình để chạy Directus khi container bắt đầu
# CMD ["directus", "start"]



# Chọn base image Node.js
FROM node:18-alpine

# Set thư mục làm việc bên trong container
WORKDIR /app

# Copy file package.json và package-lock.json vào container
COPY package*.json ./

# Cài đặt dependencies
RUN npm install

# Copy toàn bộ source code vào container
COPY . .

# Expose port backend (giả sử là 5000)
EXPOSE 5000

# Lệnh chạy server
CMD ["npm", "start"]
