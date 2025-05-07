# Chọn image gốc cho Directus
FROM directus/directus:latest

# Cài đặt các dependencies nếu cần
# RUN npm install

# Expose port mặc định của Directus
EXPOSE 8055

# Cấu hình để chạy Directus khi container bắt đầu
CMD ["directus", "start"]
