
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>Portofolio - Safa </title>
  <meta name="description" content="">
  <meta name="keywords" content="">

  <!-- Favicons -->
  <link href="assets/img/iconsafa.png" rel="icon">
  <link href="assets/img/iconsafa.png" rel="apple-touch-icon">

  <!-- Fonts -->
  <link href="https://fonts.googleapis.com" rel="preconnect">
  <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&family=Noto+Sans:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Questrial:wght@400&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Main CSS File -->
  <link href="assets/css/main.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: EasyFolio
  * Template URL: https://bootstrapmade.com/easyfolio-bootstrap-portfolio-template/
  * Updated: Feb 21 2025 with Bootstrap v5.3.3
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body class="index-page">

  <header id="header" class="header d-flex align-items-center sticky-top">
    <div class="header-container container-fluid container-xl position-relative d-flex align-items-center justify-content-between">

      <a href="<?= base_url('/') ?>" class="logo d-flex align-items-center me-auto me-xl-0">
        <h1 class="sitename">Safa</h1>
      </a>

      <nav id="navmenu" class="navmenu">
        <ul>
          <li><a href="<?= base_url('/') ?>" class="active">Home</a></li>
          <li><a href="<?= base_url('education'); ?>">Education</a></li>
          <li><a href="<?= base_url('experience'); ?>">Experience</a></li>
          <li><a href="<?= base_url('skills'); ?>">Skills</a></li>
          <a href="#portfolio">Portofolio</a>
          <li><a href="#contact">Contact</a></li>
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

    <!-- Hero Section -->
    <section id="hero" class="hero section">

      <div class="container" data-aos="fade-up" data-aos-delay="100">

        <div class="row align-items-center content">
          <div class="col-lg-6" data-aos="fade-up" data-aos-delay="200">
            <h2>Hi, I'm <?= esc($biodata['name']) ?></h2>
            <p class="lead"><?= esc($biodata['summary']) ?></p>
            <div class="cta-buttons" data-aos="fade-up" data-aos-delay="300">
              <a href="#portfolio" class="btn btn-primary">View My Work</a>
              <a href="#contact" class="btn btn-outline">Let's Connect</a>
            </div>
            <div class="hero-stats" data-aos="fade-up" data-aos-delay="400">
              <div class="stat-item">
                <span class="stat-number">5+</span>
                <span class="stat-label">Years Experience</span>
              </div>
              <div class="stat-item">
                <span class="stat-number">100+</span>
                <span class="stat-label">Projects Completed</span>
              </div>
              <div class="stat-item">
                <span class="stat-number">50+</span>
                <span class="stat-label">Happy Clients</span>
              </div>
            </div>
          </div>
          <div class="col-lg-6">
            <div class="hero-image">
              <img src="<?= base_url('assets/img/profile/' . $biodata['photo']) ?>" alt="Portfolio Hero Image" class="img-fluid" data-aos="zoom-out" data-aos-delay="300">
              <div class="shape-1"></div>
              <div class="shape-2"></div>
            </div>
          </div>
        </div>

      </div>

    </section><!-- /Hero Section -->

    <!-- About Section -->
    <section id="about" class="about section light-background">

      <!-- Section Title -->
      <div class="container section-title" data-aos="fade-up">
        <h2>About</h2>
        <div class="title-shape">
          <svg viewBox="0 0 200 20" xmlns="http://www.w3.org/2000/svg">
            <path d="M 0,10 C 40,0 60,20 100,10 C 140,0 160,20 200,10" fill="none" stroke="currentColor" stroke-width="2"></path>
          </svg>
        </div>
      </div><!-- End Section Title -->

      <div class="container" data-aos="fade-up" data-aos-delay="100">

        <div class="row align-items-center">
          <div class="col-lg-6 position-relative" data-aos="fade-right" data-aos-delay="200">
            <div class="about-image">
              <img src="<?= base_url('assets/img/profile/' . $biodata['photo']) ?>" alt="Profile Image" class="img-fluid rounded-4">
            </div>
          </div>

          <div class="col-lg-6" data-aos="fade-left" data-aos-delay="300">
            <div class="about-content">
              <span class="subtitle">About Me</span>

              <h2><?= $biodata['headline'];?></h2>

              <p class="lead mb-4"><?= $biodata['deskripsi'];?></p>

              <div class="personal-info">
                <div class="row g-4">
                  <div class="col-6">
                    <div class="info-item">
                      <span class="label">Name</span>
                      <span class="value"><?= $biodata['full_name'];?></span>
                    </div>
                  </div>

                  <div class="col-6">
                    <div class="info-item">
                      <span class="label">Phone</span>
                      <span class="value"><?= $biodata['phone'];?></span>
                    </div>
                  </div>

                  <div class="col-6">
                    <div class="info-item">
                      <span class="label">Age</span>
                      <span class="value"><?= $biodata['age'];?></span>
                    </div>
                  </div>

                  <div class="col-6">
                    <div class="info-item">
                      <span class="label">Email</span>
                      <span class="value"><?= $biodata['email'];?></span>
                    </div>
                  </div>

                  <div class="col-6">
                    <div class="info-item">
                      <span class="label">Location</span>
                      <span class="value"><?= $biodata['location'];?></span>
                    </div>
                  </div>

                  <div class="col-6">
                    <div class="info-item">
                      <span class="label">website</span>
                      <span class="value"><?= $biodata['website'];?></span>
                    </div>
                  </div>
                </div>
              </div>

              <div class="signature mt-4">
                <div class="signature-image">
                  <img src="assets/img/misc/signature.png" alt="" class="img-fluid">
                </div>
                <div class="signature-info">
                  <h4><?= $biodata['full_name'];?></h4>
                  <p>thank you, nice to see you here</p>
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>

    </section><!-- /About Section -->

    

   

