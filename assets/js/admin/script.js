switch(window.location.origin){
    case 'http://dulich.vn':
        var HOSTNAMEADMIN = 'http://dulich.vn/admin';
        break;
    default:
        var HOSTNAMEADMIN = 'http://localhost/dulich/admin';
        
}
function logout() {
    window.location.href = HOSTNAMEADMIN + '/user/logout';
}

$('.btn-remove').click(function(event){
    event.preventDefault();
    var id = $(this).data('id');
    var url = $(this).data('url');
    var name = $(this).data('name');
    if (confirm(`Chắc chắn xóa ${name}?`)) {
        $.ajax({
            method: "get",
            url: url,
            data: {
                id : id
            },
            success: function(response){
                if ( response.status == 200 && response.isExisted == true ) {
                    $( '.remove-' + id ).fadeOut();
                }
                if ( response.status == 200 && response.isExisted == false ) {
                    alert(response.message);
                }
            },
            error: function(jqXHR, exception){
                if(jqXHR.status == 404 && jqXHR.responseJSON.message != 'undefined'){
                    alert(jqXHR.responseJSON.message);
                    location.reload();
                }else{
                    console.log(errorHandle(jqXHR, exception));
                }
            }
        });
    }
    
});

var default_value = '';

$('#region_id').change(function(){
    var region_id = $(this).val();
    default_value = $(this).val();
    var url = $(this).data('url');
    if (default_value != '') {
        $.ajax({
            method: "get",
            url: url,
            data: {
                region_id : region_id
            },
            success: function(response){
                var html = '';
                response.province.forEach(function(item, index){
                    html += '<option value="' + item.id + '">' + item.title_vi + '</option>';
                });

                $('#province_id').html(html);
            },
            error: function(jqXHR, exception){
                if(jqXHR.status == 404 && jqXHR.responseJSON.message != 'undefined'){
                    alert(jqXHR.responseJSON.message);
                    location.reload();
                }else{
                    console.log(errorHandle(jqXHR, exception));
                }
            }
        });
    }else{
        $('#province_id').html('<option value="" selected="selected">Chọn vùng miền trước</option>');
    }
});

//Remove image
$('.remove-image').click(function(){
    var url = $(this).data('url');
    var id = $(this).data('id');
    var image = $(this).data('image');
    var key = $(this).data('key');
    if (confirm("Chắc chắn xóa ảnh này?")) {
        $.ajax({
            method: "get",
            url: url,
            data: {
                id : id, image : image
            },
            success: function(response){
                if ( response.status == 200 && response.isExisted == true ) {
                    $( '.remove-image-' + key ).fadeOut();
                }
                if ( response.status == 200 && response.isExisted == false ) {
                    alert('Không thể xóa, do ảnh đang được chọn làm avatar');
                }
            },
            error: function(jqXHR, exception){
                if(jqXHR.status == 404 && jqXHR.responseJSON.message != 'undefined'){
                    alert(jqXHR.responseJSON.message);
                    location.reload();
                }else{
                    console.log(errorHandle(jqXHR, exception));
                }
            }
        });
    }
});

// change avatar
$('.common-image').on('click', '.active-avatar', function(){
    var url = $(this).data('url');
    var id = $(this).data('id');
    var image = $(this).data('image');
    var avatar = $( '.common-avatar #avatar' ).data('image');
    var avatar_path = $( '.common-avatar #avatar' ).attr('src');
    var selector = $(this)
    if (confirm("Chắc chắn chọn ảnh này làm avatar?")) {
        $.ajax({
            method: "get",
            url: url,
            data: {
                id : id, image : image
            },
            success: function(response){
                if ( response.status == 200 && response.isExisted == true ) {
                    $( '.common-avatar #avatar' ).attr('src', response.image_path);
                    $( '.common-avatar #avatar' ).data('image', image);
                    selector.prev('img').attr('src', avatar_path);
                    selector.data('image', avatar);
                }
            },
            error: function(jqXHR, exception){
                if(jqXHR.status == 404 && jqXHR.responseJSON.message != 'undefined'){
                    alert(jqXHR.responseJSON.message);
                    location.reload();
                }else{
                    console.log(errorHandle(jqXHR, exception));
                }
            }
        });
    }
});

// active
$('.btn-active').click(function(){
    var url = $(this).data('url');
    var id = $(this).data('id');
    if (confirm("Chắc chắn duyệt bài viết?")) {
        $.ajax({
            method: "get",
            url: url,
            data: {
                id : id
            },
            success: function(response){
                if (response.status == 200 && response.isExisted) {
                    $('.is-active-' + id).html('<span class="label label-success">Đã duyệt</span>');
                }
            },
            error: function(jqXHR, exception){
                if(jqXHR.status == 404 && jqXHR.responseJSON.message != 'undefined'){
                    alert(jqXHR.responseJSON.message);
                    location.reload();
                }else{
                    console.log(errorHandle(jqXHR, exception));
                }
            }
        });
    }
});

// deactive
$('.btn-deactive').click(function(){
    var url = $(this).data('url');
    var id = $(this).data('id');
    if (confirm("Chắc chắn tắt bài viết?")) {
        $.ajax({
            method: "get",
            url: url,
            data: {
                id : id
            },
            success: function(response){
                if (response.status == 200 && response.isExisted) {
                    $('.is-active-' + id).html('<span class="label label-warning">Chờ duyệt</span>');
                }
                if (response.status == 200 && response.isExisted == false) {
                    alert(response.message);
                }
            },
            error: function(jqXHR, exception){
                if(jqXHR.status == 404 && jqXHR.responseJSON.message != 'undefined'){
                    alert(jqXHR.responseJSON.message);
                    location.reload();
                }else{
                    console.log(errorHandle(jqXHR, exception));
                }
            }
        });
    }
});

// $('#is_top').change(function(){
//     var url = $(this).data('url');
//     if (confirm("Chọn bài viết này lên TOP?")) {
//         $.ajax({
//             method: "get",
//             url: url,
//             success: function(response){
//                 console.log(response);
//             },
//             error: function(jqXHR, exception){
//                 if(jqXHR.status == 404 && jqXHR.responseJSON.message != 'undefined'){
//                     alert(jqXHR.responseJSON.message);
//                     location.reload();
//                 }else{
//                     console.log(errorHandle(jqXHR, exception));
//                 }
//             }
//         });
//     }
// });


//old code
$(window).scroll(function () {
    //if you hard code, then use console
    //.log to determine when you want the
    //nav bar to stick.
    'use strict';
    if ($(window).scrollTop() > 150) {
        $('.nav_side').addClass('nav_side_fix');
    }
    if ($(window).scrollTop() < 150) {
        $('.nav_side').removeClass('nav_side_fix');
    }
});
// end old code