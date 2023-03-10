<?php include "header.php" ?>
<div class="wrapper">
  <!-- Star menu -->
  <?php include "menu.php";?>
  <!-- End menu -->

  <!-- Start content -->
  <div class='content-wrapper'>
    <!-- Content Header (Page header) -->
    <section class='content-header'>
      <h1>
        <?php echo "$i[nama] "; ?>
        <small>Control panel</small>
      </h1>
      <ol class='breadcrumb'>
        <li><a href='home'><i class='fa fa-dashboard'></i> Home</a></li>
        <li class='active'>Tambah Data</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class='content'>
      <div class='row'>
        <div class='col-md-12'>
          <div class='box box-success'>
            <div class='box-header with-border'>
              <h3 class='box-title'><i class='fa fa-edit'></i> FORM TAMBAH DATA</h3>
            </div>
            <form class='form-horizontal' role='form' method=POST action='aksi/user_simpan.php' enctype='multipart/form-data'>
              <div class='box-body'>
                <div class='form-group'>
                  <label class='col-sm-2 control-label'>No Peserta :</label>
                  <div class='col-sm-4'>
                    <input type='text' class='form-control' name='a'  placeholder='Tuliskan No Peserta'>
                  </div>
                  <label class='col-sm-2 control-label'>LEVEL :</label>
                  <div class='col-sm-4'>
                   <select name='b' class='form-control'>
                    <option value='' selected>Pilih level</option>
                    <?php 
                    $tampil = mysqli_query($koneksi, "SELECT * FROM level where id_level='3' ORDER BY id_level ");
                    while($r=mysqli_fetch_array($tampil))
                    {
                      echo "<option value='".$r['id_level']."' selected>".$r['level']."</option>";
                    }
                    ?>
                  </select>
                </div>
              </div>
              <div class='form-group'>
                <label class='col-sm-2 control-label'>Username :</label>
                <div class='col-sm-4'>
                  <input type='text' class='form-control' name='c' placeholder='Tuliskan Username'>
                </div>
                <label class='col-sm-2 control-label'>Password : </label>
                <div class='col-sm-4'>
                  <input type='password' class='form-control' name='password'  placeholder='Tuliskan Password'>
                </div>
              </div>
              <div class='form-group'>
                <label class='col-sm-2 control-label'>Nama :</label>
                <div class='col-sm-4'>
                  <input type='text' class='form-control' name='d' placeholder='Tuliskan Nama Lengkap'>
                </div>
                <label class='col-sm-2 control-label'>JK :</label>
                <div class='col-sm-4'>
                 <select name='e' class='form-control'>
                  <option value='' selected>Pilih Jenis Kelamin</option>
                  <option value='Laki-laki' >Laki-laki</option>
                  <option value='Perempuan' >Perempuan</option>
                </select>
              </div>
            </div>
            <div class='form-group'>
              <label class='col-sm-2 control-label'>Tempat lahir:</label>
              <div class='col-sm-4'>
                <input class='form-control' name='f'  placeholder='Tuliskan Tempat Lahir'>
              </div>
              <label class='col-sm-2 control-label'>Tanggal Lahir : </label>
              <div class='col-sm-4'>
                <input type='date' class='form-control' name='g'  value="<?php echo date('Y-m-d'); ?>">
              </div>
            </div> 
            <div class='form-group'>
              <label class='col-sm-2 control-label'>Alamat :</label>
              <div class='col-sm-4'>
                <textarea class='form-control' name='h'  placeholder='Tuliskan Alamat Rumah'></textarea>
              </div>
              <label class='col-sm-2 control-label'>Provinsi :</label>
              <div class='col-sm-4'>
               <select id="provinsi" name='i' class='form-control'>
                <option value="">Pilih Provinsi</option>
                <?php
                $tampil = mysqli_query($koneksi, "SELECT * FROM provinsi ORDER BY nama_provinsi");
                while($row=mysqli_fetch_array($tampil)) {
                  ?>
                  <option value="<?php echo $row['id_prov']; ?>"><?php echo $row['nama_provinsi']; ?></option>
                  <?php
                }
                ?>
              </select>
            </div>
          </div>
          <div class='form-group'>
            <label class='col-sm-2 control-label'>Kabupaten :</label>
            <div class='col-sm-4'>
             <select id="kabupaten" name='j' class='form-control' >
              <option value='' selected>Pilih Kabupaten</option>
              <?php
              $tampil = mysqli_query($koneksi, "SELECT * FROM kabupaten ORDER BY nama_kabupaten");
              while($row=mysqli_fetch_array($tampil)) {
                ?>
                <option id="kabupaten" class="<?php echo $row['id_prov']; ?>" value="<?php echo $row['id_kab']; ?>"><?php echo $row['nama_kabupaten']; ?></option>
                <?php
              }
              ?>
            </select>
          </div>
          <label class='col-sm-2 control-label'>Kecamatan :</label>
          <div class='col-sm-4'>
           <select id="kecamatan" name='k' class='form-control'>
            <option value='' selected>Pilih Kecamatan</option>
            <?php
            $tampil = mysqli_query($koneksi, "SELECT * FROM kecamatan ORDER BY nama_kecamatan");
            while($row=mysqli_fetch_array($tampil)) {
              ?>
              <option id="kecamatan" class="<?php echo $row['id_kab']; ?>" value="<?php echo $row['id_kec']; ?>"><?php echo $row['nama_kecamatan']; ?></option>
              <?php
            }
            ?>
          </select>
        </div>
      </div>
      <div class='form-group'>
        <label class='col-sm-2 control-label'>Lokasi Tes : </label>
        <div class='col-sm-4'>
          <select id="kelurahan" name='l' class='form-control'>
            <option value='' selected>Pilih Lokasi</option>
            <?php
            $tampil = mysqli_query($koneksi, "SELECT * FROM kelurahan ORDER BY nama_kelurahan");
            while($row=mysqli_fetch_array($tampil)) {
              ?>
              <option id="kelurahan" class="<?php echo $row['id_kec']; ?>" value="<?php echo $row['id_kel']; ?>"><?php echo $row['nama_kelurahan']; ?></option>
              <?php
            }
            ?>
          </select>
        </div>
        <label class='col-sm-2 control-label'>NIK : </label>
        <div class='col-sm-4'>
          <input type='text' class='form-control' name='m' placeholder='Tuliskan Nomor Induk Keluarga'>
        </div>
      </div>
      <div class='form-group'>
        <label class='col-sm-2 control-label'>Kualifikasi Pendidikan  : </label>
        <div class='col-sm-4'>
          <input type='text' class='form-control' name='n' placeholder='Contoh: S-1 Teknik Informatika'>
        </div>
        <label class='col-sm-2 control-label'>Unggah Foto :</label>
        <div class='col-sm-4'>
          <input type='file' class='form-control' name='gambar'>
        </div>
      </div>
      
      
    <div class='box-footer'>
      <label class='col-sm-2 control-label'></label>
      <div class='col-sm-10'>
        <button style='width: 150px;' type="submit" class="btn btn-flat btn-primary"><i class="glyphicon glyphicon-floppy-save"></i> S I M P A N</button>
        <a style='width: 150px;' href="view-data" type="button" class="btn btn-flat btn-danger"><i class="glyphicon glyphicon-floppy-remove"></i> B A T A L</a>
      </div>
    </div>
  </div>
</form>
</div>
</div>
</section>
<!-- /.content -->
</div>
<!-- End content -->
</script>
<?php include "footer.php";?>