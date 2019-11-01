<?php

namespace App\Controller;

use App\Controller\AbstractController;
use App\Model\CommentsManager;

class CommentsController extends AbstractController
{
    public function add()
    {
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $commentManager = new CommentsManager();
            $comment = [
                'user_nickname' => $_POST['user_nickname'],
                'user_message' => $_POST['user_message']
            ];
            $id = $commentManager->insert($comment);
            header('Location:/articles/show/' . $id);
        }
        return $this->twig->render("Comments/add.html.twig");
    }
}
