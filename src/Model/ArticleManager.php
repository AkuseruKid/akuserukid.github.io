<?php

namespace App\Model;

use App\Model\AbstractManager;

class ArticleManager extends AbstractManager
{
    const TABLE = "article";

    public function __construct()
    {
        parent::__construct(self::TABLE);
    }
}
