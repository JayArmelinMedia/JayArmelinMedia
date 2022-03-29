<div class="providerLinkingFeedback"></div>

<div class="achieving-dream">
    <h2><span>achieving</span><br> your dream</h2>
</div>
<div class="My-account">
    <h2>{lang key='myaccount'}</h2>
    <div class="star-icon">
      <svg xmlns="https://www.w3.org/2000/svg" role="img" aria-labelledby="undefined-title" width="17" height="17" viewBox="0 0 24 23" class="c-star"><path d="M13.3.8l2.9 5.9 6.6 1c1.2.2 1.6 1.6.8 2.5l-4.7 4.6 1.1 6.5c.2 1.2-1 2.1-2.1 1.5L12 19.7l-5.9 3.1c-1 .6-2.3-.3-2.1-1.5l1.1-6.5-4.7-4.6c-.9-.8-.4-2.3.8-2.5l6.6-1L10.7.8c.6-1.1 2.1-1.1 2.6 0z"></path></svg>
    </div>
    <form method="post" action="{routePath('login-validate')}" role="form"> 
        {include file="$template/includes/flashmessage.tpl"}
        <div class="form-group">
            <input class="form-control" name="username" id="username" tabindex="1" type="text" placeholder="name@example.com" autofocus />
        </div>
        {if $captcha->isEnabled()}
        <div class="form-group">
            {include file="$template/includes/captcha.tpl"}
        </div>
        {/if}   
    
        <div class="form-group">
            <input class="form-control" name="password" id="password" tabindex="2" type="password" autocomplete="off" placeholder="{lang key='clientareapassword'}" />
        </div>
        <input type="submit" tabindex="4" class="btn btn-primary{$captcha->getButtonClass($captchaForm)}" value="{lang key='loginbutton'}" />

    </form>
    <div class="Sign-in">
      <h3>or Sign in with</h3>
      <ul>
        <li><a href="#"><svg xmlns="https://www.w3.org/2000/svg" xmlns:xlink="https://www.w3.org/1999/xlink" width="30" height="30" version="1.1" id="Layer_1" x="0px" y="0px" viewBox="0 0 30 30" enable-background="new 0 0 30 30" xml:space="preserve"><circle cx="15" cy="15" r="15"/><path id="f" fill="#FFFFFF" d="M16.4,23.9v-8.1h2.7l0.4-3.2h-3.1v-2c0-0.9,0.3-1.5,1.6-1.5l1.7,0V6.2c-0.3,0-1.3-0.1-2.4-0.1  c-2.4,0-4.1,1.5-4.1,4.2v2.3h-2.7v3.2h2.7v8.1H16.4z"/></svg></a></li>
        <li><a href="#"><svg xmlns="https://www.w3.org/2000/svg" fill="#000000" viewBox="0 0 30 30" width="30px" height="30px">    <path d="M25.565,9.785c-0.123,0.077-3.051,1.702-3.051,5.305c0.138,4.109,3.695,5.55,3.756,5.55 c-0.061,0.077-0.537,1.963-1.947,3.94C23.204,26.283,21.962,28,20.076,28c-1.794,0-2.438-1.135-4.508-1.135 c-2.223,0-2.852,1.135-4.554,1.135c-1.886,0-3.22-1.809-4.4-3.496c-1.533-2.208-2.836-5.673-2.882-9 c-0.031-1.763,0.307-3.496,1.165-4.968c1.211-2.055,3.373-3.45,5.734-3.496c1.809-0.061,3.419,1.242,4.523,1.242 c1.058,0,3.036-1.242,5.274-1.242C21.394,7.041,23.97,7.332,25.565,9.785z M15.001,6.688c-0.322-1.61,0.567-3.22,1.395-4.247 c1.058-1.242,2.729-2.085,4.17-2.085c0.092,1.61-0.491,3.189-1.533,4.339C18.098,5.937,16.488,6.872,15.001,6.688z"/></svg></a></li>
        <li><a href="#"><svg xmlns="https://www.w3.org/2000/svg" xmlns:xlink="https://www.w3.org/1999/xlink" width="30" height="30" version="1.1" id="Capa_1" x="0px" y="0px" viewBox="0 0 210 210" style="enable-background:new 0 0 210 210;" xml:space="preserve"><path d="M0,105C0,47.103,47.103,0,105,0c23.383,0,45.515,7.523,64.004,21.756l-24.4,31.696C133.172,44.652,119.477,40,105,40  c-35.841,0-65,29.159-65,65s29.159,65,65,65c28.867,0,53.398-18.913,61.852-45H105V85h105v20c0,57.897-47.103,105-105,105  S0,162.897,0,105z"/></svg></a></li>
      </ul>
    </div>
    <div class="Create-account">
      <p>New to <span>ARMELIN MEDIA ?</span> <a href="{$WEB_ROOT}/register.php">{lang key='userLogin.createAccount'}</a></p>
    </div>
    <a href="{routePath('password-reset-begin')}" tabindex="5" class="Forgot-password">{lang key='forgotpw'}</a>     
</div>

  <div class="All-rights">
    <p>© 2020-2024 Armelin Media grOUP, LLC.  All rights reserveD..</p>
  </div>

{include file="$template/includes/linkedaccounts.tpl" linkContext="login" customFeedback=true}