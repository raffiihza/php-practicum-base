<?php
    $nama = "Raffi Ihza Zuhairnawan"; // Ganti dengan variabel nama Anda
    $kelas = "SI-45-08"; // Ganti dengan variabel kelas Anda
    $nim = "1202210316"; // Ganti dengan variabel NIM Anda
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Praktikum WAD</title>
    <!-- Bootstrap CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container d-flex flex-column align-items-center justify-content-center" style="height: 100vh;">
        <h1 class="mb-5">Praktikum WAD</h1>
        
        <p>Nama: <?php echo $nama; ?></p>
        <p>Kelas: <?php echo $kelas; ?></p>
        <p>NIM: <?php echo $nim; ?></p>
        
        <div class="d-grid gap-3 col-6 mx-auto mt-5">
            <a href="phpmyadmin/" class="btn btn-primary btn-lg">PHPMyAdmin</a>
            <a href="modul1/" class="btn btn-primary btn-lg">Modul 1</a>
            <a href="modul2/" class="btn btn-primary btn-lg">Modul 2</a>
            <a href="modul3/" class="btn btn-primary btn-lg">Modul 3</a>
            <a href="modul4/" class="btn btn-primary btn-lg">Modul 4</a>
            <a href="modul5/public/" class="btn btn-primary btn-lg">Modul 5</a>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>