<!-- 
  Project       : Aplikasi KARTU PELAJAR V.03
  Description   : CRUD (Create, read, Update, Delete) PHP 5.6, QR Code, MySQLi, Bootstrap & Google Chrome
  Author        : BAMBANG HADI SAPUTRA, ST
  Contact       : Hp/Wa. +62852-5665-1656
  Powered by    : TOMSTONE.ID
-->

<?php
  session_start();
  error_reporting(1);
  include '../assets/config/koneksi.php';
  if(empty($_SESSION))
  {
    header("Location: ../login");
  }
?>
<!DOCTYPE html>
<html> <!-- Bagian halaman HTML yang akan konvert -->
<head>
    <meta charset='UTF-8'>
    <title><?php $i = mysqli_fetch_array(mysqli_query($koneksi, "SELECT * FROM identitas LIMIT 1"));  echo "$i[nama] "; ?></title>
  <link rel="shortcut icon" href="../assets/img/logo/KKP.png ?>">
<style>
img {
    width: 100%;
    height: auto;
}
</style>

</head>

<body onload='window.print()' style="font-family: arial;font-size: 14px;">
        <?php 

                $a=mysqli_fetch_array(mysqli_query($koneksi, "SELECT * FROM identitas 
                    INNER JOIN kelurahan ON identitas.id_kel= kelurahan.id_kel
                    INNER JOIN kabupaten ON identitas.id_kab= kabupaten.id_kab 
                    INNER JOIN kecamatan ON identitas.id_kec= kecamatan.id_kec 
                    INNER JOIN provinsi ON identitas.id_prov= provinsi.id_prov WHERE id = '1'"));
            $id=$_POST['selector'];
            $N = count($id);
            for($i=0; $i < $N; $i++)
            {
                $data=mysqli_query($koneksi, "SELECT * FROM user 
                    INNER JOIN kelurahan ON user.id_kel= kelurahan.id_kel
                    INNER JOIN kabupaten ON user.id_kab= kabupaten.id_kab 
                    INNER JOIN kecamatan ON user.id_kec= kecamatan.id_kec 
                    INNER JOIN provinsi ON user.id_prov= provinsi.id_prov 
                    WHERE id='$id[$i]'");
            while($r=mysqli_fetch_array($data))
            {
                $t = date("d - m - Y", strtotime($r['tgl_lhr']));
                $tgl = date("dmY", strtotime($r['tgl_lhr']));
                $blangko=mysqli_fetch_array(mysqli_query($koneksi, "SELECT * FROM blangko WHERE id = '1'"));
        ?>
                <div style="width: 850px;height: 262px;margin-bottom: -12px;padding:; background-image: url('../assets/img/blangko/<?php echo $blangko["gambar"];?>');">

            <img style="border-radius: 6px;border: 1px solid #222; position: absolute;margin-left: 30px;margin-top: 113px; width: 90px; height: 110px;overflow: hidden;" class="img-responsive img" src="../assets/img/user/<?php echo $r["gambar"];?>">
            
            <img style="position: absolute;margin-left: 40px;margin-top: 14px; width: 70px;" src="../assets/img/logo/<?php echo "$a[gambar] "?>">

            <p style="color: #fff;position: absolute;padding-left: 80px;padding-top: -1px; width:350px; height: 40px;text-transform: uppercase;text-align: center;letter-spacing: 4px;">Kartu Ujian CPNS <br>Kementrian Kelautan<br>dan Perikanan <br></p>

            <p style="letter-spacing: 2px;margin-left: 150px;padding-top: 110px;width: 240px; text-align: left; font-size: 17px"><b></b></p>

            <p style="font-family: arial;font-size: 9px;position: absolute;margin-left: 35px;margin-top: 80px;width: 93px;height:30px;text-align:center;position: center;float: center"><?php
                $tanggal = date ("j");
                $bulan = array(1=>"Januari","Februari","Maret", "April", "Mei", "Juni","Juli","Agustus","September","Oktober", "November","Desember");
                $bulan = $bulan[date("n")];
                $tahun = date("Y");
                $thn = $tahun+3;
            ?></p>
            <!-- <img style="border:2px solid #fff;position: absolute;margin-left: 50px;margin-top: 65px;width: 50px; height: 50px;" src="../assets/img/qrcode/<?php echo $r["qrcode"];?>"> -->
            <table cellspacing="0em" style="margin-top: -10px; padding-left: 130px; position: relative;font-family: arial;font-size: 12px;transition-property: 500px;width: 400px;height: 100px;"> 
            <tr>
                    <td>No Peserta</td>
                    <td>:</td>
                    <td><?php echo "$r[nis]";?></td>
                </tr> 
            
                <tr>
                    <td>NIK</td>
                    <td>:</td>
                    <td><?php echo "$r[hp]";?></td>
                </tr> 
            
            <tr>
                    <td>Nama</td>
                    <td>:</td>
                    <td><?php echo "$r[nama]";?></td>
                </tr> 
                <tr>
                    <td>TTL</td>
                    <td>:</td>
                    <td><?php echo "$r[tmp_lhr]";?>, <?php echo "$t";?></td>
                </tr>
                <tr>
                    <td>Jenis Kelamin</td>
                    <td>:</td>
                    <td><?php echo "$r[jk]";?></td>
                </tr>
                <tr>
                    <td>Kualifikasi Pendidikan</td>
                    <td>:</td>
                    <td><?php echo "$r[email]";?></td>
                </tr>
                <tr>
                    <td>Kota/Kabupaten</td>
                    <td>:</td>
                    <td><?php echo "$r[nama_kabupaten]";?></td>
                </tr>
                <tr>
                    <td>Lokasi Tes</td>
                    <td>:</td>
                    <td><?php echo "$r[nama_kelurahan]";?></td>
                </tr>
                
            </table>
           </div>

</body>
</html>
<?php }}?>