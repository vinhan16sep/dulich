html_modal = `<div class="modal" role="dialog" style="display: block; opacity: 0.5">
        <div class="modal-dialog" style="color:#fff; text-align:center; padding-top:300px;">
            <i class="fa fa-2x fa-spinner fa-spin" aria-hidden="true"></i>
        </div>
    </div>`;
function remove_image(controller, id, image, k, event, slug){
    if(confirm('Chắc chắn xóa ảnh này nếu xóa ảnh bài viết sẽ ở trạng thái chờ duyệt')){
        $.ajax({
            method: "get",
            url: HOSTNAMEADMIN + '/' + controller + '/remove_image_multiple',
            data: {
                id : id, image: image
            },
            beforeSend:function() {
                document.getElementById('encypted_ppbtn_all').innerHTML = html_modal;
            },
            success: function(response){
                alert(response.message);
                document.getElementById('encypted_ppbtn_all').innerHTML = '';
                if(response.reponse.error == '' && response.reponse.error_permission == ''){
                    $(`.row_${k}`).fadeOut();
                    if(response.reponse.avatar != '' && document.getElementById('showavatar') != null){
                        document.getElementById('showavatar').src = HOSTNAME + 'assets/upload/' + controller + '/' + slug + '/' + response.reponse.avatar;
                        document.getElementById('showallimage').querySelector(`[value="${response.reponse.avatar}"]`).setAttribute('class','fa-2x fa fa-check avata');
                        document.getElementById('showallimage').querySelector(`[value="${response.reponse.avatar}"]`).style.color = 'green';
                    }
                    var number_img = document.getElementById('showallimage').querySelectorAll('div')
                    for (var i = 0; i < number_img.length; i++) {
                        number_img[i].setAttribute('class',`col-sm-4 col-xs-6 row_${i}`);
                    }
                }
            },
            error: function(jqXHR, exception){
                console.log(errorHandle(jqXHR, exception));
                if((jqXHR.status == 404 || jqXHR.status == 400) && jqXHR.responseJSON.message != 'undefined'){
                    alert(jqXHR.responseJSON.message);
                }
                document.getElementById('encypted_ppbtn_all').innerHTML = '';
            }
        });
    }
}
function activated_image(controller, id, image, k, event, slug){
    if(confirm('Chắc chắn thay đổi nếu thay đổi bài viết sẽ ở trạng thái trờ duyệt?')){
        if(event.className.search("avata") != '-1'){
            return false;
        }else{
            $.ajax({
                method: "get",
                url: HOSTNAMEADMIN + '/' + controller + '/img_activated',
                data: {
                    id : id, image: image
                },
                beforeSend:function() {
                    document.getElementById('encypted_ppbtn_all').innerHTML = html_modal;
                },
                success: function(response){
                    alert(response.message);
                    document.getElementById('encypted_ppbtn_all').innerHTML = '';
                    if(response.reponse.error_permission == ''){
                        if(document.querySelector(`.avata`) != null){
                            document.querySelector(`.avata`).style.color = 'black';
                            document.querySelector(`.avata`).classList.remove('avata');
                        }
                        if(response.reponse.update_activated == '1'){
                            document.querySelector(`.row_${k} .fa-check`).style.color = 'green';
                            document.querySelector(`.row_${k} .fa-check`).classList.add('avata');
                        }
                        if(document.getElementById('showavatar') != null){
                            document.getElementById('showavatar').src = HOSTNAME + 'assets/upload/' + controller + '/' + slug + '/' + image;
                        }
                    }
                },
                error: function(jqXHR, exception){
                    console.log(errorHandle(jqXHR, exception));
                    if((jqXHR.status == 404 || jqXHR.status == 400) && jqXHR.responseJSON.message != 'undefined'){
                        alert(jqXHR.responseJSON.message);
                    }
                    document.getElementById('encypted_ppbtn_all').innerHTML = '';
                }
            });
        }
    }
}