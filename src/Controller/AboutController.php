<?php

namespace App\Controller;

use App\Controller\AbstractController;

class AboutController extends AbstractController
{
    public function index(): string
    {
        $uri = explode("/", $_SERVER["REQUEST_URI"]);
        return $this->twig->render("About/index.html.twig", ["uri" => $uri[1]]);
    }
}
