<?xml version="1.0" encoding="ISO-8859-1" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>{$title}</title>
<link href="webinterface.css" rel="stylesheet" type="text/css" />
<script src="js/jquery.min.js" type="text/javascript"></script>
<script src="webinterface.js" type="text/javascript"></script>
<script src="js/main.js" type="text/javascript"></script>
</head>
<body onload="onLoad();{if $liveviewAutoUpdate == true}liveViewUpdateInterval = setInterval('serverViewUpdate(false)', 10000);{/if}">
<div id="jsMsg" style="display:none;">
	<span id="js_error">{$lang.js_error}</span>
	<span id="js_ajax_error">{$lang.js_ajax_error}</span>
	<span id="js_confirm_server_stop" title="{$lang.js_confirm_server_stop}"></span>
	<span id="js_confirm_server_delete" title="{$lang.js_confirm_server_delete}"></span>
	<span id="js_notice_server_deleted" title="{$lang.js_notice_server_deleted}"></span>
	<span id="js_prompt_banduration" title="{$lang.js_prompt_banduration}"></span>
	<span id="js_prompt_banreason" title="{$lang.js_prompt_banreason}"></span>
	<span id="js_prompt_msg_to" title="{$lang.js_prompt_msg_to}"></span>
	<span id="js_prompt_poke_to" title="{$lang.js_prompt_poke_to}"></span>
	<span id="js_prompt_new_propvalue" title="{$lang.js_prompt_new_propvalue}"></span>
</div>
<!--[if IE]>
<h1>Attention: Internet Explorer is not completely supportet.</h1>
<![endif]-->
<div id="wrapper">
