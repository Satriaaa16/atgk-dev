FROM nginx:alpine

# Hapus default config agar tidak konflik
RUN rm /etc/nginx/conf.d/default.conf

# Tambahkan config buatan kita
COPY nginx/default.conf /etc/nginx/conf.d/default.conf

# Salin isi folder atgk ke direktori HTML
COPY . /home/satria_khy/Documents/workspace/dev/atgk


# Expose port
EXPOSE 80
