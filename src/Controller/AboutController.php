<?php

namespace App\Controller;

use App\Controller\AbstractController;

class AboutController extends AbstractController
{
    public function index(): string
    {
        return $this->twig->render("About/index.html.twig");
    }
}
