<?php

namespace App\Model;

use App\Model\AbstractManager;

class CommentsManager extends AbstractManager
{
    const TABLE = 'comments';

    /**
     *  Initializes this class.
     */
    public function __construct()
    {
        parent::__construct(self::TABLE);
    }



    public function insert(array $comment): int
    {
        // prepared request
        $statement = $this->pdo->prepare("INSERT INTO $this->table (`nickname`, `message`) 
        VALUES (:nickname, :message)");
        $statement->bindValue('nickname', $comment['user_nickname'], \PDO::PARAM_STR);
        $statement->bindValue('message', $comment['user_message'], \PDO::PARAM_STR);

        if ($statement->execute()) {
            return (int)$this->pdo->lastInsertId();
        }
    }
}
