<?php

namespace backend\assets;

use yii\web\AssetBundle;

/**
 * Main backend application asset bundle.
 */
class AdminAsset extends AssetBundle
{
    public $basePath = '@webroot';
    public $baseUrl = '@web';
    public $css = [
        'css/site.css',
        'admin/admin/assets/img/favicon.ico',
        'https://fonts.googleapis.com/icon?family=Material+Icons',
        'admin/assets/css/bootstrap.min.css',
        'admin/assets/css/font-awesome.min.css',
        'admin/assets/css/style.css',
    
    ];
    public $js = [
        'admin/assets/js/jquery-3.2.1.min.js',
        'admin/assets/js/popper.min.js',
        'admin/assets/js/bootstrap.min.js',
        'admin/assets/js/jquery.slimscroll.js',
        'admin/assets/js/Chart.bundle.js',
        'admin/assets/js/chart.js',
        'admin/assets/js/app.js',
    ];
    public $depends = [
        'yii\web\YiiAsset',
        'yii\bootstrap\BootstrapAsset',
    ];
}
