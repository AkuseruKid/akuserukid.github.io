<?php
/**
 * Created by PhpStorm.
 * User: aurelwcs
 * Date: 08/04/19
 * Time: 18:40
 */

namespace App\Controller;

use App\Model\ArticlesManager;

class HomeController extends AbstractController
{
    public function index()
    {
        $articlesManager = new ArticlesManager();
        $articles = $articlesManager->selectAll();

        return $this->twig->render("Home/index.html.twig", ["articles" => $articles]);
    }
}
