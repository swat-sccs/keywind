<#import "document.ftl" as document>
<#import "components/atoms/alert.ftl" as alert>
<#import "components/atoms/body.ftl" as body>
<#import "components/atoms/button.ftl" as button>
<#import "components/atoms/card.ftl" as card>
<#import "components/atoms/container.ftl" as container>
<#import "components/atoms/heading.ftl" as heading>
<#import "components/atoms/link.ftl" as link>
<#import "components/atoms/logo.ftl" as logo>
<#import "components/atoms/nav.ftl" as nav>
<#import "components/molecules/locale-provider.ftl" as localeProvider>
<#import "components/molecules/username.ftl" as username>

<#macro
  registrationLayout
  displayInfo=false
  displayMessage=true
  displayRequiredFields=false
  script=""
  showAnotherWayIfPresent=true
>
  <html>
    <head>
      <@document.kw script=script />
    </head>
    <@body.kw>
        <div class="d-flex flex-column min-vh-100">
            <header class="sticky-top mb-4">
                <div style="height: 56px"></div>
            </header>
            <main class="flex-fill">
                <div class="container">
                    <div class="row max-w-xl">
                        <div class="col-md-8 md:pl-8">
                            <#if displayMessage && message?has_content && (message.type != "warning" || !isAppInitiatedAction??)>
                                <@alert.kw color=message.type>
                                    ${kcSanitize(message.summary)?no_esc}
                                </@alert.kw>
                            </#if>
                            <h1 class="text-blue dark:text-white mb-4">Welcome to <strong><@link.kw color="primary" href="https://www.sccs.swarthmore.edu/"><div class="sccs">SCCS</div></@link.kw></strong></h1> <!-- TODO: set up kc account creation flow -->
                            <#nested "form">
                            <#if displayRequiredFields>
                                <p class="text-secondary-600 dark:text-white text-sm">
                                    * ${msg("requiredFields")}
                                </p>
                            </#if>
                            <#if auth?has_content && auth.showTryAnotherWayLink() && showAnotherWayIfPresent>
                                <form action="${url.loginAction}" method="post">
                                    <input name="tryAnotherWay" type="hidden" value="on" />
                                    <@button.kw color="primary" type="submit">
                                        ${msg("doTryAnotherWay")}
                                    </@button.kw>
                                </form>
                            </#if>
                            <#if displayInfo>
                                <#nested "info">
                            </#if>
                        </div>
                    </div>
                </div>
            </main>
            <footer class="footer mt-auto py-3 bg-blue dark:bg-secondary-800">
                <div class="container">
                    <span class="small text-white">© 2024 Swarthmore College Computer Society | <@link.kw href="https://www.sccs.swarthmore.edu/docs/policy" size="small">Usage &amp; Data Policy</@link.kw>
    | Problems with this website? Email&nbsp;<@link.kw href="mailto:staff@sccs.swarthmore.edu" size="small">staff@sccs.swarthmore.edu</@link.kw>.</span>
                </div>
            </footer>
        </div>
        <@nav.kw>
          <#nested "nav">
          <#if realm.internationalizationEnabled && locale.supported?size gt 1>
            <@localeProvider.kw currentLocale=locale.current locales=locale.supported />
          </#if>
        </@nav.kw>
    </@body.kw>
  </html>
</#macro>
