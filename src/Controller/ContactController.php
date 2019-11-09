<?php

namespace App\Controller;

use App\Controller\AbstractController;

class ContactController extends AbstractController
{
    public function index(): string
    {
        $uri = explode("/", $_SERVER["REQUEST_URI"]);
        return $this->twig->render("Contact/index.html.twig", ["uri" => $uri[1]]);
    }
}
