<#macro registrationLayout bodyClass="" displayInfo=false displayMessage=true displayRequiredFields=false>
<!DOCTYPE html>
<html lang="ka">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="noindex, nofollow">
    <title>${msg("loginTitle",(realm.displayName!'ipove.ai'))}</title>
    <link rel="stylesheet" href="${url.resourcesPath}/css/styles.css">
</head>
<body>
    <div class="ipove-wrapper">
        <div class="ipove-card">
            <div class="ipove-logo-section">
                <img src="${url.resourcesPath}/img/logo.svg" alt="ipove.ai" class="ipove-logo">
                <p class="ipove-slogan">ვინც ეძებს — პოულობს</p>
            </div>

            <#if displayMessage && message?has_content>
                <div class="ipove-alert ipove-alert-${message.type}">
                    ${kcSanitize(message.summary)?no_esc}
                </div>
            </#if>

            <#nested "form">

            <#if displayInfo>
                <div class="ipove-info">
                    <#nested "info">
                </div>
            </#if>
        </div>

        <div class="ipove-footer">
            <p>&copy; 2026 ipove.ai — AI გამყიდველი კონსულტანტი</p>
        </div>
    </div>
</body>
</html>
</#macro>
