<div class="row">
        <div class="col-lg-4">
          <div class="card">
            <div class="card-header">
              <form action="" class="form-signin" method="post"> 
              <h3 class="">DAFTAR AKUN</h3>
                <div class="card-body">
                  <form action="" method="post">
                    <div class="mb-3 mt-3">
                    <table for="" class="form-label">id</table>
                      <input type="number" name="UserID" class="form-control" require autofocus>
                    </div>
                    <div class="mb-3 mt-3">
                      <table for="" class="form-label">Nama</table>
                      <input type="text" name="NamaUser" class="form-control" require autofocus>
                    </div>
                    <div class="mb-3 mt-3">
                      <label for="" class="form-label">Password</label>
                      <input type="password" name="Password" class="form-control" require>
                    </div>
                    <div class="mb-3">
                            <label for="level" class="form-label">Level<span style="color: red;"> *</span></label>
                            <select class="form-control" name="level" id="level">
                                <option value="">Pilih Level</option>
                                <option value="Admin">Admin</option>
                                <option value="Petugas">Petugas</option>
                            </select>
                        </div>
                    
                    <button name="daftar" class="btn btn-primary">Daftar</button>
                      
                    </div> 
                  </form>
                  <?php 
      include '../koneksi/koneksi.php';
        if(isset($_POST['daftar'])){
          $password = md5($_POST['Password']);

          $query=mysqli_query($koneksi,"INSERT INTO user VALUES ('".$_POST['UserID']."','".$_POST['NamaUser']."','".$password."','".$_POST['level']."')");
          if($query){
            echo "<script>alert('Berhasil mendaftar akun')</script>";
            echo "<script>location='location:user.php?p=daftar';</script>";
          }
        }
       ?>
                </div>
            </div>
          </div>
        </div>
      </div>
