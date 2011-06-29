<div>
	<a href="#" id="clearLink" style=""></a>
	<img src="images/loading.gif" id="loadingImage" style="visibility:hidden;" />
	<a href="index.php?logout">{$lang.head_logout}</a>
</div>

<h2>{$lang.vsselect_headline} <img src="./images/refresh.png" class="btn_refresh" /></h2>
		
<table border="0" cellspacing="1" cellpadding="0" style="float:left;">
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
    <tr class="{cycle values="table2,table1"}" data-vid="{$curvServer.virtualserver_id}">
        <td>{$curvServer.virtualserver_id}</td>
        <td>{$curvServer.virtualserver_name}</td>
        <td>{$IP}:{$curvServer.virtualserver_port}</td>
        {if $curvServer.virtualserver_status=="none"||$curvServer.virtualserver_status=="offline"}
            <td style="text-align: center"> <img class="status" src="./images/red.png" /> </td>
            <td class="clients"></td>
            <td class="uptime"></td>
            <td class="tooles">
                <img src="./images/start.png" class="btn_start" />
                <img src="./images/delete.png" class="btn_delete" />
            </td>
        {else}
            <td style="text-align: center"> <img class="status" src="./images/green.png" /> </td>
            <td class="clients">{$curvServer.virtualserver_clientsonline} / {$curvServer.virtualserver_maxclients}</td>
            <td class="uptime">{$webinterface->parseTime($curvServer.virtualserver_uptime)}</td>
            <td class="tools">
                <img src="./images/stop.png" class="btn_stop" />
                <img src="./images/settings.png" class="btn_edit" />
                <img src="./images/delete.png" class="btn_delete" />
            </td>
        {/if}
    </tr>
{/foreach}
</table>
<p class="btn_create" style="float: right;margin: 0;">
    <img src="./images/add.png" style="vertical-align: middle" />
    <span style="vertical-align: middle"> neuen Server anlegen </span>
</p>

<div id="form_create" style="text-align: left;">
    <fieldset>
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
</div>
