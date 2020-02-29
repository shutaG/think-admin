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

namespace app\blog\request;

use app\BaseRequest;

class ArticleRequest extends BaseRequest
{
    protected $rule = [
        'title' => 'require',
        'content' => 'require',
        'image' => 'require',
        'introduce' => 'require',
        'id' => 'require'
    ];

    protected $message = [
        'title.require' => '未填写标题',
        'content.require' => '内容为空',
        'image.require' => '未上传图片',
        'introduce.unique' => '未填写描述',
        'id' => '缺少更新标识'
    ];

    protected $scene = [
        'create' => ['title', 'content', 'image','introduce'],
        'update' => ['title', 'content', 'image','introduce','id'],
    ];
}
