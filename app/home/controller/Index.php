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

use SimpleXMLElement;
use app\BaseController;
use think\facade\View;
use think\facade\Config;
use think\facade\Request;
use app\model\BlogArticle;
use app\model\SpiderLog;




class Index
{
    protected $request;

    private function pageType($vi)
    {
        if( !$this->ismobile() ){
            return View::fetch($vi);
        }else{
            return View::fetch('/mobile/'.$vi);
        }
    }



    private function ismobile()
    {
        // 如果有HTTP_X_WAP_PROFILE则一定是移动设备
        if (isset ($_SERVER['HTTP_X_WAP_PROFILE']))
            return true;

        //此条摘自TPM智能切换模板引擎，适合TPM开发
        if (isset ($_SERVER['HTTP_CLIENT']) && 'PhoneClient' == $_SERVER['HTTP_CLIENT'])
            return true;
        //如果via信息含有wap则一定是移动设备,部分服务商会屏蔽该信息
        if (isset ($_SERVER['HTTP_VIA']))
            //找不到为flase,否则为true
            return stristr($_SERVER['HTTP_VIA'], 'wap') ? true : false;
        //判断手机发送的客户端标志,兼容性有待提高
        if (isset ($_SERVER['HTTP_USER_AGENT'])) {
            $clientkeywords = array(
                'nokia', 'sony', 'ericsson', 'mot', 'samsung', 'htc', 'sgh', 'lg', 'sharp', 'sie-', 'philips', 'panasonic', 'alcatel', 'lenovo', 'iphone', 'ipod', 'blackberry', 'meizu', 'android', 'netfront', 'symbian', 'ucweb', 'windowsce', 'palm', 'operamini', 'operamobi', 'openwave', 'nexusone', 'cldc', 'midp', 'wap', 'mobile'
            );
            //从HTTP_USER_AGENT中查找手机浏览器的关键字
            if (preg_match("/(" . implode('|', $clientkeywords) . ")/i", strtolower($_SERVER['HTTP_USER_AGENT']))) {
                return true;
            }
        }
        //协议法，因为有可能不准确，放到最后判断
        if (isset ($_SERVER['HTTP_ACCEPT'])) {
            // 如果只支持wml并且不支持html那一定是移动设备
            // 如果支持wml和html但是wml在html之前则是移动设备
            if ((strpos($_SERVER['HTTP_ACCEPT'], 'vnd.wap.wml') !== false) && (strpos($_SERVER['HTTP_ACCEPT'], 'text/html') === false || (strpos($_SERVER['HTTP_ACCEPT'], 'vnd.wap.wml') < strpos($_SERVER['HTTP_ACCEPT'], 'text/html')))) {
                return true;
            }
        }
        return false;
    }


    public function index()
    {
    	$list = BlogArticle::order('update_time desc')->paginate(8);
        $page = $list->render();
        View::assign('list',$list);
        View::assign('page',$page);
        return $this->pageType('index/index');
    }

    /**
     * 文字详情页
     */
    public function  detail($id = 1)
    {
        $detail = BlogArticle::find($id);
        $keywords = $detail->keywords;
        if ($keywords){
            $keywords = explode(' ',$keywords);
            $keywords = implode(',',$keywords);
            $detail->keywords = $keywords;
        }
    	//markdown转html
    	$parser = new \HyperDown\Parser;
    	$html = $parser->makeHtml($detail->toArray()['content']);
    	View::assign('detail',$detail);
    	View::assign('html',$html);
    	return $this->pageType('index/detail');
    }

    /**
     * 生成网站的sitemap
     */
    public function sitemap()
    {
        # 记录访问情况
        $log['agent'] = Request::header('user-agent');
        $log['ip'] = $_SERVER["REMOTE_ADDR"];
        SpiderLog::create($log);

        $list = BlogArticle::order('update_time desc')->select();
        $xml=new SimpleXMLElement('<?xml version="1.0" encoding="utf-8"?><urlset />');

        foreach($list as $vi){
            $site = 'https://shaoer.cloud/detail/'.$vi['id'].'.html' ;
            $url=$xml->addchild("url");
            $tim = explode(' ',$vi['update_time'])[0];
            // dump($tim);
            # 链接地址
            $url->addchild("loc",$site);
            # 最后的更新时间
            $url->addchild("lastmod",$tim);
        }
        return xml($xml->asXml());
    }

    public function hello($name = 'ThinkPHP6')
    {

        return 'hello,' . $name;
    }
}
