<?php
// panggil fungsi validasi xss dan injection
require_once('fungsi_validasi.php');

$db['host'] = "localhost"; //host
$db['user'] = "penerima1_gumilang"; //username database
$db['pass'] = "Aragumi02*"; //password database
$db['name'] = "penerima1_karpel"; //nama database

$koneksi = mysqli_connect($db['host'], $db['user'], $db['pass'], $db['name']);
// buat variabel untuk validasi dari file fungsi_validasi.php
$val = new masbambang;

function anti_injection($data){
  global $koneksi;
  $filter = mysqli_real_escape_string($koneksi, stripslashes(strip_tags(htmlspecialchars($data,ENT_QUOTES))));
  return $filter;
}

?>