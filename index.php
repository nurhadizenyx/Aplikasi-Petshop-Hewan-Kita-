
<?php
	include'db.php';
    $kontak = mysqli_query($conn, "SELECT admin_telp, admin_email, admin_address FROM tb_admin WHERE admin_id = 1");
    $a = mysqli_fetch_object($kontak)
?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Hewan Kita </title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@500&display=swap" rel="stylesheet">
</head>
<body>
	<!-- header--->
	<header>
		<div class="container">
			<h1><a href="index.php">Hewan Kita</a></h1>
			<ul>
				<li><a href="produk.php">Produk</a></li>
			</ul>
		</div>
	</header>

    <!--- serch-->
    <div class="search">
        <div class="container">
            <form action="produk.php">
                <input type="text" name="search" placeholder="Cari Produk">
                <input type="submit" name="cari" value="Cari Produk">
            </form>
        </div>

    </div>

    <!--kategori-->
    <div class="section">
        <div class="container">
            <h3>Kategori</h3>
            <div class="box">
                <?php
                    $kategori = mysqli_query($conn, "SELECT * FROM tb_kategori ORDER BY kategori_id DESC");
                    if(mysqli_num_rows($kategori)> 0){
                        while ($k = mysqli_fetch_array($kategori)){
                ?>
                <a href="produk.php?kat=<?php echo $k['kategori_id'] ?>">
                <div class="col-5">
                    <img src="img/grid.png" width="50px" style="margin-bottom:5px;">
                    <p><?php echo $k['kategori_name'] ?></p>
                </div>
                </a>
                <?php }}else{?>
                    <p>Kategori tidak ada </p>
                <?php }?>
                </div>
            </div>
        </div>
    </div>

    <!--produk-->
    <div class="section">
        <div class="container">
            <h3>Produk Terbaru</h3>
            <div class="box">
            <?php
                    $produk = mysqli_query($conn, "SELECT * FROM tb_produk WHERE produk_status = 1 ORDER BY produk_id DESC LIMIT 8");
                    if(mysqli_num_rows($produk)> 0){
                        while ($p = mysqli_fetch_array($produk)){
                ?>
                <a href="detail-produk.php?id=<?php echo $p['produk_id'] ?>">
                <div class="col-4">
                    <img src="produk/<?php echo $p['produk_image'] ?>">
                    <p class="nama"><?php echo $p['produk_name'] ?></p>
                    <p class="harga"><?php echo $p['produk_price'] ?></p>
                </div>
                </a>
                <?php }}else{?>
                    <p>Kategori tidak ada </p>
                <?php }?>
            </div>
        </div>
    </div>

    <!---footer--->
    <div class="footer">
        <div class="container">
            <h4>Alamat</h4>
            <p><?php echo $a->admin_address ?></p>

            <h4>Email</h4>
            <p><?php echo $a->admin_email ?></p>

            <h4>No HP</h4>
            <p><?php echo $a->admin_telp ?></p>
 
            <small>Copyright &copy;2023 - Hewan kita</small>
        </div>
    </div>
</body>
</html>