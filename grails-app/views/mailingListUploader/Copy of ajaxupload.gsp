<html>
	<head>
	
			<meta name='layout' content="mailingListMini"/>
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'mailingList.css')}" type="text/css">
		
    	<g:set var="entityName" value="${message(code: 'MailingListSchedule.label', default: 'MailingList Schedule')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body >
	
	
	
	
<p> You can upload two types of CSV files which are your exported outlook contact lists. 
</p>

<p><b>1> 2 field CSV file</b><br/>
<b>E-mail Display Name,E-mail Address</b><br>
The fields must be in the above format and the first line must be a heading since it ignores the first line of the csv file
</p>
<br/><br/>

<p><b>2> 7 field CSV file</b><br/>
<b>"Title","First Name","Middle Name","Last Name","Categories","E-mail Address","E-mail Display Name" </b><br>

The fields must be in the above format and the first line must be a heading since it ignores the first line of the csv file

</p>

<g:uploadForm  name="${params?.formId }" id="1" id="1" controller="MailingListUploader" action="upload">
<g:hiddenField name="ajax" value="yes"/>
<div class="fieldcontain ${hasErrors(bean: params, field: 'catname', 'error')} ">
	<label for="catname">
		<g:message code="manager.label" default="Mailing List Name" />
	</label>
	<input type="text" name="catname">
	</div>
	
	<div class="fieldcontain ${hasErrors(bean: params, field: 'file', 'error')} ">
	<label for="file">
		<g:message code="manager.label" default="Choose File" />
	</label>
    <input type="file" name="file">
    </div>
    <g:submitButton name="upload" value="Upload" />
</g:uploadForm>

${params.formId } --  ${params.controller }
			
<g:javascript>


	$('#MailingListUploader').submit(function() {
 		$.ajax({ 
        	data: $(this).serialize(), 
        	type: $(this).attr('method'),
        	url: $(this).attr('action'), 
        	success: function(response) { 
            	$('#MailingListUploader').html(response); 
            	${controller}CloseModal(); 
        	}
    	});
    	return false; 
	});		
	function ${controller}CloseModal() {
		$('#BuildModal${id}').dialog().dialog('close');
  		$(".modal-backdrop").hide();
  		<g:if test="${!disablecheck.equals('true') }">
			var controller="${controller }";
			var divId="${divId }";
			$.get('${createLink(controller:"MailingListEmail", action: "getAjaxCall")}?ccontroller='+controller+'&divId='+divId,function(data){
				$('#${divId}').hide().html(data).fadeIn('slow');
			});
		</g:if>	
	}
</g:javascript>



</body>
</html>


