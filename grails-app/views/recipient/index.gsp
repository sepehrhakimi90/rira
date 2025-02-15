

<%@ page import="mt.omid.rira.ntfy.Recipient" %>
<!DOCTYPE html>
<html>
	<head>
		<g:set var="entityName" value="${message(code: 'recipient.label', default: 'Recipient')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
    <div class="container">
		<br/>
        <div class="navbar">
            <div class="nav">
                <ul class="nav nav-pills">
                    <li><a class="label label-default home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                    <li><g:link class="label label-primary create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
                </ul>
            </div>
        </div>
		<div id="list-recipient" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<table class="table table-bordered table-striped">
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'recipient.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'recipient.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="phone" title="${message(code: 'recipient.phone.label', default: 'Phone')}" />
					
						<g:sortableColumn property="instantMessaging" title="${message(code: 'recipient.instantMessaging.label', default: 'Instant Messaging')}" />
					
						
						<th></th>
						
						
						<th></th>
						
					</tr>
				</thead>
				<tbody>
				<g:each in="${recipientInstanceList}" status="i" var="recipientInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${recipientInstance.id}">${fieldValue(bean: recipientInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: recipientInstance, field: "email")}</td>
					
						<td>${fieldValue(bean: recipientInstance, field: "phone")}</td>
					
						<td>${fieldValue(bean: recipientInstance, field: "instantMessaging")}</td>
					
					
						<td class="text-center">
							<g:link action="clone" role="button" resource="${recipientInstance}" data-toggle="tooltip" title="Clone" class="btn btn-info"><span class="glyphicon glyphicon-copy"></span></g:link>
						</td>
					
					
						<td class="text-center">
						<g:form url="[resource:recipientInstance, action:'delete']" method="DELETE">
							<button type="submit" data-toggle="tooltip" title="Delete" class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure to delete this ?')}');" ><span class="glyphicon glyphicon-trash"></span></button>
							%{--<g:a role="button" data-toggle="tooltip" title="Delete" class="btn btn-danger" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure to delete this ?')}');"><span class="glyphicon glyphicon-trash"></span></a>--}%
						</g:form>
						</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<ul class="pagination">
				<g:paginate total="${recipientInstanceCount ?: 0}" />
			</ul>
		</div>
    </div>
	</body>
</html>
