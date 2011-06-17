<?php

$lang = array();	// DO NOT REMOVE

/* - EDIT UNDER THIS LINE - */



// general
$lang['error'] = "Fehler";
$lang['title'] = "TeamSpeak 3 Webinterface";
$lang['login'] = "Login";

$lang['update_available'] = '<h3>Achtung: Eine neue Version (v%1) dieser Software ist unter <a href="%2" target="_blank">%2</a> verf&uuml;gbar.</h3>';

  // head
$lang['head_logout'] = "Ausloggen";
$lang['head_vserver_switch'] = "vServer wechseln";
$lang['head_vserver_overview'] = "vServer &Uuml;bersicht";
$lang['head_vserver_token'] = "Tokenverwaltung";
$lang['head_vserver_liveview'] = "Server Liveansicht";



// errors
$lang['e_fill_out'] = "Bitte f&uuml;llen Sie alle ben&ouml;tigten Felder aus.";
$lang['e_upload_failed'] = "Upload gescheitert.";

$lang['e_server_responded'] = "Der Server antwortete: ";

$lang['e_conn_serverquery'] = "Konnte keinen ServerQuery-Zugang herstellen.";
$lang['e_conn_vserver'] = "Konnte virtuellen Server nicht auswählen.";

$lang['e_session_timedout'] = "Session abgelaufen.";


$lang['js_error'] = "Fehler";
$lang['js_ajax_error'] = "Es ist ein AJAX-Fehler aufgetreten. %1";
$lang['js_confirm_server_stop'] = "M&ouml;chten sie Server #%1 wirklich stoppen?";
$lang['js_confirm_server_delete'] = "Wollen Sie Server #%1 wirklich L&Ouml;SCHEN?";
$lang['js_notice_server_deleted'] = "Server %1 wurde erfolgreich gel&ouml;scht.\nDie &Uuml;bersichtsseite wird jetzt neu geladen.";
$lang['js_prompt_banduration'] = "Dauer in Stunden (0=unendlich): ";
$lang['js_prompt_banreason'] = "Grund (optional): ";
$lang['js_prompt_msg_to'] = "Textnachricht an %1 #%2: ";
$lang['js_prompt_poke_to'] = "Pokenachricht an Client #%1: ";
$lang['js_prompt_new_propvalue'] = "Neuer Wert für '%1': ";



// notices
$lang['n_server_responded'] = "Der Server antwortete: ";



// login
$lang['login_serverquery'] = "ServerQuery Login";
$lang['login_name'] = "Username";
$lang['login_password'] = "Passwort";
$lang['login_submit'] = "Einloggen";


// select vServer page
$lang['vsselect_headline'] = "vServer Auswahl";

$lang['vsselect_id'] = "ID #";
$lang['vsselect_name'] = "Name";
$lang['vsselect_ip'] = "IP";
$lang['vsselect_port'] = "Port";
$lang['vsselect_state'] = "Status";
$lang['vsselect_clients'] = "Clients";
$lang['vsselect_uptime'] = "Uptime";
$lang['vsselect_choose'] = "ausw&auml;hlen";
$lang['vsselect_start'] = "starten";
$lang['vsselect_stop'] = "stoppen";
$lang['vsselect_delete'] = "L&Ouml;SCHEN";

$lang['vsselect_new_headline'] = "Neuen virtuellen Server erstellen";
$lang['vsselect_new_servername'] = "Servername";
$lang['vsselect_new_slots'] = "Clientslots";
$lang['vsselect_new_create'] = "Erstellen";

$lang['vsselect_new_added_ok'] = "vServer <span class=\"online\">%1</span> wurde erfolgreich erstellt.";
$lang['vsselect_new_added_generated'] = "Das generierte Token lautet:";


// vServer overview
$lang['vsoverview_virtualserver'] = "Virtualserver";
$lang['vsoverview_information_head'] = "Informationen";
$lang['vsoverview_connection_head'] = "Verbindung";
$lang['vsoverview_info_general_head'] = "Allgemeine Einstellungen";

