<?php

declare(strict_types=1);


namespace app\admin\controller;

use app\service\BlogArticleService;
use app\blog\request\ArticleRequest;
use app\BaseController;

class Blog extends BaseController
{   
    public function __construct(BlogArticleService $service)
    {
        $this->service = $service;
    }

    public function  detail($id)
    {
        $data = $this->service->find($id);
        return $this->sendSuccess($data);
    }

    /**
     * 
     */
    public function  list($pageNo = 1, $pageSize = 10)
    {   
        $data = $this->service->paginate($pageSize);
        // $data = $this->log->getList((int) $pageNo, (int) $pageSize);
        // 
        $data = $data->toArray();
        $data['pageSize'] = $pageSize;
        $data['pageNo'] = $data['current_page'];
        $data['totalPage'] = $data['last_page'];
        $data['totalCount'] = $data['total'];
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

}
