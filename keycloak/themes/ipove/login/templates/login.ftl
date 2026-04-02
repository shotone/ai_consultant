<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=true; section>
    <#if section = "form">
        <form action="${url.loginAction}" method="post" class="ipove-form">
            <div class="ipove-field">
                <label for="username" class="ipove-label">ელ-ფოსტა</label>
                <input id="username" name="username" type="text" autofocus autocomplete="email"
                       value="${(login.username!'')}"
                       class="ipove-input"
                       placeholder="name@example.com">
            </div>

            <div class="ipove-field">
                <div class="ipove-label-row">
                    <label for="password" class="ipove-label">პაროლი</label>
                    <#if realm.resetPasswordAllowed>
                        <a href="${url.loginResetCredentialsUrl}" class="ipove-link-small">დაგავიწყდა?</a>
                    </#if>
                </div>
                <input id="password" name="password" type="password" autocomplete="current-password"
                       class="ipove-input"
                       placeholder="••••••••">
            </div>

            <#if realm.rememberMe && !usernameEditDisabled??>
                <div class="ipove-checkbox-row">
                    <input id="rememberMe" name="rememberMe" type="checkbox"
                           class="ipove-checkbox"
                           <#if login.rememberMe??>checked</#if>>
                    <label for="rememberMe" class="ipove-checkbox-label">დამახსოვრება</label>
                </div>
            </#if>

            <button type="submit" class="ipove-btn ipove-btn-primary">შესვლა</button>
        </form>

        <#if realm.password && social.providers??>
            <div class="ipove-divider">
                <span>ან</span>
            </div>
            <div class="ipove-social">
                <#list social.providers as p>
                    <a href="${p.loginUrl}" class="ipove-btn ipove-btn-social">
                        ${p.displayName}-ით შესვლა
                    </a>
                </#list>
            </div>
        </#if>

        <#if realm.registrationAllowed>
            <div class="ipove-bottom-link">
                <span>არ გაქვთ ანგარიში?</span>
                <a href="${url.registrationUrl}" class="ipove-link">რეგისტრაცია</a>
            </div>
        </#if>
    </#if>
</@layout.registrationLayout>
