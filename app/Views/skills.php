
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>Skills - Safa Portfolio</title>

  <!-- Favicons -->
  <link href="assets/img/iconsafa.png" rel="icon">
  <link href="assets/img/iconsafa.png" rel="apple-touch-icon">

  <!-- Fonts -->
  <link href="https://fonts.googleapis.com" rel="preconnect">
  <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900&family=Noto+Sans:wght@400;500;600;700;800&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Main CSS File -->
  <link href="assets/css/main.css" rel="stylesheet">
</head>

<body class="index-page">

  <!-- Navbar (pakai versi education.php) -->
  <header id="header" class="header d-flex align-items-center sticky-top">
    <div class="header-container container-fluid container-xl position-relative d-flex align-items-center justify-content-between">

      <a href="<?= base_url('/') ?>" class="logo d-flex align-items-center me-auto me-xl-0">
        <h1 class="sitename">Safa</h1>
      </a>

      <nav id="navmenu" class="navmenu">
        <ul>
          <li><a href="<?= base_url('/') ?>">Home</a></li>
          <li><a href="<?= base_url('education'); ?>">Education</a></li>
          <li><a href="<?= base_url('experience'); ?>">Experience</a></li>
          <li><a href="<?= base_url('skills'); ?>"class="active">Skills</a></li>
        </ul>
        <i class="mobile-nav-toggle d-xl-none bi bi-list"></i>
      </nav>

      <div class="header-social-links">
         <a href="https://linkedin.com/in/safa333" target="_blank" class="linkedin"><i class="bi bi-linkedin"></i></a>
         <a href="https://github.com/wednesafa" target="_blank" class="github"><i class="bi bi-github"></i></a>
      </div>

    </div>
  </header>

  <main class="main">

    <!-- Skills Section (mirip services) -->
    <section id="skills" class="skills section">
      <div class="container" data-aos="fade-up" data-aos-delay="100">

        <div class="section-title text-center mb-5">
          <h2>My Skills</h2>
          <p>Berikut adalah keahlian yang saya miliki beserta levelnya.</p>
        </div>

        <div class="row g-4">
          <?php foreach($skills as $skill): ?>
            <div class="col-md-6 col-lg-4" data-aos="fade-up" data-aos-delay="100">
              <div class="skill-box p-4 border rounded-4 h-100">
                <h3><?= htmlspecialchars($skill['skill_name']) ?></h3>
                <p><?= htmlspecialchars($skill['level']) ?></p>
                <p><?= htmlspecialchars($skill['description']) ?></p>
                <div class="progress mt-2">
                  <div class="progress-bar" role="progressbar" style="width: <?= (int)$skill['level'] ?>%;" aria-valuenow="<?= (int)$skill['level'] ?>" aria-valuemin="0" aria-valuemax="100">
                    <?= (int)$skill['level'] ?>%
                  </div>
                </div>
              </div>
            </div>
          <?php endforeach; ?>
        </div>

      </div>
    </section>

  </main>

  <!-- Footer (pakai versi education.php) -->
  <footer id="footer" class="footer">
    <div class="container">
      <div class="copyright text-center">
        <p>© <span>Copyright</span> <strong class="px-1 sitename">Safa</strong> <span>All Rights Reserved</span></p>
      </div>
      <div class="credits text-center">
        Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
      </div>
    </div>
  </footer>

  <!-- Scroll Top -->
  <a href="#" id="scroll-top" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/waypoints/noframework.waypoints.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/imagesloaded/imagesloaded.pkgd.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>

  <!-- Main JS File -->
  <script src="assets/js/main.js"></script>

</body>
</html>
