<div>
	<a href="#" id="clearLink" style=""></a>
	<img src="images/loading.gif" id="loadingImage" style="visibility:hidden;" />
	<a href="index.php?logout">{$lang.head_logout}</a>
</div>

<h2>{$lang.vsselect_headline}</h2>
		
<table border="0" cellspacing="1" cellpadding="0">
    <tr>
        <td class="table0"><b>{$lang.vsselect_id}</b></td>
        <td class="table0"><b>{$lang.vsselect_name}</b></td>
        <td class="table0"><b>{$lang.vsselect_ip}:{$lang.vsselect_port}</b></td>
        <td class="table0"><b>{$lang.vsselect_state}</b></td>
        <td class="table0"><b>{$lang.vsselect_clients}</b></td>
        <td class="table0"><b>{$lang.vsselect_uptime}</b></td>
        <td class="table0"><b>Optionen</b></td>  <!-- TODO: translation -->
    </tr>
{foreach from=$selectvServer item=curvServer}
    <tr class="{cycle values="table2,table1"}" id="serverrow_{$curvServer.virtualserver_id}">
        <td>{$curvServer.virtualserver_id}</td>
        <td>{$curvServer.virtualserver_name}</td>
        <td>{$IP}:{$curvServer.virtualserver_port}</td>
        {if $curvServer.virtualserver_status=="none"||$curvServer.virtualserver_status=="offline"}
            <td style="text-align: center"> <img class="status" src="./images/red.png" /> </td>
            <td class="clients"></td>
            <td class="uptime"></td>
        {else}
            <td style="text-align: center"> <img class="status" src="./images/green.png" /> </td>
            <td class="clients">{$curvServer.virtualserver_clientsonline} of {$curvServer.virtualserver_maxclients}</td>
            <td class="uptime">{$webinterface->parseTime($curvServer.virtualserver_uptime)}</td>
        {/if}
        <td>
            <img src="./images/start.png" class="btn_start" data-vsid="{$curvServer.virtualserver_id}" />
            <img src="./images/stop.png" class="btn_stop" data-vsid="{$curvServer.virtualserver_id}" />
        </td>
    </tr>
{/foreach}
</table>
<br />
<p class="btn_create" style="float: right;">
    <img src="./images/add.png" style="vertical-align: middle" />
    <span style="vertical-align: middle">
        neuen Server anlegen
    </span>
</p>
<!--	<br /><br />
	<span style="border-top:1px solid #CCCCCC;padding-top:13px;">
		<input type="submit" name="vserverSubmit" value="{$lang.vsselect_choose}" />
        <input type="button" name="startvServer" onclick="setvserverstate('START');" value="{$lang.vsselect_start}" />
        <input type="button" name="stopvServer" onclick="setvserverstate('STOP');" value="{$lang.vsselect_stop}" />
        <input type="button" name="deletevServer" onclick="vserverdelete();" class="warning" value="{$lang.vsselect_delete}" />
	</span>-->
<br />

<fieldset style="float: left;" id="form_create">
    <legend>{$lang.vsselect_new_headline}</legend>
{if !empty($addData)}
	{if $addData[0]|upper == "ERROR"}
		<p>{$lang.error} {$addData[1]}: {$addData[2]}</p>
	{else}
		<p>
			{$lang.vsselect_new_added_ok|replace:'%1':$addData.sid}<br />
			{$lang.vsselect_new_added_generated}<br />
			<input type="text" readonly="readonly" value="{$addData.token}" class="online" style="width:213px;" />
		</p>
	{/if}
{/if}
	<form action="index.php?changevServer&do=addserver" method="post">
		<label><span class="loginIdentifier">{$lang.vsselect_new_servername}</span><br /><input type="text" name="servername" value="TeamSpeak ]|[ Server" /></label><br />
		<label for="serverslots"><span class="loginIdentifier">{$lang.vsselect_new_slots}</span></label><br />
		<input type="submit" name="serverAddSubmit" value="{$lang.vsselect_new_create}" style="float:right;" />
		<input type="text" name="serverslots" value="20" size="1" />
	</form>
</fieldset>
