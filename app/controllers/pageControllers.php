<?php

namespace App\controllers;
use League\Plates\Engine;
use App\clasess\builder\QueryBuilder;
use JasonGrimes\Paginator;


class pageControllers{
    private $templates;
    private $db;
    const viewDir = "../view/";
    const itemsPerPage = 5;
    private $last_page;

    public function __construct()
    {
        $this->templates = new Engine('../app/templates');
        $this->db = new QueryBuilder();
    }

    public function index(){
        $table = "tasks";
        $_SESSION['last_page'] = 1;
        $pagination = $this->pageCount($table, self::itemsPerPage, 1,'/page/(:num)');
        $posts = $this->db->getAllLimit($table, $pagination['itemsPerPage'], $pagination['offset']);
        echo $this->templates->render(self::viewDir . 'main', ['posts' => $posts, 'paginator' => $pagination['paginator']]);
    }
    public function page($vars){
        $table = "tasks";
        $_SESSION['last_page'] = $vars['id'];
        $pagination = $this->pageCount($table, self::itemsPerPage, $vars['id'],'(:num)');
        $posts = $this->db->getAllLimit($table, $pagination['itemsPerPage'], $pagination['offset']);
        echo $this->templates->render(self::viewDir . 'main', ['posts' => $posts, 'paginator' => $pagination['paginator']]);
    }
    public function add(){
        echo $this->templates->render(self::viewDir . 'add');
    }
    public function about(){
        echo $this->templates->render(self::viewDir . 'about');
    }
    public function pageCount($table, $itemsPerPage, $currentPage,$urlPattern){
        $count = $this->db->getCount($table);
        $totalItems = $count['COUNT(*)'];
        $offset = $itemsPerPage*$currentPage - 5;
        $paginator = new Paginator($totalItems, $itemsPerPage, $currentPage, $urlPattern);
        return ['paginator' => $paginator, 'itemsPerPage' => $itemsPerPage, 'offset'=>$offset];
    }
    public function delete($vars){
        $table = "tasks";
        $this->db->delete($table, $vars['id']);
        if (isset($_SESSION['last_page'])){
            header("Location: /page/{$_SESSION['last_page']}");
        }
    }
}