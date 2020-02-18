<?php

declare(strict_types=1);
/**
 * This file is part of TAnt.
 * @link     https://github.com/edenleung/think-admin
 * @document https://www.kancloud.cn/manual/thinkphp6_0
 * @contact  QQ Group 996887666
 * @author   Eden Leung 758861884@qq.com
 * @copyright 2019 Eden Leung
 * @license  https://github.com/edenleung/think-admin/blob/6.0/LICENSE.txt
 */

namespace app\service;

use app\BaseService;
use app\model\BlogArticle;

class BlogArticleService extends BaseService
{
    public function __construct(BlogArticle $blogArticle)
    {
        $this->model = $blogArticle;
    }


}
