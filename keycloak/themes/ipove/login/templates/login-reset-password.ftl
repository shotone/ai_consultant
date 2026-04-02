<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=true displayMessage=true; section>
    <#if section = "form">
        <form action="${url.loginAction}" method="post" class="ipove-form">
            <p class="ipove-description">
                შეიყვანეთ ელ-ფოსტა და გამოგიგზავნით პაროლის აღდგენის ინსტრუქციას.
            </p>

            <div class="ipove-field">
                <label for="username" class="ipove-label">ელ-ფოსტა</label>
                <input id="username" name="username" type="email" autofocus autocomplete="email"
                       class="ipove-input"
                       placeholder="name@example.com">
            </div>

            <button type="submit" class="ipove-btn ipove-btn-primary">აღდგენა</button>
        </form>

        <div class="ipove-bottom-link">
            <a href="${url.loginUrl}" class="ipove-link">დაბრუნება შესვლაზე</a>
        </div>
    </#if>
</@layout.registrationLayout>
