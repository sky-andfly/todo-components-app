<?php

namespace App\controllers;
use League\Plates\Engine;
use App\clasess\builder\QueryBuilder;
use JasonGrimes\Paginator;
use \Tamtamchik\SimpleFlash\Flash;

class pageControllers{
    private $templates;
    private $db;
    const viewDir = "../view/";
    const itemsPerPage = 5;

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
            flash()->success("Запись удалена!");
            header("Location: /page/{$_SESSION['last_page']}");
        }
    }
    public function view($vars){
        $result = $this->db->getOneById('tasks', $vars['id']);
        echo $this->templates->render(self::viewDir . 'view', ['result' => $result]);
    }
    public function store(){
        if (isset($_POST['send'])){
            if($_POST['title'] == "" || $_POST['text'] == ""){
                flash()->error("Заполните все поля!");
                header("Location: /add");exit;
            }
            $data = [
                'title' => $_POST['title'],
                'text' => $_POST['text']
            ];
        }
        $id = $this->db->add("tasks", $data);
        flash()->success("Запись добавлена!");

        header("Location: /view/{$id}");
    }
    public function edit($vars){
        $result = $this->db->getOneById('tasks', $vars['id']);
        echo $this->templates->render(self::viewDir . 'edit', ['post' => $result]);
    }
    public function update(){
        if (isset($_POST['send'])){
            $id = $_POST['id'];
            if($_POST['title'] == "" || $_POST['text'] == ""){
                flash()->error("Заполните все поля!");
                header("Location: /edit/{$id}");exit;
            }
            $data = [
                'title' => $_POST['title'],
                'text' => $_POST['text']
            ];
        }
        $this->db->update("tasks",$id, $data);
        flash()->success("Запись обновлена!");
        header("Location: /view/{$id}");
    }
}