<!-- Portfolio Section -->
<section id="portfolio" class="portfolio section">

  <!-- Section Title -->
  <div class="container section-title" data-aos="fade-up">
    <h2>Portofolio</h2>
    <div class="title-shape">
      <svg viewBox="0 0 200 20" xmlns="http://www.w3.org/2000/svg">
        <path d="M 0,10 C 40,0 60,20 100,10 C 140,0 160,20 200,10"
              fill="none" stroke="currentColor" stroke-width="2"></path>
      </svg>
    </div>
    <p>Berikut adalah beberapa karya yang sudah saya selesaikan.</p>
  </div><!-- End Section Title -->

  <div class="container" data-aos="fade-up" data-aos-delay="100">
    <div class="isotope-layout" data-default-filter="*" data-layout="masonry" data-sort="original-order">

      <!-- FILTER BUTTONS -->
      <div class="portfolio-filters-container" data-aos="fade-up" data-aos-delay="200">
        <ul class="portfolio-filters isotope-filters">
          <li data-filter="*" class="filter-active">All Work</li>
          <li data-filter=".filter-website">Website</li>
          <li data-filter=".filter-mobile">Mobile</li>
          <li data-filter=".filter-uidesign">UI Design</li>
        </ul>
      </div>

      <!-- PORTFOLIO GRID -->
      <div class="row g-4 isotope-container" data-aos="fade-up" data-aos-delay="300">
        <?php 
          // Cek apakah variabel portofolio sudah dikirim dari controller
          if (!isset($portofolio)) {
            echo "<p style='color:red;'>Variabel \$portofolio belum dikirim dari controller</p>";
          } else {
            echo "<p style='color:green;'>Data portofolio sudah diterima (jumlah: " . count($portofolio) . ")</p>";
          }
        ?>

        <?php foreach ($portofolio as $item): ?>
          <?php 
            // mapping nama filter di database ke class CSS filter
            $filterClass = 'filter-' . strtolower(str_replace(' ', '', $item['filter']));
          ?>

          <div class="col-lg-6 col-md-6 portfolio-item isotope-item <?= esc($filterClass) ?>">
            <div class="portfolio-card">
              <div class="portfolio-image">
                <img src="<?= base_url('assets/img/portfolio/' . $item['photo']) ?>" 
                     class="img-fluid" 
                     alt="<?= esc($item['title']) ?>" 
                     loading="lazy">
                <div class="portfolio-overlay">
                  <div class="portfolio-actions">
                    <a href="<?= base_url('assets/img/portfolio/' . $item['photo']) ?>" 
                       class="glightbox preview-link" 
                       data-gallery="portfolio-gallery-<?= esc($item['filter']) ?>">
                       <i class="bi bi-eye"></i>
                    </a>
                  </div>
                </div>
              </div>

              <div class="portfolio-content">
                <span class="category"><?= esc($item['filter']) ?></span>
                <h3><?= esc($item['title']) ?></h3>
                <p><?= esc($item['description']) ?></p>
              </div>
            </div>
          </div>
        <?php endforeach; ?>
      </div><!-- End Portfolio Container -->

    </div>
  </div>
