<?php

namespace App\Models;

use CodeIgniter\Model;

class ExperienceModel extends Model
{
    protected $table = 'experience';
    protected $primaryKey = 'id';
    protected $allowedFields = [
        'biodata_id', 'title', 'place', 'year_start', 'year_end', 'description'
    ];
}
