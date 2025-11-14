<?php

namespace App\Models;

use CodeIgniter\Model;

class EducationModel extends Model
{
    protected $table = 'education';
    protected $primaryKey = 'id';
    protected $allowedFields = [
        'biodata_id', 'degree', 'institution', 'year_start', 'year_end', 'description'
    ];
}
