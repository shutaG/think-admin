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

namespace app\home\controller;

use app\BaseController;
use think\facade\View;
use app\model\BlogArticle;
class Index 
{
    public function index()
    {	
    	$list = BlogArticle::order('update_time desc')->select();
    	dump($list->toArray());
    	View::assign('list',$list);
        return View::fetch();
    }

    /**
     * 文字详情页
     */
    public function  detail($id = 1)
    {	
    	$detail = BlogArticle::find($id);

    	//markdown转html
    	$parser = new \HyperDown\Parser;
    	$html = $parser->makeHtml($detail->toArray()['content']);
    	View::assign('detail',$detail);
    	View::assign('html',$html);
    	return View::fetch();
    }

    public function hello($name = 'ThinkPHP6')
    {
        return 'hello,' . $name;
    }
}
