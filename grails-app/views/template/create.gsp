<!DOCTYPE html>
<html>
	<head>
		<g:set var="entityName" value="${message(code: 'template.label', default: 'Template')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
    <div class="container">
		%{--<a href="#create-template" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
        <div class="navbar">
            <div class="nav">
                <ul class="nav nav-pills">
                    <li><a class="label label-default home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                    <li><g:link class="label label-primary list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                </ul>
            </div>
        </div>
		<div id="create-template" class="content scaffold-create" role="main">
			<h1><g:message code="default.create.label" args="[entityName]" /></h1>
			<g:hasErrors bean="${templateInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${templateInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form id="templateInstance" url="[resource:templateInstance, action:'save']"  class="form-horizontal" role="form" >
					<g:render template="form"/>
					<g:submitButton name="create" form="templateInstance" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
			</g:form>
		</div>
    </div>
	</body>
</html>
