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

namespace app\blog\controller;

use app\BaseController;

class Upload 
{
	private $file;
    private $thisType;


    function __construct($file)
    {
        $this->file = $file;
        $this->thisType = NULL;
        $this->verifyFile();
    }


    /**
     *  验证文件
     */
    public function verifyFile()
    {
        try {
            $maxSize = 2 * 1024 * 1024;
            if ($maxSize < $this->file['size']) {
                die('文件大于上传限制，请选择小于2M的文件重新尝试上传');
            }

            $type = array(
                '.png' => 'image/png',
                '.jpg' => 'image/jpg',
                '.jpeg' => 'image/jpeg',
                '.gif' => 'image/gif'
            );

            
            foreach ($type as $key => $value) {

                if ($value == $this->file['type']) {
                    $this->thisType = $key;
                    break;
                }
            }
            if (!$this->thisType) {
                echo 'File type not supported';
                return;
            }
        } catch (Exception $e) {
            echo $e->getMessage();
        }
    }
	/**
     *  移动文件返回路径
     */
    public function moveFile()
    {
        try {
        	// $path = '../public/static/userImages/';
        	$path = '../public/upload/';
            
            $filename = time() . $this->thisType;
            $url = $path.$filename;
            if (file_exists($url)) {
                echo "File Exist";
                return;
            }
            
           $res= move_uploaded_file($this->file['tmp_name'], $url);
            if($res){
                return $filename;
            }
            echo 'Move File Error';
        } catch (Exception $e) {
            echo $e->getMessage();
        }

    }
    /**
     * 释放资源
     */
    public function __destruct(){
        $this->file= null;
        $this->thisType= null;
	}
}
