		
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'mailingList.css')}" type="text/css">
		<g:set var="entityName" value="${message(code: 'mailingList.label', default: 'MailingList')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<g:render template="/mailingList/mainmenu" />
		<div class=clearall></div>
<div id="the_box" role="complementary">
		
	
		<ul><li><div class="internalbtn">		
		<div id="scheduler-logo"><div class=app-detail><h4>Schedule Email</h4>
		</div></div>
				<div class="internalbtn"><g:link controller="mailingListEmail" class="list" action="index"><g:message code="Email a person" args="[entityName]" /></g:link></div>
				<div class="internalbtn"><g:link controller="mailingListEmail" class="list" action="contactclients"><g:message code="Contact Clients" args="[entityName]" /></g:link></div>
			<div class="internalbtn"><g:link controller="MailingListSchedule" class="list" action="br" params="${[s:'oa',viewtype:'na']}"><g:message code="Incomplete" args="[entityName]" /></g:link></div>
			<div class="internalbtn"><g:link controller="MailingListSchedule" class="list" action="br" params="${[s:'od',viewtype:'na']}"><g:message code="Completed" args="[entityName]" /></g:link></div>
				
				
		<div id="templates-logo"><div class=app-detail><h4>Templates</h4>
		</div></div>
			<div class="internalbtn"><g:link controller="MailingListTemplates" class="create" action="create"><g:message code="Create Email Template" args="[entityName]" /></g:link></div>
			<div class="internalbtn"><g:link controller="MailingListTemplates" class="create" action="loadtemplate"><g:message code="Create From existing Template" args="[entityName]" /></g:link></div>
			<div class="internalbtn"><g:link controller="MailingListTemplates" class="list" action="list"><g:message code="List Email Templates" args="[entityName]" /></g:link></div>
		
		
		<div class="clearall"></div>
	
		<div id="attachment-logo"><div class=app-detail><h4>Email Attachments</h4>
		</div></div>
			<div class="internalbtn"><g:link controller="MailingListAttachments" class="create" action="create"><g:message code="Add Attachments" args="[entityName]" /></g:link></div>
			<div class="internalbtn"><g:link controller="MailingListAttachments" class="list" action="list"><g:message code="List Attachments" args="[entityName]" /></g:link></div>
		</div></li></ul>
				
					
		</div>
		
		
		
		
		<div id="the_box" role="complementary">

	
	
	<ul><li><div class="internalbtn">		
	
		<div id="mailinglistcat-logo"><div class=app-detail><h4>Categories (Binds to Email Address)</h4></div></div>
			<div class="internalbtn"><g:link controller="MailingListCategories" class="create" action="create"><g:message code="Create Category" args="[entityName]" /></g:link></div>
			<div class="internalbtn"><g:link controller="MailingListCategories" class="list" action="list"><g:message code="List Categories" args="[entityName]" /></g:link></div>
			<div class="clearall"></div>
	<div id="csv-logo"><div class=app-detail><h4>CSV Contacts Uploader</h4></div></div>
		<div class="internalbtn"><g:link controller="MailingListUploader" class="list" action="index"><g:message code="Upload CSV" args="[entityName]" /></g:link></div>
		<div class="clearall"></div>
		<div id="mailinglistsenders-logo"><div class=app-detail><h4>Configure Senders (From)</h4></div></div>
			<div class="internalbtn"><g:link controller="MailingListSenders" class="create" action="create"><g:message code="Create Email Sender" args="[entityName]" /></g:link></div>
			<div class="internalbtn"><g:link controller="MailingListSenders" class="list" action="list"><g:message code="List Email Senders" args="[entityName]" /></g:link></div>
			<div class="clearall"></div>
			<div id="mailinglist-logo"><div class=app-detail><h4>MailingList (All Email Addresses)</h4></div></div>
			<div class="internalbtn"><g:link controller="MailingList" class="create" action="create"><g:message code="Create Email" args="[entityName]" /></g:link></div>
			<div class="internalbtn"><g:link controller="MailingList" class="list" action="list"><g:message code="List Emails" args="[entityName]" /></g:link></div>
		</div></li></ul>

	
</div>
</body>
</html>
	
