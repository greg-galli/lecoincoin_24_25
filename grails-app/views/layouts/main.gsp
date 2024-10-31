<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle default="Grails"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico"/>

    <asset:stylesheet src="application.css"/>

    <g:layoutHead/>
</head>

<body>

<nav id="header" class="navbar navbar-expand-lg navbar-dark navbar-static-top" role="navigation">
    <div class="container-fluid">
        <a class="navbar-brand" href="/#"><asset:image src="grails.svg" alt="Grails Logo"/></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarContent" aria-controls="navbarContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" aria-expanded="false" style="height: 0.8px;" id="navbarContent">
            <ul class="nav navbar-nav ml-auto">
                <sec:ifLoggedIn>
                    <g:link controller="logout">Logout</g:link>
                </sec:ifLoggedIn>
                <sec:ifNotLoggedIn>
                    <g:link controller="login" action="auth">Login</g:link>
                </sec:ifNotLoggedIn>
            </ul>
        </div>
    </div>
</nav>

<div id="menu">
    <ul>
        <g:link controller="user"><li>User</li></g:link>
        <g:link controller="category"><li>Categories</li></g:link>
        <g:link controller="saleAd"><li>SaleAds</li></g:link>
        <g:link controller="message"><li>Messages</li></g:link>
    </ul>

</div>

<div id="content">
    <g:layoutBody/>
</div>

<asset:javascript src="application.js"/>

</body>
</html>
