#!/bin/bash

# Lokasi file sumber dan tujuan
SOURCE_FILE="/etc/trojanbw/.trojanbw.db"
TEMP_SORTED="/etc/trojanbw/.trojanbwz.db"
FINAL_FILE="/etc/trojanbw/.trojanbw.db"

# Cek apakah file sumber ada
if [ ! -f "$SOURCE_FILE" ]; then
    mkdir -p /etc/trojanbw/.trojanbw.db
    #echo "File sumber $SOURCE_FILE tidak ditemukan!"
    exit 1
fi

# Urutkan berdasarkan tanggal (YYYY/MM/DD) dan waktu (HH:MM:SS) secara menurun
# Menggunakan sort dengan format lebih presisi: YYYY/MM/DD HH:MM:SS
sort -t' ' -k2,2r -k3,3r -k4,4r "$SOURCE_FILE" > "$TEMP_SORTED"

# Timpa file asli dengan file yang sudah diurutkan
cp "$TEMP_SORTED" "$FINAL_FILE"

#echo "File telah diurutkan dan disalin ke $FINAL_FILE"
clear
# Lokasi file sumber dan tujuan
SOURCE_FILE1="/etc/vmessbw/.vmessbw.db"
TEMP_SORTED1="/etc/vmessbw/.vmessbwz.db"
FINAL_FILE1="/etc/vmessbw/.vmessbw.db"

# Cek apakah file sumber ada
if [ ! -f "$SOURCE_FILE1" ]; then
    mkdir -p /etc/vmessbw/.vmessbw.db
    #echo "File sumber $SOURCE_FILE1 tidak ditemukan!"
    exit 1
fi

# Urutkan berdasarkan tanggal (YYYY/MM/DD) dan waktu (HH:MM:SS) secara menurun
# Menggunakan sort dengan format lebih presisi: YYYY/MM/DD HH:MM:SS
sort -t' ' -k2,2r -k3,3r -k4,4r "$SOURCE_FILE1" > "$TEMP_SORTED1"

# Timpa file asli dengan file yang sudah diurutkan
cp "$TEMP_SORTED1" "$FINAL_FILE1"

#echo "File telah diurutkan dan disalin ke $FINAL_FILE1"
clear
# Lokasi file sumber dan tujuan
SOURCE_FILE2="/etc/vlessbw/.vlessbw.db"
TEMP_SORTED2="/etc/vlessbw/.vlessbwz.db"
FINAL_FILE2="/etc/vlessbw/.vlessbw.db"

# Cek apakah file sumber ada
if [ ! -f "$SOURCE_FILE2" ]; then
    mkdir -p /etc/vlessbw/.vlessbw.db
    #echo "File sumber $SOURCE_FILE2 tidak ditemukan!"
    exit 1
fi

# Urutkan berdasarkan tanggal (YYYY/MM/DD) dan waktu (HH:MM:SS) secara menurun
# Menggunakan sort dengan format lebih presisi: YYYY/MM/DD HH:MM:SS
sort -t' ' -k2,2r -k3,3r -k4,4r "$SOURCE_FILE2" > "$TEMP_SORTED2"

# Timpa file asli dengan file yang sudah diurutkan
cp "$TEMP_SORTED2" "$FINAL_FILE2"

#echo "File telah diurutkan dan disalin ke $FINAL_FILE2"
clear
# Lokasi file sumber dan tujuan
SOURCE_FILE3="/etc/sshbw/.sshbw.db"
TEMP_SORTED3="/etc/sshbw/.sshbwz.db"
FINAL_FILE3="/etc/sshbw/.sshbw.db"

# Cek apakah file sumber ada
if [ ! -f "$SOURCE_FILE3" ]; then
    mkdir -p /etc/sshbw/.sshbw.db
    #echo "File sumber $SOURCE_FILE3 tidak ditemukan!"
    exit 1
fi

# Urutkan berdasarkan tanggal (YYYY/MM/DD) dan waktu (HH:MM:SS) secara menurun
# Menggunakan sort dengan format lebih presisi: YYYY/MM/DD HH:MM:SS
sort -t' ' -k2,2r -k3,3r -k4,4r "$SOURCE_FILE3" > "$TEMP_SORTED3"

# Timpa file asli dengan file yang sudah diurutkan
cp "$TEMP_SORTED3" "$FINAL_FILE3"

#echo "File telah diurutkan dan disalin ke $FINAL_FILE3"
clear
