<h2>{$lang.title}</h2>
<form action="index.php" method="post">
	<table width="400" border="0" cellspacing="2" cellpadding="2">
		<!--<tr>
			<td><label><span class="loginIdentifier">TeamSpeak 3 IP</span><br /><input type="text" name="serverip" size="20" /></label></td>
			<td><label><span class="loginIdentifier">Port</span><br /><input type="text" name="serverport" size="8" /></label></td>
		</tr>-->
		<tr>
			<td colspan="2"><h4>{$lang.login_serverquery}</h4></td>
		</tr>
		<tr>
			<td><label><span class="loginIdentifier">{$lang.login_name}</span><br /><input type="text" name="name" value="serveradmin" size="20" /></label></td>
			<td><label><span class="loginIdentifier">{$lang.login_password}</span><br /><input type="password" name="pwd" value="" size="20" /></label></td>
		</tr>
		<tr>
			<td colspan="2"><!--<input name="vserver" type="hidden" value="8" />--><input type="submit" name="loginSubmit" value="{$lang.login_submit}" /></td>
		</tr>
	</table>
</form>