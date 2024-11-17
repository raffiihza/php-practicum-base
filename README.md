# Praktikum WAD

Selamat mengerjakan!

## Pengingat
1. Segala perubahan di codespaces akan otomatis tersimpan (tidak perlu save atau CTRL+S). Namun saat praktikum berakhir, praktikan wajib melakukan commit agar perubahan code dapat masuk ke repo dan dilihat oleh asisten praktikum.
2. Segala perubahan code dilakukan di codespaces lalu commit, jangan diubah di repo github-nya langsung agar tidak terjadi error/conflict.
3. Jika ada error pada codespace dan FAQ, bisa cek pada FAQ di bawah atau tanyakan ke asisten praktikum yang bertugas.
4. Jangan melakukan pekerjaan lain ataupun merubah file konfigurasi di repo github ini dan codespaces di luar praktikum dan/atau di luar intruksi asisten praktikum.
5. Jika ingin menggunakan database MySQL lokal codespace, gunakan server host `db`, username `root`, dan password `root`

## Cara Penggunaan Codespaces

### Memasuki codespace untuk memulai coding (lewati jika sudah masuk codespace)
1. Pastikan sudah melakukan cloning repo github template
2. Buka repo github praktikum masing-masing
3. Tekan tombol Code di atas kanan, buka tab Codespaces, dan tekan nama codespace yang dibuat sebelumnya (yang namanya acak). Jika belum ada, bisa buat codespace pada repo tersebut terlebih dahulu (building awal dapat memakan waktu 2-5 menit)
4. Tunggu booting codespaces hingga selesai
5. Jika sudah selesai melakukan praktikum, tutup tab codespaces, masuk ke repo github praktikum masing-masing, tekan tombol Code > tekan menu titik tiga di sebelah kanan nama codespace > tekan Stop Codespace (Jangan melakukan delete codespace kecuali ada instruksi dari asisten praktikum). Pastikan auto-delete codespace dimatikan juga agar codespace tidak terhapus otomatis ketika jarang dipakai.

### Membuka terminal jika terminal tertutup
1. Di tab kiri, tekan menu ikon tiga garis horizontal (pojok kiri atas)
2. Buka menu View dan tekan pilihan Terminal

### Melihat hasil pekerjaan di web browser (dengan menjalankan Apache web server)
1. Pada terminal di bawah, ketik command `bash server-start.sh` dan tekan enter untuk menjalankan web server Apache
2. Buka tab Ports sebelah kanan tab Terminal, lalu letakkan mouse di atas port `80`, tekan tombol ikon globe/browser pada port `80` tersebut, dan halaman baru akan terbuka
3. Tunggu hingga loading selesai (sampai keluar halaman atau keluar error)
4. Jika tidak ada error terjadi, maka akan disuguhi halaman pemilihan modul, pilih modul yang ingin dilihat pekerjaannya
5. Jika ada perubahan code, tinggal refresh saja halaman baru tadi
6. Jika halaman baru tertutup, tinggal buka tab Ports lagi dan tekan tombol globe/browser di port `80` lagi tanpa perlu mengulang membuka terminal

### Mengelola database menggunakan PHPMyAdmin
1. Pastikan web server Apache pada langkah sebelumnya telah dilaksanakan dan membuka webpage dari port `80`
2. Tekan tombol PHPMyAdmin pada dashboard index
3. Tunggu hingga loading selesai (sampai keluar halaman atau keluar error)
4. Jika tidak ada error terjadi, maka akan disuguhi halaman login PHPMyAdmin jika masih pertama kali membukanya setelah building codespace
5. `Lewati step ini jika ingin menggunakan database MySQL lokal codespace.` Jika ingin menggunakan database eksternal seperti Aiven atau layanan lainnya, isikan server host, username, dan password dari yang tertera pada website dashboard Aiven
6. Jika ingin menggunakan database MySQL lokal codespace, isikan server host dengan `db`, username `root`, dan password `root`
7. Jika login berhasil, maka dashboard PHPMyAdmin akan keluar

### Mengupload file dan folder ke codespaces
1. Download file archive modul ke device kalian
2. Extract ke tempat yang diinginkan di device kalian
3. Buka folder yang diekstrak, pilih semua file dan folder (bisa pakai CTRL + A), lalu drag and drop dari file manager ke folder modul di codespaces
4. Jika drag and drop tidak memungkinkan, klik kanan folder modul di codespaces, lalu tekan upload, pilih semua file (folder tidak bisa di-upload langsung dengan menu upload), dan tekan Open. Selanjutnya buat folder baru di dalam folder modul di codespace, sesuaikan namanya, lalu lakukan upload kembali untuk isi folder tersebut.

