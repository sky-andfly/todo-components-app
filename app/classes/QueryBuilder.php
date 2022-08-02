<?php

namespace App\clasess\builder;

use PDO;
use Aura\SqlQuery\QueryFactory;



class QueryBuilder
{
    private $pdo;
    private $queryFactory;
    public function __construct()
    {
        $this->queryFactory = new QueryFactory('mysql');
        $this->pdo = new PDO('mysql:host=localhost;dbname=simple;charset=utf8', "root", "root");
    }
    public function getAll($table){
        $select = $this->queryFactory->newSelect();
        $select->from($table)->cols(['*']);

        $sth = $this->pdo->prepare($select->getStatement());
        $sth->execute($select->getBindValues());
        return $sth->fetchAll(PDO::FETCH_ASSOC);
    }
    public function getAllLimit($table, $limit, $offset){
        $select = $this->queryFactory->newSelect();
        $select->from($table)->cols(['*'])->limit($limit)->offset($offset);



        $sth = $this->pdo->prepare($select->getStatement());
        $sth->execute($select->getBindValues());
        return $sth->fetchAll(PDO::FETCH_ASSOC);
    }
    public function getCount($table){
        $select = $this->queryFactory->newSelect();
        $select->from($table)->cols(['COUNT(*)']);

        $sth = $this->pdo->prepare($select->getStatement());
        $sth->execute($select->getBindValues());
        return $sth->fetch(PDO::FETCH_ASSOC);
    }

}