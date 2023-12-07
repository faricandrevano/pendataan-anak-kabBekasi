<!-- Sidebar -->
<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.php">
        <div class="sidebar-brand-icon">
            <img width="35" src="img/sktm.png">
        </div>
        <div class="sidebar-brand-text mx-3">BekasiKab</div>
    </a>

    <!-- Divider -->
    <hr class="sidebar-divider my-0">

    <!-- Nav Item - Dashboard -->
    <li class="nav-item <?php if($page == "dashboard"){ echo "active"; } ?>">
        <a class="nav-link" href="index.php">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>DASHBOARD</span></a>
    </li>

    <!-- Nav Item - Pages Collapse Menu -->
    <li class="nav-item <?php if($menu == "pendaftar-sktm"){ echo "active"; } ?>">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
            aria-expanded="true" aria-controls="collapseTwo">
            <i class="fas fa-fw fa-users"></i>
            <span>PENDATAAN ANAK</span>
        </a>
        <div id="collapseTwo" class="collapse <?php if($menu == "pendataan-anak"){ echo "show"; } ?>" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <a class="collapse-item <?php if($page == "add-pendataan-anak"){ echo "active"; } ?>" href="add_pendataan_anak.php"><i class="fas fa-user-plus"></i>&nbsp; DAFTAR BARU</a>
                <a class="collapse-item <?php if($page == "pendataan-anak"){ echo "active"; } ?>" href="pendataan_anak.php"><i class="fas fa-users"></i>&nbsp; LIST PENDATAAN</a>
            </div>
        </div>
    </li>

    <li class="nav-item <?php if($menu == "pendaftar-wilayah"){ echo "active"; } ?>">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseThree"
            aria-expanded="true" aria-controls="collapseThree">
            <i class="fas fa-fw fa-users"></i>
            <span>DATA WILAYAH</span>
        </a>
        <div id="collapseThree" class="collapse <?php if($menu == "pendataan-wilayah"){ echo "show"; } ?>" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <a class="collapse-item <?php if($page == "add-pendataan-kecamatan"){ echo "active"; } ?>" href="add_kecamatan.php"><i class="fas fa-user-plus"></i>&nbsp; LIST KECAMATAN</a>
                <a class="collapse-item <?php if($page == "add-pendataan-kelurahan"){ echo "active"; } ?>" href="add_kelurahan.php"><i class="fas fa-users"></i>&nbsp; LIST KELURAHAN</a>
            </div>
        </div>
    </li>

    <li class="nav-item <?php if($menu == "pendaftar-sekolah"){ echo "active"; } ?>">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseFive"
            aria-expanded="true" aria-controls="collapseFive">
            <i class="fas fa-fw fa-users"></i>
            <span>DATA SEKOLAH</span>
        </a>
        <div id="collapseFive" class="collapse <?php if($menu == "pendataan-sekolah"){ echo "show"; } ?>" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <a class="collapse-item <?php if($page == "add-pendataan-sekolah"){ echo "active"; } ?>" href="add_sekolah_post.php"><i class="fas fa-plus"></i>&nbsp; DAFTAR SEKOLAH</a>
                <a class="collapse-item <?php if($page == "pendataan-sekolah"){ echo "active"; } ?>" href="add_sekolah.php"><i class="fas fa-school"></i>&nbsp; LIST SEKOLAH</a>
            </div>
        </div>
    </li>
    <li class="nav-item <?php if($menu == "pendaftar-sekolah"){ echo "active"; } ?>">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseFour"
            aria-expanded="true" aria-controls="collapseFour">
            <i class="fas fa-fw fa-users"></i>
            <span>LAPORAN DATA</span>
        </a>
        <div id="collapseFour" class="collapse <?php if($menu == "laporan-anak"){ echo "show"; } ?>" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <a class="collapse-item <?php if($page == "laporan-anak-ts"){ echo "active"; } ?>" href="add_sekolah_post.php"><i class="fas fa-plus"></i>&nbsp; TIDAK SEKOLAH</a>
                <a class="collapse-item <?php if($page == "laporan-anak-s"){ echo "active"; } ?>" href="add_sekolah.php"><i class="fas fa-school"></i>&nbsp; SEKOLAH</a>
            </div>
        </div>
    </li>

    <!-- Nav Item - Utilities Collapse Menu -->
    <li class="nav-item <?php if($menu == "administrator"){ echo "active"; } ?>">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
            aria-expanded="true" aria-controls="collapseUtilities">
            <i class="fas fa-fw fa-user-tie"></i>
            <span>ADMINISTRATOR</span>
        </a>
        <div id="collapseUtilities" class="collapse <?php if($menu == "administrator"){ echo "show"; } ?>" aria-labelledby="headingUtilities"
            data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <a class="collapse-item <?php if($page == "add-admin"){ echo "active"; } ?>" href="add_admin.php"><i class="fas fa-user-plus"></i>&nbsp; TAMBAH BARU</a>
                <a class="collapse-item <?php if($page == "admin"){ echo "active"; } ?>" href="admin.php"><i class="fas fa-user-tie"></i>&nbsp; LIST ADMIN</a>
            </div>
        </div>
    </li>

    

    <li class="nav-item">
        <a class="nav-link" href="logout.php">
            <i class="fas fa-fw fa-sign-out-alt"></i>
            <span>LOG-OUT</span></a>
    </li>

    <hr class="sidebar-divider my-0">

    <br>

    <!-- Sidebar Toggler (Sidebar) -->
    <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
    </div>

</ul>
<!-- End of Sidebar -->