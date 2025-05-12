#!/bin/bash

clear

# Nama file konfigurasi yang menyimpan password
CONFIG_FILE="/etc/trojan/.env"
rm -rf "$CONFIG_FILE"

# Meminta user memasukkan user dan password baru
read -p "Masukkan user baru    : " USER_BARU
read -sp "Masukkan password baru: " PASSWORD_BARU
echo
read -sp "Konfirmasi password   : " PASSWORD_KONFIRMASI
echo

# Cek apakah password cocok
if [ "$PASSWORD_BARU" != "$PASSWORD_KONFIRMASI" ]; then
    echo "Password tidak cocok, coba lagi."
    exit 1
fi

# Simpan user dan password ke file .env
#echo "Menyimpan password ke file $CONFIG_FILE..."
echo "USERNAME=$USER_BARU" > "$CONFIG_FILE"
echo "PASSWORD=$PASSWORD_BARU" >> "$CONFIG_FILE"

# Tampilkan output sesuai permintaan
echo "USERNAME=$USER_BARU"
echo "PASSWORD=$PASSWORD_BARU"

# Restart service
systemctl stop adminwebres
systemctl daemon-reload
systemctl enable adminwebres
systemctl restart adminwebres

echo "User dan password berhasil diubah dan disimpan."
#echo "Password berhasil diubah dan disimpan ke $CONFIG_FILE."
