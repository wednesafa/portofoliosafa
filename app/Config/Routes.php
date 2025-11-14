<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
//$routes->get('/', 'Home::index');          
$routes->get('/', 'Portofolio::index');
//$routes->get('portofolio', 'Portofolio::index'); 
$routes->get('education', 'Portofolio::education');
$routes->get('experience', 'Portofolio::experience');
$routes->get('skills', 'Portofolio::skills');
$routes->post('contact/send', 'Portofolio::send');
$routes->get('portofolio', 'Portofolio::portofolio');