### Melakukan commit dari codespaces ke repo GitHub
1. Pada tab kiri, tekan tombol menu Source Control
2. Isi message dengan keterangan apa saja perubahan code yang dilakukan (contoh nama: penyelesaian modul 1, bisa disesuaikan kembali)
3. Lalu tekan tombol dropbown/panah bawah sebelah kanan tombol Commit
4. Tekan tombol Commit & Push
5. Lalu muncul pesan konfirmasi, tekan Yes
6. Jika tidak terjadi error, commit telah berhasil dilakukan

### Menyambungkan database dengan source code modul
1. Masukkan kredensial database MySQL (baik dari eksternal atau dari dalam codespace) ke file `.env` / `config.php` / `connect.php` / file terkait, database name sesuaikan dengan modul

### Meng-import file SQL ke database
1. Buka PHPMyAdmin, klik database modul yang terkait di bar bagian kiri (jika belum ada, buat dulu), buka tab Import, pilih file SQL yang diberikan, scroll ke bawah, dan tekan tombol Import

### Menyiapkan aplikasi Laravel
1. Upload semua file dan folder proyek Laravel ke folder modul 5 (atau sesuaikan kembali jika berbeda folder modul)
2. Di terminal, masuk ke folder modul 5 dengan command `cd modul5`
3. Ketik command `composer install` untuk meng-install dependencies proyek Laravel tersebut
4. Ketik command `cp .env.example .env` dan file .env akan terbuat, edit file tersebut dan masukkan kredensial database kalian (jangan lupa `DB_CONNECTION` diganti value-nya menjadi mysql)
5. Ketik command `php artisan key:generate` untuk generate key
6. Ketik command `php artisan migrate` untuk memasukkan data dari proyek ke database Aiven
7. Untuk melihat hasil pengerjaan, buka webpage hasil pengerjaan pada port `80` dan tekan pilihan modul 5
8. Jika terminal diperlukan untuk kembali ke folder utama, ketik command `cd ..`

## FAQ Troubleshooting (lihat sebelum tanya ke asisten praktikum)

**Q: Kenapa building container memakan waktu yang lama?**  
**A:** Proses building memang lama, ditunggu sekitar 1-5 menit. Jika masih error, ada kemungkinan internet yang digunakan lambat. Bisa pindah ke internet yang lain (bisa hotspot)

---

**Q: Codespace tulisannya "stopping container" saja saat dijalankan**  
**A:** Tunggu sampai keluar tombol "restart codespace" dan tekan tombol tersebut

---

**Q: Tidak bisa melihat webpage hasil pengerjaan di web browser, error 401 atau 502**  
**A:** Jalankan kembali command `bash server-start.sh` lalu tunggu beberapa saat dan buka kembali webpage hasil pengerjaan dengan menekan tombol ikon globe pada port `80`

---

**Q: Webpage untuk modul tertentu error**  
**A:** Kemungkinan masalahnya adalah:
1. Pastikan bukan error dari code yang dibuat
2. Tidak adanya `index.html` atau `index.php`
3. Error pada database bisa dilihat pada pertanyaan FAQ selanjutnya

---

**Q: Database tidak bisa connect di code**  
**A:** Kemungkinan masalahnya adalah:
1. Cek kredensial koneksi (host, user, pass, port, dbname) pada file `.env` / `config.php` / `connect.php` / file terkait. Jika menggunakan database eksternal seperti Aiven, pastikan instance database-nya dalam keadaan hidup
2. Jika database benar, cek apakah ada SQL file yang perlu di-import lewat PHPMyAdmin yang belum dilakukan

---

**Q: Database tidak bisa connect di PHPMyAdmin**  
**A:** Kemungkinan masalahnya adalah:
1. Cek pertanyaan FAQ sebelumnya dan pastikan semuanya telah benar
2. Jika database benar, kemungkinan ada masalah teknis yang terjadi. Silahkan tanya ke asisten praktikum yang bertugas

---

**Q: Webpage bagian modul 5 Laravel error**  
**A:** Kemungkinan masalahnya adalah:
1. Cek FAQ bagian database dan pastikan tidak ada error terlebih dahulu
2. Jika dependencies Laravel belum ter-install, ketik command `composer install` di direktori modul 5
3. Jika error terkait key, generate key dengan command `php artisan key:generate` di direktori modul 5
4. Jika error terkait database yang belum ter-import, ketik command `php artisan migrate` di direktori modul 5
5. Jika error terkait link redirection ataupun route, gunakan path relatif untuk menghindari URL route yang tidak sesuai dengan web server dan pastikan trust proxies dibuka untuk semua proxy (untuk caranya tergantung pada versi Laravel yang digunakan, silahkan tanya asisten praktikum untuk memastikan)
6. Untuk error lainnya, bisa ditanyakan ke asisten praktikum

---

**Q: Import SQL file ke Aiven gagal (primary key error)**  
**A:** `Step ini hanya dilakukan jika menggunakan database eksternal Aiven.` Masuk ke web dashboard Aiven > pilih database MySQL yang dibuat > service setting > scroll ke bawah > Advanced > tombol Configure > disable `mysql.sql_require_primary_key`
