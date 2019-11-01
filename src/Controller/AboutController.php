<?php

namespace App\Controller;

use App\Controller\AbstractController;

class AboutController extends AbstractController
{
    public function index()
    {
        return $this->twig->render("About/index.html.twig");
    }
}
