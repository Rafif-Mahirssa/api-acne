# Gunakan image node resmi sebagai base image
FROM node:18

# Buat direktori kerja di dalam container
WORKDIR /usr/src/app

# Salin package.json dan package-lock.json ke dalam direktori kerja
COPY package*.json ./

# Install dependencies
RUN npm install --only=production

# Salin semua file dari proyek Anda ke dalam direktori kerja di container
COPY . .

# Gunakan environment variable untuk port
ENV PORT 8080

# Expose port yang digunakan oleh aplikasi
EXPOSE 8080

# Jalankan aplikasi
CMD ["node", "index.js"]
