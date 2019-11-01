<?php

namespace App\Controller;

use App\Controller\AbstractController;
use App\Model\ArticlesManager;

class ArticlesController extends AbstractController
{
    public function list()
    {
        $articlesManager = new ArticlesManager();
        $articles = $articlesManager->selectAll();

        return $this->twig->render("Articles/list.html.twig", ["articles" => $articles]);
    }

    public function show(int $id)
    {
        $articlesManager = new ArticlesManager();
        $article = $articlesManager->selectOneById($id);

        return $this->twig->render('Articles/show.html.twig', ['article' => $article]);
    }
}
