
$('#is_top').change(function(){
	if($(this).is(':checked')){
		var url = $(this).data('url');
		var id = $(this).data('id');
        var value = ($("#cuisine_category_id").val() == 0) ? '' : $("#cuisine_category_id").val();
		var region_id = ($("#region_id").val() == 0) ? '' : $("#region_id").val();
		console.log(value);
		$.ajax({
            method: "get",
            url: url,
            data: {
            	id : id, value: value, region_id:region_id
            },
            success: function(response){
                if(response.isExisted == false){
                	$('.check_top_error').text(response.message);
                	$('#is_top').prop('checked',false);
                }
            },
            error: function(jqXHR, exception){
                console.log(errorHandle(jqXHR, exception));
                if(jqXHR.status == 404 && jqXHR.responseJSON.message != 'undefined'){
                    alert(jqXHR.responseJSON.message);
                    location.reload();
                }
            }
        });
	}
});
$('#cuisine_category_id, #region_id').change(function(){
	var url = $(this).data('url');
	var id = $(this).val();
	$.ajax({
        method: "get",
        url: url,
        data: {
        	id : id
        },
        success: function(response){
        	$('.check_top_error').text('');
            $('#is_top').prop('checked',false);
            if(response.isExisted == false){
            	$("#box_is_top").fadeOut();
            }else{
            	$("#box_is_top").fadeIn();
            }
        },
        error: function(jqXHR, exception){
            console.log(errorHandle(jqXHR, exception));
            if(jqXHR.status == 404 && jqXHR.responseJSON.message != 'undefined'){
                alert(jqXHR.responseJSON.message);
                location.reload();
            }
        }
    });
});