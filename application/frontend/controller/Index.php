<?php
namespace app\frontend\controller;

use think\Controller;

class Index extends Controller
{
    public function index()
    {
        return view('index/homepage');
    }
}
