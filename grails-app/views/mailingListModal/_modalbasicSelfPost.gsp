<div class="modal fade" id="BuildModal${id}" role="dialog">
	<div class="modal-dialog">
		<div class="modal-content">
    			<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">x</button>
					<h3>${title }</h3>
				</div>
				<div class="modal-body">
					<div class="form-group">
						<g:render template="/${controller }/${callPage }"  model="[ccontroller: controller, formId:formId]"/>
					</div>
				</div>
		
				
		</div>
	</div>
</div>
				
<g:javascript>

	$('#${formId}').submit(function() {
 		$.ajax({ 
        	data: $(this).serialize(), 
        	type: $(this).attr('method'),
        	url: $(this).attr('action'), 
        	success: function(response) { 
            	$('#${formId}').html(response); 
            	${controller}CloseModal(); 
        	}
    	});
    	return false; 
	});		
	
	function ${controller}CloseModal() {
		$('#BuildModal${id}').dialog().dialog('close');
  		$(".modal-backdrop").hide();
  		$('#${divId}1').hide().append(myClone${divId});
        
		<g:if test="${!disablecheck.equals('true') }">
			var controller="${controller }";
			var divId="${divId }";
			$.get('${createLink(controller:"MailingListEmail", action: "getAjaxCall")}?ccontroller='+controller+'&divId='+divId,function(data){
				$('#${divId}').hide().html(data).fadeIn('slow');
			});
		</g:if>	
	}

</g:javascript>