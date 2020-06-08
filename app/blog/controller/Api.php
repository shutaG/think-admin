<?php

declare(strict_types=1);


namespace app\blog\controller;

use app\service\BlogArticleService;
use app\blog\request\ArticleRequest;
use app\BaseController;
use app\blog\controller\Upload;

class Api extends BaseController
{   
    public function __construct(BlogArticleService $service)
    {
        $this->service = $service;
    }

    /**
     * 
     */
    public function  list()
    {   
        echo 1;
        $data = $this->service->paginate(3);
        // $data = $this->log->getList((int) $pageNo, (int) $pageSize);
        return $this->sendSuccess($data);
    }

    public function add(ArticleRequest $request)
    {
        $request->scene('create')->validate();
        if ($this->service->add($request->param()) === false) {
            return $this->sendError();
        }

        return $this->sendSuccess();
    }

    public function  update($id, ArticleRequest $request)
    {
        $request->scene('update')->validate();
        $params = $request->param();
        if ($this->service->renew($id, $params ) === false) {
            return $this->sendError();
        }

        return $this->sendSuccess();
    }

    public function delete($id = 8)
    {
        if ($this->service->remove($id) === false) {
            return $this->sendError();
        }

        return $this->sendSuccess();
    }

    public function upload(){
        $image = $_FILES['image'];
        $upload = new EUpload($image);
        $url = $upload -> movefile();
    }   

    public function index()
    {
        return '<style type="text/css">*{ padding: 0; margin: 0; } div{ padding: 4px 48px;} a{color:#2E5CD5;cursor: pointer;text-decoration: none} a:hover{text-decoration:underline; } body{ background: #fff; font-family: "Century Gothic","Microsoft yahei"; color: #333;font-size:18px;} h1{ font-size: 100px; font-weight: normal; margin-bottom: 12px; } p{ line-height: 1.6em; font-size: 42px }</style><div style="padding: 24px 48px;"> <h1>:) </h1><p> ThinkPHP V6<br/><span style="font-size:30px">13载初心不改 - 你值得信赖的PHP框架</span></p></div><script type="text/javascript" src="https://tajs.qq.com/stats?sId=64890268" charset="UTF-8"></script><script type="text/javascript" src="https://e.topthink.com/Public/static/client.js"></script><think id="eab4b9f840753f8e7"></think>';
    }

    public function hello($name = 'ThinkPHP6')
    {
        return 'hello,' . $name;
    }
}
