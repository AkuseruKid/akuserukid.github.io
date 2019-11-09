<?php

namespace App\Controller;

use App\Controller\AbstractController;

class ContactController extends AbstractController
{
    public function index(): string
    {
        return $this->twig->render("Contact/index.html.twig");
    }
}
