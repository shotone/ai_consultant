<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=true; section>
    <#if section = "form">
        <form action="${url.registrationAction}" method="post" class="ipove-form">
            <div class="ipove-field">
                <label for="firstName" class="ipove-label">სახელი</label>
                <input id="firstName" name="firstName" type="text"
                       value="${(register.formData.firstName!'')}"
                       class="ipove-input"
                       placeholder="სახელი">
            </div>

            <div class="ipove-field">
                <label for="lastName" class="ipove-label">გვარი</label>
                <input id="lastName" name="lastName" type="text"
                       value="${(register.formData.lastName!'')}"
                       class="ipove-input"
                       placeholder="გვარი">
            </div>

            <div class="ipove-field">
                <label for="email" class="ipove-label">ელ-ფოსტა</label>
                <input id="email" name="email" type="email" autocomplete="email"
                       value="${(register.formData.email!'')}"
                       class="ipove-input"
                       placeholder="name@example.com">
            </div>

            <div class="ipove-field">
                <label for="password" class="ipove-label">პაროლი</label>
                <input id="password" name="password" type="password" autocomplete="new-password"
                       class="ipove-input"
                       placeholder="მინიმუმ 8 სიმბოლო">
            </div>

            <div class="ipove-field">
                <label for="password-confirm" class="ipove-label">პაროლი ხელახლა</label>
                <input id="password-confirm" name="password-confirm" type="password" autocomplete="new-password"
                       class="ipove-input"
                       placeholder="გაიმეორეთ პაროლი">
            </div>

            <button type="submit" class="ipove-btn ipove-btn-primary">რეგისტრაცია</button>
        </form>

        <div class="ipove-bottom-link">
            <span>უკვე გაქვთ ანგარიში?</span>
            <a href="${url.loginUrl}" class="ipove-link">შესვლა</a>
        </div>
    </#if>
</@layout.registrationLayout>
