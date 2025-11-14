<?php

namespace App\Models;
use CodeIgniter\Model;

class BiodataModel extends Model
{
    protected $table = 'biodata';
    protected $primaryKey = 'id';
    protected $allowedFields = [
        'full_name',
        'headline',
        'summary',
        'photo',
        'email',
        'phone',
        'location',
        'website',
        'created_at',
        'deskripsi'
    ];
}
