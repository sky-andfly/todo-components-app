<?php

namespace App\controllers;
use League\Plates\Engine;

class pageControllers{
    private $templates;
    public function __construct()
    {
        $this->templates = new Engine('../app/templates');
    }

    public function index(){
        echo $this->templates->render('main');
    }
}