<?php

namespace App\Controllers;

use CodeIgniter\Database\Database;

class Quiz extends BaseController
{
    public function __construct()
    {
        
    }
    
    public function index()
    {
        $arr = [
            "status" => 1
        ];
        print_r(json_encode($arr));
    }
}