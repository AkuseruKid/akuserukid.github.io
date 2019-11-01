<?php

namespace App\Model;

class ArticlesManager extends AbstractManager
{
    const TABLE = "articles";

    public function __construct()
    {
        parent::__construct(self::TABLE);
    }
}
