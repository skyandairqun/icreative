<html>
<head>
    <meta name="layout" content="main">
    <title>Administror Console Login in</title>
</head>

<body>

<div id="create-menu" class="content scaffold-create" role="main">

   <div class="clear"></div>

    <div class="contact_form">
        <div class="form_subtitle">Login in & Sign up</div>
        <auth:ifLoggedIn>
        <table width="75%">
            <tr><td> You are currently logged in as: <auth:user/></td></tr>
            <tr><td> <auth:form authAction="logout" success="[controller: 'authentication', action: 'index']"
                                error="[controller: 'authentication', action: 'index']">
                <g:actionSubmit value="Log out" class="btnsubmit"/>
            </auth:form></td></tr>
        </table>





            <br>

            <div style="padding: 0 0 0 48px;" role="navigation">
                <h2>Maintenance functions:</h2>
                <ul>
                    <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName }}">

                        <g:if test='${c.name != "Authentication" && c.name != "Base" && c.name != "Paypal" && c.name != "OpenFileManagerConnector"}'>
                            <li class="controller"><g:link controller="${c.logicalPropertyName}">${c.name}</g:link></li>
                        </g:if>

                    </g:each>
                </ul>
            </div>

        </auth:ifLoggedIn>
        <auth:ifUnconfirmed>
            You've registered but we're still waiting to confirm your account. <g:link
                action="reconfirm">Click here to send a new confirmation request</g:link> if you missed it the first time.
        </auth:ifUnconfirmed>
        <auth:ifNotLoggedIn>
            <g:if test="${flash.authenticationFailure}">
                Sorry but your login/signup failed - reason: <g:message
                    code="authentication.failure.${flash.authenticationFailure.result}"/><br/>
            </g:if>

            <p>You are not logged in. Please log in or sign up:</p>

            <h2>Log in</h2>
            <table  width="75%">
            <auth:form authAction="login" success="[controller: 'authentication', action: 'index']"
                       error="[controller: 'authentication', action: 'index']">

                    <tr>
                        <td width="120">User ID:</td>
                        <td><g:textField name="login" value="${flash.loginForm?.login?.encodeAsHTML()}" size="50"/>
                        <g:hasErrors bean="${flash.loginFormErrors}" field="login"><g:renderErrors
                                bean="${flash.loginFormErrors}" as="list" field="login"/></g:hasErrors>
                        </td>
                    </tr>
                    <tr>
                        <td>Password:</td>
                        <td><input name="password" value="" type="password" size="50"/><br/>
                            <g:hasErrors bean="${flash.loginFormErrors}" field="password"><g:renderErrors
                                    bean="${flash.loginFormErrors}" as="list" field="password"/></g:hasErrors>
                        </td>
                    </tr>
                    <tr><td colspan="2"><g:actionSubmit class="btnsubmit" value="Log in"/></td></tr>

            </auth:form>
            </table>
        </auth:ifNotLoggedIn>
        <br>
        <auth:ifLoggedIn>

            <h2>Sign up</h2>
            <auth:form authAction="signup"
                       success="[controller: 'authentication', action: 'index']"
                       error="[controller: 'authentication', action: 'index']">
                <table width="75%">
                    <tr>
                        <td width="120">
                            User ID:</td><td><g:textField name="login"
                                                          value="${flash.signupForm?.login?.encodeAsHTML()}"
                                                          size="50"/><br/>
                        <g:hasErrors bean="${flash.signupFormErrors}" field="login"><g:renderErrors
                                bean="${flash.signupFormErrors}" as="list" field="login"/></g:hasErrors>
                    </td></tr>

                    <tr>
                        <td>
                            Email:</td><td><g:textField name="email"
                                                        value="${flash.signupForm?.email?.encodeAsHTML()}"
                                                        size="50"/><br/>
                        <g:hasErrors bean="${flash.signupFormErrors}" field="email"><g:renderErrors
                                bean="${flash.signupFormErrors}" as="list" field="email"/></g:hasErrors>
                    </td></tr>
                    <tr>
                        <td>
                            Password:</td><td><input name="password" value="" type="password" size="50"/><br/>
                        <g:hasErrors bean="${flash.signupFormErrors}" field="password"><g:renderErrors
                                bean="${flash.signupFormErrors}" as="list" field="password"/></g:hasErrors>
                    </td></tr>
                    <tr>
                        <td>
                            Confirm password:</td><td><input name="passwordConfirm" value="" type="password"
                                                             size="50"/><br/>
                        <g:hasErrors bean="${flash.signupFormErrors}" field="passwordConfirm"><g:renderErrors
                                bean="${flash.signupFormErrors}" as="list" field="passwordConfirm"/></g:hasErrors></td>
                    </tr>
                    <tr><td colspan="2"><g:actionSubmit class="btnsubmit" value="Sign up"/></td></tr>
                </table>
            </auth:form>

        </auth:ifLoggedIn>

    </div>
</div>

</body>
</html>