$lang['vsoverview_info_servername'] = "Servername";
$lang['vsoverview_info_host'] = "Host";
$lang['vsoverview_info_state'] = "Status";
$lang['vsoverview_info_state_port'] = "Port";
$lang['vsoverview_info_uptime'] = "Uptime";
$lang['vsoverview_info_welcomemsg'] = "Willkommens-<br />nachricht";
$lang['vsoverview_info_hostmsg'] = "Hostnachricht";
$lang['vsoverview_info_hostmsg_mode_output'] = "Ausgabe";
$lang['vsoverview_info_hostmsg_mode_0'] = "keine";
$lang['vsoverview_info_hostmsg_mode_1'] = "im Chatlog";
$lang['vsoverview_info_hostmsg_mode_2'] = "Fenster";
$lang['vsoverview_info_hostmsg_mode_3'] = "Fenster + Disconnect";
$lang['vsoverview_info_req_security'] = "Sicherheitslevel";
$lang['vsoverview_info_req_securitylvl'] = "ben&ouml;tigt";
$lang['vsoverview_info_hostbanner_head'] = "Hostbanner";
$lang['vsoverview_info_hostbanner_url'] = "URL";
$lang['vsoverview_info_hostbanner_imgurl'] = "Bildadresse";
$lang['vsoverview_info_hostbanner_buttonurl'] = "Hostbutton-URL";
$lang['vsoverview_info_antiflood_head'] = "Anti-Flood";
$lang['vsoverview_info_antiflood_warning'] = "Warnung bei";
$lang['vsoverview_info_antiflood_kick'] = "Kick bei";
$lang['vsoverview_info_antiflood_ban'] = "Ban bei";
$lang['vsoverview_info_antiflood_banduration'] = "Banl&auml;nge";
$lang['vsoverview_info_antiflood_decrease'] = "Abnahme um";
$lang['vsoverview_info_antiflood_points'] = "Punkten";
$lang['vsoverview_info_antiflood_in_seconds'] = "in Sekunden";
$lang['vsoverview_info_antiflood_points_per_tick'] = "Punkte pro Tick";
$lang['vsoverview_conn_total_head'] = "Total";
$lang['vsoverview_conn_total_packets'] = "Pakete";
$lang['vsoverview_conn_total_bytes'] = "Bytes";
$lang['vsoverview_conn_total_send'] = "gesendet";
$lang['vsoverview_conn_total_received'] = "empfangen";
$lang['vsoverview_conn_bandwidth_head'] = "Bandbreite";
$lang['vsoverview_conn_bandwidth_last'] = "letzte";
$lang['vsoverview_conn_bandwidth_second'] = "Sekunde";
$lang['vsoverview_conn_bandwidth_minute'] = "Minute";
$lang['vsoverview_conn_bandwidth_send'] = "gesendet";
$lang['vsoverview_conn_bandwidth_received'] = "empfangen";


// vServer Token
$lang['vstoken_token_virtualserver'] = "Virtualserver";
$lang['vstoken_token_head'] = "Token";
$lang['vstoken_token_type'] = "Gruppentyp";
$lang['vstoken_token_id1'] = "Servergruppe/<br />Channelgruppe";
$lang['vstoken_token_id2'] = "(Channel)";
$lang['vstoken_token_tokencode'] = "Tokencode";
$lang['vstoken_token_delete'] = "l&ouml;schen";

$lang['vstoken_new_head'] = "Neues Token erstellen";
$lang['vstoken_new_create'] = "Erzeugen";
$lang['vstoken_new_tokentype'] = "Tokentyp:";
$lang['vstoken_new_servergroup'] = "Server Gruppe";
$lang['vstoken_new_channelgroup'] = "Channel Gruppe";
$lang['vstoken_new_select_group'] = "Servergruppe";
$lang['vstoken_new_select_channelgroup'] = "Channelgruppe";
$lang['vstoken_new_select_channel'] = "Channel";

$lang['vstoken_new_tokentype_0'] = "Server";
$lang['vstoken_new_tokentype_1'] = "Channel";

$lang['vstoken_new_added_ok'] = "Token wurde erfolgreich generiert.";


// vServer Liveview
$lang['vsliveview_server_virtualserver'] = "Virtualserver";
$lang['vsliveview_server_head'] = "Serveransicht";

$lang['vsliveview_liveview_enable_autorefresh'] = "Auto-Refresh";

$lang['vsliveview_liveview_tooltip_to_channel'] = "in Channel #";
$lang['vsliveview_liveview_tooltip_switch'] = "Switch";
$lang['vsliveview_liveview_tooltip_send_msg'] = "Nachricht senden";
$lang['vsliveview_liveview_tooltip_poke'] = "Poken";
$lang['vsliveview_liveview_tooltip_kick'] = "Kicken";
$lang['vsliveview_liveview_tooltip_ban'] = "Bannen";

$lang['vsoverview_banlist_head'] = "Bannliste";
$lang['vsoverview_banlist_id'] = "ID #";
$lang['vsoverview_banlist_ip'] = "IP";
$lang['vsoverview_banlist_name'] = "Name";
$lang['vsoverview_banlist_uid'] = "UniqueID";
$lang['vsoverview_banlist_reason'] = "Grund";
$lang['vsoverview_banlist_created'] = "erstellt";
$lang['vsoverview_banlist_duration'] = "Dauer";
$lang['vsoverview_banlist_end'] = "endet";
$lang['vsoverview_banlist_unlimited'] = "unendlich";
$lang['vsoverview_banlist_never'] = "nie";

$lang['vsoverview_banlist_new_head'] = "Neuen Bann erstellen";
$lang['vsoverview_banlist_new_create'] = "Erstellen";

$lang['vsliveview_channelbackup_head'] = "Channelbackup";
$lang['vsliveview_channelbackup_get'] = "erstellen";
$lang['vsliveview_channelbackup_load'] = "Channelbackup einspielen";
$lang['vsliveview_channelbackup_load_submit'] = "Upload";

$lang['vsliveview_channelbackup_new_added_ok'] = "Channelbackup erfolgreich verarbeitet.";



// counter
$lang['time_day']     = "Tag";
$lang['time_days']    = "Tage";
$lang['time_hour']    = "Stunde";
$lang['time_hours']   = "Stunden";
$lang['time_minute']  = "Minute";
$lang['time_minutes'] = "Minuten";
$lang['time_second']  = "Sekunde";
$lang['time_seconds'] = "Sekunden";



// error numbers
$lang['e_2568'] = "Sie besitzen keine ausreichenden Rechte.";



/* - DO NOT EDIT UNDER THIS LINE - */

return $lang;	// DO NOT REMOVE

?>