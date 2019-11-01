<?php

namespace App\Controller;

use App\Controller\AbstractController;
use App\Model\ArticlesManager;

class ArticleController extends AbstractController
{

    public function show($id)
    {
        $articlesManager = new ArticlesManager();
        $article = $articlesManager->selectOneById($id);
        return $this->twig->render("Articles/show.html.twig", ["article" => $article]);
    }
}
