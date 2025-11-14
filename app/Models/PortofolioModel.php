<?php

namespace App\Models;
use CodeIgniter\Model;

class PortofolioModel extends Model
{
    protected $table = 'portofolio'; // nama tabel di database kamu
    protected $primaryKey = 'id';
    protected $allowedFields = ['title', 'filter', 'description', 'photo'];
    protected $useTimestamps = false; // bisa true kalau kamu mau pakai created_at & updated_at
}
