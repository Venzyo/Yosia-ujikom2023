<?php 
	session_start();
	error_reporting(0);
	include '../conn/koneksi.php';
// 	print_r($_SESSION);
	if(!isset($_SESSION['username']) && !isset($_SESSION['level']) == 'masyarakat'){
		header('location: ../index.php');
	}
 ?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Layanan Pengaduan Masyarakat</title>
        <link rel="stylesheet" href="../css/container.css">
        <link rel="shortcut icon" href="../img/short.jpg">
    </head>
    <body>
        <div class="fConteiner">
            <nav class="wrapper">
                <div class="brand">
                    <div class="fristname">Layanan</div>
                    <div class="lastname">Pengaduan Masyarakat</div>
                </div>
                <ul class="navigation">
                    <li><a href="../index.php?p=logout" >Log out</a></li>
                </ul>
            </nav>
        </div>
        <div >
            <main>
            <div class="slide">
                <div class="kanan">
                    <span id="slide-1"></span>
                    <span id="slide-2"></span>
                    <span id="slide-3"></span>
                    <div class="image">
                    <img src="https://kelurahan-manisrejo.madiunkota.go.id/wp-content/uploads/2023/01/LOGO-PENGADUAN-MASYARAKAT.jpg">
                    <img src="https://www.undp.org/sites/g/files/zskgke326/files/styles/banner_image_desktop/public/migration/ba/GoGreen_twitter.jpg?h=d28b8abe&itok=VG-pHl3v">
                    <img src="https://1.bp.blogspot.com/-QEb_FzAox4o/XTLbzcL7RhI/AAAAAAAAcfw/XWebDMFf4WgvAdolW8sNYwp0dxpbpXPVQCK4BGAYYCw/s1600/iklan%2Bhemat%2Blistrik.png">
                </div>
            </div>
                <!-- navigasi -->
                <div class="geser">
                    <a href="#slide-1">1</a>
                    <a href="#slide-2">2</a>
                    <a href="#slide-3">3</a>

                </div>
            </div>
             </main>
             <aside>
             <div><h1>Layanan Pengaduan Masyarakat Online</h1><br></div>
             <h3>Sampaikan Laporan Anda Kepada Kami <br>Secara Online</h3>
             <a href="#name"><span class="white-text name"><?php echo ucwords($_SESSION['data']['nama']); ?></span></a>
             <br>
             <br>
            <a href="pengaduan.php" class="fcc-btn">Buat Pengaduan</a>
            <a href="in.php" class="fcc-btn">Data Pengaduan</a>
            </aside>
        </div>
        <!-- <footer>
            
        </footer> -->
        </div>
    </body>
</html>
