# Praktikum WAD

Selamat mengerjakan!

## Pengingat
1. Segala perubahan di codespaces akan otomatis tersimpan (tidak perlu save atau CTRL+S). Namun saat praktikum berakhir, praktikan wajib melakukan commit agar perubahan code dapat masuk ke repo dan dilihat oleh asisten praktikum.
2. Segala perubahan code dilakukan di codespaces lalu commit, jangan diubah di repo github-nya langsung agar tidak terjadi error/conflict.
3. Jika ada error pada codespace, database, atau DBeaver, bisa cek pada FAQ di bawah atau tanyakan ke asisten praktikum yang bertugas.

## Cara Penggunaan Codespaces

### Memasuki codespace untuk memulai coding (lewati jika sudah masuk codespace)
1. Buka repo github praktikum masing-masing
2. Tekan tombol Code di atas kanan, buka tab Codespaces, dan tekan nama codespace yang dibuat sebelumnya (yang namanya acak). Jika belum ada, bisa buat codespace pada repo tersebut terlebih dahulu (building awal dapat memakan waktu 2-5 menit)
3. Tunggu booting codespaces hingga selesai
4. Jika sudah selesai, tutup tab codespaces, masuk ke repo github praktikum masing-masing, tekan tombol Code > tekan menu titik tiga di sebelah kanan nama codespace > tekan Stop Codespace (Jangan melakukan delete codespace kecuali ada instruksi dari asisten praktikum)

### Membuka terminal jika terminal tertutup
1. Di tab kiri, tekan menu ikon tiga garis horizontal (pojok kiri atas)
2. Buka menu View dan tekan pilihan Terminal

### Melihat pekerjaan di web browser
1. Pada terminal di bawah, copy dan paste command `bash server-start.sh` dan tekan enter
2. Buka tab Ports sebelah kanan tab Terminal, lalu letakkan mouse di atas port 80, tekan tombol ikon globe/browser pada port 80 tersebut, dan halaman baru akan terbuka
3. Tunggu hingga loading selesai (sampai keluar halaman atau keluar error)
4. Jika tidak ada error terjadi, maka akan disuguhi halaman pemilihan modul, pilih modul yang ingin dilihat pekerjaannya
5. Jika ada perubahan code, tinggal refresh saja halaman baru tadi
6. Jika halaman baru tertutup, tinggal buka tab Ports lagi dan tekan tombol globe/browser di port 80 lagi tanpa perlu mengulang membuka terminal

### Mengupload file dan folder ke codespaces
1. Download file archive modul ke device kalian
2. Extract ke tempat yang diinginkan di device kalian
3. Buka folder yang diekstrak, pilih semua file dan folder (bisa pakai CTRL + A), lalu drag and drop dari file manager ke folder modul di codespaces
4. Jika drag and drop tidak memungkinkan, klik kanan folder modul di codespaces, lalu tekan upload, pilih semua file (folder tidak bisa di-upload langsung dengan menu upload), dan tekan Open. Selanjutnya buat folder baru di dalam folder modul di codespace, sesuaikan namanya, lalu lakukan upload kembali untuk isi folder tersebut.

### Melakukan commit dari codespaces ke repo github
1. Pada tab kiri, tekan tombol menu Source Control
2. Isi message dengan keterangan apa saja perubahan code yang dilakukan (contoh nama: penyelesaian modul 1, bisa disesuaikan kembali)
3. Lalu tekan tombol dropbown/panah bawah sebelah kanan tombol Commit
4. Tekan tombol Commit and Push
5. Lalu muncul pesan konfirmasi, tekan Yes
6. Jika tidak terjadi error, commit telah berhasil dilakukan

### Menyambungkan database dengan source code modul
1. Masukkan kredensial database Aiven ke file .env/config.php/connect.php/ file terkait, database name sesuaikan dengan modul

### Meng-import file SQL ke database Aiven
1. Buka DBeaver, masuk ke database Aiven, klik kanan database modul yang terkait, buka tools, tekan execute script, pilih file SQL yang diberikan, dan tekan start
2. Jika sudah finish, tutup window import script
3. Lakukan refresh dengan menekan F5 atau ribbon File > Refresh

### Menyiapkan aplikasi Laravel
1. Upload semua file dan folder proyek Laravel ke folder modul 5
2. Di terminal, masuk ke folder modul 5 dengan command `cd modul5`
3. Ketik command `composer install` untuk meng-install dependencies proyek Laravel tersebut
4. Ketik command `cp .env.example .env` dan file .env akan terbuat, edit file tersebut dan masukkan kredensial database Aiven kalian (jangan lupa `DB_CONNECTION` diganti value-nya menjadi mysql)
5. Ketik command `php artisan key:generate` untuk generate key
6. Ketik command `php artisan migrate` untuk memasukkan data dari proyek ke database Aiven
7. Untuk melihat hasil pengerjaan, buka webpage pengerjaan dan tekan pilihan modul 5
8. Jika terminal diperlukan untuk kembali ke folder utama, ketik command `cd ..`

## FAQ Troubleshooting (lihat sebelum tanya ke asisten praktikum)

**Q: Kenapa building container memakan waktu yang lama?**  
**A:** Proses building memang lama, ditunggu sekitar 2-5 menit. Jika masih error, ada kemungkinan internet yang digunakan lambat. Pindah ke internet yang lain (bisa hotspot)

---

**Q: Codespace tulisannya "stopping container" saja saat dijalankan**  
**A:** Tunggu sampai keluar tombol "restart codespace" dan tekan tombol tersebut

---

**Q: Webpage untuk modul tertentu error**  
**A:** Kemungkinan masalahnya adalah:
1. Pastikan bukan error dari code yang dibuat
2. Tidak adanya `index.html` atau `index.php`
3. Error pada database bisa dilihat pada pertanyaan FAQ selanjutnya

---

**Q: Database tidak bisa connect di code**  
**A:** Kemungkinan masalahnya adalah:
1. Cek di website Aiven apakah instance MySQL masih running atau tidak. Jika mati, silahkan turn on instance tersebut. Database free tier di Aiven kadang dimatikan secara otomatis ketika tidak digunakan dalam waktu yang lama (kurang lebih 2 minggu)
2. Cek kredensial koneksi (host, user, pass, port, dbname)
3. Tidak ada database yang terkoneksi di code, cek file .env/config.php/connect.php/file terkait
4. Jika database benar, cek apakah ada SQL file yang perlu di-import lewat DBeaver yang belum dilakukan

---

**Q: Database tidak bisa connect di DBeaver**  
**A:** Kemungkinan masalahnya adalah:
1. Cek pertanyaan FAQ sebelumnya dan pastikan semuanya benar
2. Jika database benar, kemungkinan besar database Aiven terblokir di jaringan Telkom University, gunakan hotspot pribadi

---

**Q: Import SQL file ke Aiven gagal (primary key error)**  
**A:** Step modul 0 terlewati, Masuk ke web dashboard Aiven > pilih database MySQL yang dibuat > service setting > scroll ke bawah > Advanced > tombol Configure > disable `mysql.sql_require_primary_key`
