<?php

namespace App;
use FastRoute;
use App\controllers\pageControllers;

class Router{
    public static function rout(){
        $dispatcher = FastRoute\simpleDispatcher(function(FastRoute\RouteCollector $r) {
            $r->addRoute('GET', '/', ['App\controllers\pageControllers', 'index']);
            $r->addRoute('GET', '/add', ['App\controllers\pageControllers', 'add']);
            $r->addRoute('GET', '/about', ['App\controllers\pageControllers', 'about']);
            // {id} must be a number (\d+)
           // $r->addRoute('GET', '/user/{id:\d+}', 'get_user_handler');
            // The /{title} suffix is optional
            //$r->addRoute('GET', '/articles/{id:\d+}[/{title}]', 'get_article_handler');
        });

        $httpMethod = $_SERVER['REQUEST_METHOD'];
        $uri = $_SERVER['REQUEST_URI'];


        if (false !== $pos = strpos($uri, '?')) {
            $uri = substr($uri, 0, $pos);
        }
        $uri = rawurldecode($uri);

        $routeInfo = $dispatcher->dispatch($httpMethod, $uri);
        switch ($routeInfo[0]) {
            case FastRoute\Dispatcher::NOT_FOUND:
                echo "404";
                break;
            case FastRoute\Dispatcher::METHOD_NOT_ALLOWED:
                $allowedMethods = $routeInfo[1];
                // ... 405 Method Not Allowed
                break;
            case FastRoute\Dispatcher::FOUND:
                $handler = $routeInfo[1];
                $vars = $routeInfo[2];

                $controller = new $handler[0];

                call_user_func([$controller, $handler[1]], $vars);
                break;
        }
    }
}
