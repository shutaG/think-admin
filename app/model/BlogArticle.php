<?php

declare(strict_types=1);

namespace app\model;

use app\BaseModel;
use think\model\concern\SoftDelete;

class BlogArticle extends BaseModel
{
    protected $pk = 'id';
    use SoftDelete;
    protected $deleteTime = 'delete_time';
    protected $autoWriteTimestamp = 'datetime';
}
