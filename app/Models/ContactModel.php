<?php

namespace App\Models;
use CodeIgniter\Model;

class ContactModel extends Model
{
    protected $table = 'contact'; // nama tabel di database kamu
    protected $primaryKey = 'id';
    protected $allowedFields = ['name', 'email', 'subject', 'message', 'date'];
    protected $useTimestamps = false; // bisa true kalau kamu mau pakai created_at & updated_at
}
