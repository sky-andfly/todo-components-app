<?php

namespace App\controllers;
use League\Plates\Engine;

class pageControllers{
    private $templates;
    const viewDir = "../view/";
    public function __construct()
    {
        $this->templates = new Engine('../app/templates');
    }

    public function index(){
        echo $this->templates->render(self::viewDir . 'main');
    }
    public function add(){
        echo $this->templates->render(self::viewDir . 'add');
    }
    public function about(){
        echo $this->templates->render(self::viewDir . 'about');
    }
}