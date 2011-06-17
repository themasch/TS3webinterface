<div>
	<a href="#" id="clearLink" style=""></a>
	<img src="images/loading.gif" id="loadingImage" style="visibility:hidden;" />
	<a href="index.php?logout">{$lang.head_logout}</a> | <a href="index.php?changevServer">{$lang.head_vserver_switch}</a> (#{$data.virtualserver_id})<br />
	<img src="images/spacer.png" width="16" height="16" style="visibility:hidden;" />
	<a href="index.php?">{$lang.head_vserver_overview}</a> | <a href="index.php?liveview">{$lang.head_vserver_liveview}</a>
</div>

<fieldset class="infoBox" style="width:800px;"><!--float:left;--><legend>{$lang.vstoken_token_virtualserver} #{$data.virtualserver_id} {$lang.vstoken_token_head}</legend>
	<table width="100%" border="0" cellspacing="1" cellpadding="3">
		<tr>
			<td class="table0"><b>{$lang.vstoken_token_type}</b></td>
			<td class="table0"><b>{$lang.vstoken_token_id1}</b></td>
			<td class="table0"><b>{$lang.vstoken_token_id2}</b></td>
			<td class="table0"><b>{$lang.vstoken_token_tokencode}</b></td>
			<td class="table0"><b>{$lang.vstoken_token_delete}</b></td>
		</tr>
{if $tokenList != false}
{foreach from=$tokenList item=token}
		<tr id="tokenRow_{$token.token}" class="{cycle values="table2,table1"}">
			<td>{if $token.token_type == 1}{$lang.vstoken_new_tokentype_1}{else}{$lang.vstoken_new_tokentype_0}{/if}</td>
			<td>{if $token.token_type == 1}{$channelGroupListNames[$token.token_id1].name}{else}{$serverGroupListNames[$token.token_id1].name}{/if} ({$token.token_id1})</td>
			<td>{if $token.token_type == 1}{$channelListNames[$token.token_id2].channel_name} ({$token.token_id2}){/if}</td>
			<td>{$token.token}</td>
			<td align="center"><a href="javascript:deleteToken('{$token.token}');"><img src="images/delete.png" alt="delete" border="0" /></a></td>
		</tr>
{/foreach}
{/if}
	</table>
	<br /><a href="javascript:location.href='index.php?token';"><img src="images/refresh.png" alt="reload" border="0" /></a>
</fieldset>


<fieldset style="width:220px;"><legend>{$lang.vstoken_new_head}</legend>
{if !empty($addToken)}
	{if $addToken[0]|upper == "ERROR"}
		<p>{$lang.error} {$addToken[1]}: {$addToken[2]}</p>
	{else}
		<p>
			{$lang.vstoken_new_added_ok}
		</p>
	{/if}
{/if}
	<form action="index.php?token&do=addtoken" method="post">
		{$lang.vstoken_new_tokentype}<br />
		<select name="tokentype" onchange="changeTokenType(this);">
			<option value="-1" selected="selected"></option>
			<option value="0">{$lang.vstoken_new_servergroup}</option>
			<option value="1">{$lang.vstoken_new_channelgroup}</option>
		</select><br />
		
		<div id="tokentype0" style="display:none;">
			<p><br />
				{$lang.vstoken_new_select_group}<br />
				<select name="tokenid1_0">
{foreach from=$serverGroupList item=serverGroup}{if $serverGroup.type == 1}
					<option value="{$serverGroup.sgid}">{$serverGroup.name}</option>
{/if}{/foreach}
				</select>
				<input type="hidden" name="tokenid2_0" value="0" />
			</p>
		</div>
		
		<div id="tokentype1" style="display:none;">
			<p><br />
				{$lang.vstoken_new_select_channelgroup}<br />
				<select name="tokenid1_1">
{foreach from=$channelGroupList item=channelGroup}{if $channelGroup.type == 1}
					<option value="{$channelGroup.cgid}">{$channelGroup.name}</option>
{/if}{/foreach}
				</select>
				<br /><br />
				{$lang.vstoken_new_select_channel}<br />
				<select name="tokenid2_1">
{foreach from=$channelList item=channel}
					<option value="{$channel.cid}">{$channel.channel_name}</option>
{/foreach}
				</select>
			</p>
		</div>
		<br />
		<input type="submit" name="tokenAddSubmit" id="tokenAddSubmit" value="{$lang.vstoken_new_create}" disabled="disabled" />
	</form>
</fieldset>