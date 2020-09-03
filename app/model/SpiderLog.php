<?php

declare(strict_types=1);

namespace app\model;

use app\BaseModel;
use think\model\concern\SoftDelete;

class SpiderLog extends BaseModel
{
    protected $pk = 'id';
    protected $autoWriteTimestamp = 'datetime';
}
