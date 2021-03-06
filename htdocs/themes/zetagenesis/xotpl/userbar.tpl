<div id="xo-userbar">
    <{if !$xoops_isuser}>
        <form method="post" action="<{xoAppUrl /user.php op=login}>">
            <{$smarty.const._LOGIN}>&nbsp;
            <input name="uname" type="text"/>&nbsp;&nbsp;<input name="pass" type="password"/>
            <input type="hidden" name="xoops_redirect" value="<{$smarty.server.REQUEST_URI}>"/>

            <{if $lang_siteclosemsg}>
                <input type="hidden" name="xoops_login" value="1"/>
            <{/if}>
            <button type="submit"><img src="<{xoImgUrl icons/users/home.png}>" alt="<{$smarty.const._LOGIN}>"/></button>
        </form>
        <{if !$lang_siteclosemsg}>
            &nbsp;+&nbsp;
            <a href="<{xoAppUrl /register.php}>" class="register" title="<{$smarty.const._REGISTER}>"><{$smarty.const._REGISTER}></a>
        <{/if}>
    <{else}>
        <{xoInboxCount assign=pmcount}>
        <a href="<{xoAppUrl viewpmsg.php}>" title="<{$smarty.const._THEME_INBOX}>">
            <{if $pmcount}>
                <img src="<{xoImgUrl icons/users/inbox-full.png}>" alt="<{$pmcount}> <{$smarty.const._THEME_INBOX_NOTREAD}>"/>
            <{else}>
                <img src="<{xoImgUrl icons/users/inbox.png}>" alt="<{$smarty.const._THEME_INBOX}>"/>
            <{/if}>
        </a>
        <a href="<{xoAppUrl /notifications.php}>" title="<{$smarty.const._THEME_NOTIFICATIONS}>"><img src="<{xoImgUrl icons/users/note_view.png}>"
                                                                                                      alt="<{$smarty.const._THEME_NOTIFICATIONS}>"/></a>
        <a href="<{xoAppUrl /user.php}>" title="<{$smarty.const._THEME_PROFILE}>"><img src="<{xoImgUrl icons/users/profile.png}>"
                                                                                       alt="<{$smarty.const._THEME_PROFILE}>"/></a>
        <{if $xoops_isadmin}>
            <a href="<{xoAppUrl /admin.php}>" title="<{$smarty.const._THEME_ADMINISTRATION}>"><img src="<{xoImgUrl icons/users/configuration.png}>"
                                                                                                   alt="<{$smarty.const._THEME_ADMINISTRATION}>"/></a>
        <{/if}>
        <a href="<{xoAppUrl /user.php op=logout}>" title="<{$smarty.const._THEME_LOGOUT}>"><img src="<{xoImgUrl icons/users/exit.png}>"
                                                                                                alt="<{$smarty.const._THEME_LOGOUT}>"/></a>
    <{/if}>
</div>
