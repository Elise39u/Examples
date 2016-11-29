<?php

require_once ('inc/loadsmarty.php');
require_once ('inc/DBconnection.php');

$pagetitle = "Mine game";
$story = "Hello test test test";
$title = "First page";
$link_address = "Bank.php";
$choice = '<a href="'. $link_address . '"> link Friend </a>';
$html_img = ('img/Alien.png');

$smarty->assign('pagetitle', $pagetitle);
$smarty->assign('title', $title);
$smarty->assign('story', $story);
$smarty->assign('choice', $choice);
$smarty->assign('img', $html_img);
$smarty->display("tpl/index.html.tpl");
