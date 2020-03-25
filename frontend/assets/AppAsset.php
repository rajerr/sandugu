<?php

namespace frontend\assets;

use yii\web\AssetBundle;

/**
 * Main frontend application asset bundle.
 */
class AppAsset extends AssetBundle
{
    public $basePath = '@webroot';
    public $baseUrl = '@web';
    public $css = [
        //'css/site.css',
        'css/animate-3.7.0.css',
        'css/font-awesome-4.7.0.min.css',
        'css/bootstrap-4.1.3.min.css',
        'css/owl-carousel.min.css',
        'css/jquery.datetimepicker.min.css',
        'css/linearicons.css',
        'css/style.css',
    ];
    public $js = [
       'assets/js/vendor/jquery-2.2.4.min.js',
	'assets/js/vendor/bootstrap-4.1.3.min.js',
   'assets/js/vendor/wow.min.js',
   'assets/js/vendor/owl-carousel.min.js',
   'assets/js/vendor/jquery.datetimepicker.full.min.js',
   'assets/js/vendor/jquery.nice-select.min.js',
   'assets/js/vendor/superfish.min.js',
   'assets/js/main.js',
    ];
    public $depends = [
        'yii\web\YiiAsset',
        'yii\bootstrap\BootstrapAsset',
    ];
}