</section><!-- /Portfolio Section -->


    
    <!-- Contact Section -->
    <section id="contact" class="contact section light-background">

      <div class="container" data-aos="fade-up" data-aos-delay="100">

        <div class="row g-5">
          <div class="col-lg-6">
            <div class="content" data-aos="fade-up" data-aos-delay="200">
              <div class="section-category mb-3">Contact</div>
              <h2 class="display-5 mb-4"><?= $biodata['full_name'];?></h2>
              <p class="lead mb-4">hallo! if you have any question feel free to contact me!</p>

              <div class="contact-info mt-5">
                <div class="info-item d-flex mb-3">
                  <i class="bi bi-envelope-at me-3"></i>
                  <span><?= $biodata['email'];?></span>
                </div>

                <div class="info-item d-flex mb-3">
                  <i class="bi bi-telephone me-3"></i>
                  <span><?= $biodata['phone'];?></span>
                </div>

                <div class="info-item d-flex mb-4">
                  <i class="bi bi-geo-alt me-3"></i>
                  <span><?= $biodata['location'];?></span>
                </div>


              </div>
            </div>
          </div>

          <div class="col-lg-6">
  <div class="contact-form card" data-aos="fade-up" data-aos-delay="300">
    <div class="card-body p-4 p-lg-5">

      <!-- ALERT FLASHDATA -->
      <?php if (session()->getFlashdata('success')): ?>
        <div class="alert alert-success alert-dismissible fade show text-center mb-4" role="alert" style="animation: fadeInDown 0.6s;">
          <?= esc(session()->getFlashdata('success')) ?>
          <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
      <?php elseif (session()->getFlashdata('error')): ?>
        <div class="alert alert-danger alert-dismissible fade show text-center mb-4" role="alert" style="animation: fadeInDown 0.6s;">
          <?= esc(session()->getFlashdata('error')) ?>
          <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
      <?php endif; ?>

      <!-- FORM KONTAK -->
      <form action="<?= base_url('contact/send') ?>" method="post">
  <div class="row gy-4">

    <div class="col-12">
      <input type="text" name="name" class="form-control" placeholder="Your Name" required>
    </div>

    <div class="col-12">
      <input type="email" class="form-control" name="email" placeholder="Your Email" required>
    </div>

    <div class="col-12">
      <input type="text" class="form-control" name="subject" placeholder="Subject" required>
    </div>

    <div class="col-12">
      <textarea class="form-control" name="message" rows="6" placeholder="Message" required></textarea>
    </div>

    <div class="col-12 text-center">
      <button type="submit" class="btn btn-submit w-100">Submit Message</button>
    </div>

  </div>
</form>

        </div>
      </form>

    </div>
  </div>
</div>

        </div>
      </div>
    </section><!-- /Contact Section -->
  </main>


  <footer id="footer" class="footer">

    <div class="container">
      <div class="copyright text-center ">
        <p>© <span>Copyright</span> <strong class="px-1 sitename">Safa</strong> <span>All Rights Reserved</span></p>
      </div>
      <div class="credits">
        <!-- All the links in the footer should remain intact. -->
        <!-- You can delete the links only if you've purchased the pro version. -->
        <!-- Licensing information: https://bootstrapmade.com/license/ -->
        <!-- Purchase the pro version with working PHP/AJAX contact form: [buy-url] -->
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