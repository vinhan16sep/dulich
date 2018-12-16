switch(window.location.origin){
    case 'http://dulich.vn':
        var HOSTNAME = 'http://dulich.vn/';
        break;
    default:
        var HOSTNAME = 'http://localhost/dulich/';
}
if(document.querySelectorAll('[id="realDPX-min"]').length > 0){
    for (var m = 0; m < document.querySelectorAll('[id="realDPX-min"]').length; m++) {
        var $min = document.querySelectorAll('[id="realDPX-min"]')[m];
        $min.DatePickerX.init({
            mondayFirst: true,
            format: 'dd/mm/yyyy',
            minDate    : new Date(1900, 8, 13),
            maxDate    : new Date(9999, 8, 13),
        });
    }
}
let [list_color,color_product] = ['',JSON.parse(document.getElementById('color_product').value)];
{
    "use strict";
    tinymce.init({
        selector: ".tinymce-area",
        theme: "modern",
        block_formats: 'Paragraph=p;Header 1=h1;Header 2=h2;Header 3=h3',
        height: 300,
        relative_urls: false,
        remove_script_host: false,
        // forced_root_block : false,
        plugins: [
            "advlist autolink link image lists charmap print preview hr anchor pagebreak spellchecker",
            "searchreplace wordcount visualblocks visualchars code fullscreen insertdatetime media nonbreaking",
            "save table contextmenu directionality emoticons template paste textcolor responsivefilemanager"
        ],
        toolbar: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | l      ink image | responsivefilemanager | print preview media fullpage | forecolor backcolor emoticons",
        style_formats: [
            {title: "Bold text", inline: "b"},
            {title: "Red text", inline: "span", styles: {color: "#ff0000"}},
            {title: "Red header", block: "h1", styles: {color: "#ff0000"}},
            {title: "Example 1", inline: "span", classes: "example1"},
            {title: "Example 2", inline: "span", classes: "example2"},
            {title: "Table styles"},
            {title: "Table row 1", selector: "tr", classes: "tablerow1"}
        ],
        external_filemanager_path: HOSTNAME + "filemanager/",
        filemanager_title: "Responsive Filemanager",
        external_plugins: {"filemanager": HOSTNAME + "filemanager/plugin.min.js"}
    });
}
function to_slug(str,space="-"){
    str = str.toLowerCase();

    str = str.replace(/(à|á|ạ|ả|ã|â|ầ|ấ|ậ|ẩ|ẫ|ă|ằ|ắ|ặ|ẳ|ẵ)/g, 'a');
    str = str.replace(/(è|é|ẹ|ẻ|ẽ|ê|ề|ế|ệ|ể|ễ)/g, 'e');
    str = str.replace(/(ì|í|ị|ỉ|ĩ)/g, 'i');
    str = str.replace(/(ò|ó|ọ|ỏ|õ|ô|ồ|ố|ộ|ổ|ỗ|ơ|ờ|ớ|ợ|ở|ỡ)/g, 'o');
    str = str.replace(/(ù|ú|ụ|ủ|ũ|ư|ừ|ứ|ự|ử|ữ)/g, 'u');
    str = str.replace(/(ỳ|ý|ỵ|ỷ|ỹ)/g, 'y');
    str = str.replace(/(đ)/g, 'd');

    str = str.replace(/([^0-9a-z-\s])/g, '');

    str = str.replace(/(\s+)/g, space);

    str = str.replace(/^-+/g, '');

    str = str.replace(/-+$/g, '');

    // return
    return str;
}
function title_change(ev){
    document.querySelector('[name="slug_shared"]').value = to_slug(ev.value);
    if(ev.value.trim() != ''){
        document.querySelector('[name="slug_shared"]').closest('.required').querySelector('span.help-block').classList.add("hidden");
        document.querySelector('[name="slug_shared"]').closest('.required').classList.remove("has-error");
    }else{
        document.querySelector('[name="slug_shared"]').closest('.required').classList.add("has-error");
        document.querySelector('[name="slug_shared"]').closest('.required').querySelector('span.help-block').classList.remove("hidden");
    }
}
function check_validate_default(ev){
    let [html, count, id_parent] = ['', 0, ''];
    for (var i = 0; i < document.querySelectorAll('div.form-group.required').length; i++) {
        let type = document.querySelectorAll('div.form-group.required')[i].querySelector('label').getAttribute('for');
        if(type == 'radio' || type == 'checkbox'){
            if(document.querySelectorAll('div.form-group.required')[i].querySelectorAll('input:checked').length == 0){
                document.querySelectorAll('div.form-group.required')[i].classList.add("has-error");
                document.querySelectorAll('div.form-group.required')[i].setAttribute('oninput',`check_validate(this,'${type}')`);
                document.querySelectorAll('div.form-group.required')[i].querySelector('span').classList.remove("hidden");
            }
        }else if(type == 'textarea'){
            if(document.querySelectorAll('div.form-group.required')[i].querySelector('textarea').value == ''){
                document.querySelectorAll('div.form-group.required')[i].classList.add("has-error");
                document.querySelectorAll('div.form-group.required')[i].setAttribute('oninput',`check_validate(this,'${type}')`);
                document.querySelectorAll('div.form-group.required')[i].querySelector('span').classList.remove("hidden");
            }
        }else if(type == 'select'){
            if(document.querySelectorAll('div.form-group.required')[i].querySelector('select').value == ''){
                document.querySelectorAll('div.form-group.required')[i].classList.add("has-error");
                document.querySelectorAll('div.form-group.required ')[i].querySelector('select').setAttribute('onchange',`check_validate(this,'${type}')`);
                document.querySelectorAll('div.form-group.required')[i].querySelector('span').classList.remove("hidden");
            }
        }else if(type == 'date'){
            if(document.querySelectorAll('div.form-group.required')[i].querySelector('input').value == ''){
                document.querySelectorAll('div.form-group.required')[i].classList.add("has-error");
                document.querySelectorAll('div.form-group.required')[i].querySelector('input').setAttribute('onchange',`check_validate(this,'${type}')`);
                document.querySelectorAll('div.form-group.required')[i].querySelector('span.help-block').classList.remove("hidden");
            }
        }else if(type == 'text'){
            if(document.querySelectorAll('div.form-group.required')[i].querySelector('input').value == ''){
                document.querySelectorAll('div.form-group.required')[i].classList.add("has-error");
                document.querySelectorAll('div.form-group.required')[i].setAttribute('oninput',`check_validate(this,'${type}')`);
                document.querySelectorAll('div.form-group.required')[i].querySelector('span.help-block').classList.remove("hidden");
            }
        }
    }
    //check title required if is require => focus
    if(document.querySelectorAll(`.form-horizontal .has-error`).length > 0){
        let [type, tag] = [document.querySelectorAll('div.form-group.has-error')[0].querySelector('label').getAttribute('for'), ''];
        if(type == 'radio' || type == 'checkbox' || type == 'date' || type == 'text'){
            tag = 'input';
        }else{
            tag = type;
        }
        id_tab = document.querySelectorAll('.form-horizontal .has-error')[0].closest('[class^="tab-pane"]').id;
        if(id_tab != 'home' && id_tab != 'add-product'){
            id_parent = document.querySelectorAll('.form-horizontal .has-error')[0].closest('[class^="tab-pane"]').id;
            document.querySelector(`.form-horizontal .nav.nav-justified li.active a`).setAttribute("aria-expanded","false");
            document.querySelector(`.form-horizontal .nav.nav-justified li.active`).classList.remove("active");
            document.querySelector(`.form-horizontal .tab-content.language .tab-pane.active`).setAttribute("class","tab-pane fade");
            document.querySelector(`.form-horizontal .has-error`).closest('[class^="tab-pane"]').setAttribute("class","tab-pane fade active in");
            document.querySelector(`.form-horizontal a[href="#${id_parent}"]`).setAttribute("aria-expanded","true");
            document.querySelector(`.form-horizontal a[href="#${id_parent}"]`).parentElement.classList.add("active");
            document.querySelectorAll(`.form-horizontal .has-error ${tag}`)[0].focus();
        }else{
            document.querySelectorAll(`.form-horizontal .has-error ${tag}`)[0].focus();
        }
        return false;
    }else{
        document.getElementById('home').setAttribute('class','tab-pane fade');
        document.getElementById('add-product').setAttribute('class','tab-pane fade');
        document.querySelector(`#${ev.getAttribute('aria-controls')}`).setAttribute('class','tab-pane fade in active');
        document.querySelectorAll('.nav-product')[0].setAttribute('style','display:block');
        document.querySelectorAll('.nav-product')[1].setAttribute('style','display:block');
        ev.closest('.nav-product').setAttribute('style','display:none');
    }
}
function submit_shared(ev){
    let data = new FormData(document.querySelector('form.form-horizontal'));
    data.append('csrf_sitecom_token', document.getElementById('csrf_sitecom_token').value);
    for (var i = 0; i < document.querySelectorAll('textarea.tinymce-area').length; i++) {
        data.append(document.querySelectorAll('textarea.tinymce-area')[i].id, tinymce.get(document.querySelectorAll('textarea.tinymce-area')[i].id).getContent({format:'html'}));
    }
    for (var i = 0; i < document.querySelectorAll('.promotion_check').length; i++) {
        data.append('promotion_check[]', document.querySelectorAll('.promotion_check')[i].checked);
        if(document.querySelectorAll('.promotion_check')[i].checked){
            data.append('price[]', document.querySelectorAll('.promotion_color')[i].value);
        }else{
            data.append('price[]', document.querySelectorAll('.price_color')[i].value);
        }
        
    }
    var url = window.location.href;
    fetch(url,{method: "POST",body: data}
    ).then( response => {
        document.getElementById('encypted_ppbtn_all').innerHTML = `<div class="modal" role="dialog" style="display: block; opacity: 0.5">
            <div class="modal-dialog" style="color:#fff; text-align:center; padding-top:300px;">
                <i class="fa fa-2x fa-spinner fa-spin" aria-hidden="true"></i>
            </div>
        </div>`;
        return response.json();
    }).then(
        html => {
            if(html.status == "200"){
                alert(html.message);
                if(window.location.pathname.indexOf("/product/edit/") != '-1'){
                    document.getElementById('csrf_sitecom_token').value = html.reponse.csrf_hash;
                }else{
                    window.location.href=HOSTNAME+"admin/product";
                }
            }else{
                alert(html.message);
                document.getElementById('csrf_sitecom_token').value = html.reponse.csrf_hash;
            }
            document.getElementById('encypted_ppbtn_all').innerHTML = '';
        }

    );

}
function ajax_trademark(ev){
    $.ajax({
        method: "post",
        url: HOSTNAME+'admin/product/ajax_trademark',
        data: {
            id : ev.value, csrf_sitecom_token : document.getElementById('csrf_sitecom_token').value
        },
        beforeSend: function(){
            document.getElementById('encypted_ppbtn_all').innerHTML = `<div class="modal" role="dialog" style="display: block; opacity: 0.5">
                <div class="modal-dialog" style="color:#fff; text-align:center; padding-top:300px;">
                    <i class="fa fa-2x fa-spinner fa-spin" aria-hidden="true"></i>
                </div>
            </div>`;
        },
        success: function(response){
            document.getElementById('csrf_sitecom_token').value = response.reponse.csrf_hash;
            trademark = document.querySelector('[name^="trademark"]').value;
            html = `
                <option value="">Click để chọn</option>
                <option value="99999">No brand</option>
            `;
            if (response.reponse.data.length > 0) {
                for (var i = 0; i < response.reponse.data.length; i++) {
                    html += `<option value="${response.reponse.data[i].id}" >${response.reponse.data[i].vi}</option>`;
                }
            }
            document.querySelector('[name^="trademark"]').innerHTML = html;
            if(document.querySelector(`[name^="trademark"] option[value="${trademark}"]`)){
                document.querySelector(`[name^="trademark"] option[value="${trademark}"]`).setAttribute('selected','selected');
            }
            document.getElementById('encypted_ppbtn_all').innerHTML = '';
        },
        error: function(jqXHR, exception){
            console.log(errorHandle(jqXHR, exception));
            location.reload();
        }
    });
}
function check_validate(ev,type){
    if(type == 'text'){
        value = (ev.querySelector('input').value == '') ? true : false;
    }else if(type == 'radio' || type == 'checkbox'){
        value = (ev.querySelectorAll('input:checked').length == 0) ? true : false;
    }else if(type == 'date'){
        value = (ev.value == '') ? true : false;
    }else if(type == 'file'){
        value = (ev.querySelectorAll('input').files.length == 0 && ev.previousElementSibling.querySelector('.no_image') != null) ? true : false;
    }else if(type == 'select'){
        value = (ev.value == '') ? true : false;
    }else{
        value = (ev.querySelector(type).value != '') ? true : false;
    }
    if(value){
        ev.closest('.required').classList.add("has-error");
        ev.closest('.required').querySelector('span.help-block').classList.remove("hidden");
    }else{
        ev.closest('.required').querySelector('span.help-block').classList.add("hidden");
        ev.closest('.required').classList.remove("has-error");
        if(ev.name == 'parent_id_shared'){
            ajax_trademark(ev);
        }
    }
}
for(i = 0 ; i < color_product.length ; i++){
    list_color += `<option value="${color_product[i].id}">${color_product[i].vi}</option>`;
}
// thêm nhiều field
function addField(number){
    html = '';
    for(i = 0; i< number; i++){
        let [content] = [''];
        html += `
            <div>
                <div class="btn btn-primary col-ms-12 color_product" style="padding:0px; padding-top:5px; width:100%;text-align:left">
                    <span data-toggle="collapse" data-target="#demo${i+1}" class="col-xs-10 check-collapse" style="height:35px;padding-top:2px">
                        <span style="padding-left:10px;font-weight: 500;font-size: 1.2em;">${i+1}</span>
                        <b style="font-size: 1.18em;font-weight: 500;"></b> 
                    </span>
                    <i style="float: right;padding-right:5px;marrgin-top:-10px;" class="fa-2x fa fa-close remove" onclick="remove_color(${i+1})"></i>
                </div>
                <div id="demo${i+1}" class="collapse in form-group">
                    <div class="col-xs-12" style="padding:0px;">
                        <div class="col-xs-12">
                            <label class="control-label" for="inputError">Hình ảnh cho sản phẩm</label>
                            <input type="file" name="img_color${i+1}[]" value="" multiple placeholder="" class="form-control img_color">
                        </div>
                        <div class="col-sm-6 col-xs-12">
                            <label class="control-label" for="inputError">Chọn màu sản phẩm</label>
                            <select onchange="select_color(this)" name="color[]" value="" placeholder="" class="form-control color">${list_color}</select>
                        </div>
                        <div class="col-sm-6 col-xs-12">
                            <label class="control-label" for="inputError">Giá của sản phẩm (đơn vị VND)</label>
                            <input type="text" name="price_color[]" value="" onpaste ="return false" onkeypress=" return check_sale(event,this)" placeholder="" class="form-control price_color">
                        </div>
                        <div class="col-sm-6 col-xs-12">
                            <label class="control-label" for="inputError">Giá khuyến mãi sản phẩm (đơn vị VND)</label>
                            <input type="text" name="promotion_color[]" value="" placeholder="" onpaste ="return false" onkeypress=" return check_sale(event,this)" class="form-control promotion_color">
                        </div>
                        <div class="col-sm-6 col-xs-12">
                            <label class="control-label" for="inputError">Số lượng sản phẩm</label>
                            <input type="text" name="quantity[]" value="" placeholder="" class="form-control quantity">
                        </div>
                        <div class="col-xs-12">
                            <label class="checkbox-inline">
                                <input type="checkbox" name="" class="promotion_check" /><span>Hiển thị khuyến mãi cho sản phẩm</span>
                            </label>
                        </div>
                    </div>
                </div>
            </div>
        `;
    }
    document.getElementById('content-full-color').innerHTML = html;
    for(i = 0; i< number; i++){
        document.querySelector(`#demo${i+1}`).previousElementSibling.querySelector('span b').innerHTML = '. '+document.querySelector(`#demo${i+1} select option[value="${document.querySelector(`#demo${i+1} select`).value}"]`).innerHTML
    }
}

// thêm 1 field
function addOneField(){
    let [html, content, number] = ['', '', document.querySelectorAll('[id^="demo"]').length];
    html += `
        <div>
            <div class="btn btn-primary col-ms-12 color_product" style="padding:0px; padding-top:5px; width:100%;text-align:left">
                <span data-toggle="collapse" data-target="#demo${number+1}" class="col-xs-10 check-collapse" style="height:35px;padding-top:2px">
                    <span style="padding-left:10px;font-weight: 500;font-size: 1.2em;">${number+1}</span>
                    <b style="font-size: 1.18em;font-weight: 500;"></b> 
                </span>
                <i style="float: right;padding-right:5px;marrgin-top:-10px;" class="fa-2x fa fa-close remove" onclick="remove_color(${number+1})"></i>
            </div>
            <div id="demo${number+1}" class="collapse in form-group">
                <div class="col-xs-12" style="padding:0px;">
                    <div class="col-xs-12">
                        <label class="control-label" for="inputError">Hình ảnh cho sản phẩm</label>
                        <input type="file" name="img_color${number+1}[]" value="" multiple placeholder="" class="form-control img_color">
                    </div>
                    <div class="col-sm-6 col-xs-12">
                        <label class="control-label" for="inputError">Chọn màu sản phẩm</label>
                        <select onchange="select_color(this)" name="color[]" value="" placeholder="" class="form-control color">${list_color}</select>
                    </div>
                    <div class="col-sm-6 col-xs-12">
                        <label class="control-label" for="inputError">Giá của sản phẩm (đơn vị VND)</label>
                        <input type="text" name="price_color[]" value="" onpaste ="return false" onkeypress=" return check_sale(event,this)" placeholder="" class="form-control price_color">
                    </div>
                    <div class="col-sm-6 col-xs-12">
                        <label class="control-label" for="inputError">Giá khuyến mãi sản phẩm (đơn vị VND)</label>
                        <input type="text" name="promotion_color[]" value="" onpaste ="return false" onkeypress=" return check_sale(event,this)" placeholder="" class="form-control promotion_color">
                    </div>
                    <div class="col-sm-6 col-xs-12">
                        <label class="control-label" for="inputError">Số lượng sản phẩm</label>
                        <input type="text" name="quantity[]" value="" placeholder="" class="form-control quantity">
                    </div>
                    <div class="col-xs-12">
                        <label class="checkbox-inline">
                            <input type="checkbox" name="" class="promotion_check" /><span>Hiển thị khuyến mãi cho sản phẩm</span>
                        </label>
                    </div>
                </div>
            </div>
        </div>
    `;
    document.getElementById('content-full-color').insertAdjacentHTML('beforeend', html);
    document.querySelector(`#demo${number+1}`).previousElementSibling.querySelector('span b').innerHTML = '. '+document.querySelector(`#demo${number+1} select option[value="${document.querySelector(`#demo${number+1} select`).value}"]`).innerHTML
    document.getElementById('numbercolor').value = number+1;
}
function select_color(ev){
    ev.closest(`[id^="demo"]`).previousElementSibling.querySelector('span b').innerHTML = '. '+ev.querySelector(`option[value="${ev.value}"]`).innerHTML;
}
function remove_color(id){
    document.getElementById('content-full-color').removeChild(document.getElementById(`demo${id}`).parentElement);
    let demo = document.querySelectorAll('[id^="demo"]')
    for (i = id; i <= demo.length; i++) {
        demo[i-1].id = `demo${i}`;
        demo[i-1].parentElement.querySelector('span[data-target^="#demo"]').setAttribute('data-target',`#demo${i}`);
        demo[i-1].parentElement.querySelector('span[data-target^="#demo"] span').innerHTML = i;
        demo[i-1].parentElement.querySelector('span[data-target^="#demo"]').nextElementSibling.setAttribute('onclick',`remove_color(${i})`);
        demo[i-1].querySelector('.img_color"]').setAttribute('name',`img_color${i}`);
    }
    document.getElementById('numbercolor').value = demo.length;
}

function isNumberKey(evt) {
   var charCode = (evt.which) ? evt.which : event.keyCode;
   if (charCode > 31 && (charCode < 48 || charCode > 57) || charCode == 190 || charCode == 196)
      return false;
   return true;
}
function check_sale(evt,ev) {
   var charCode = (evt.which) ? evt.which : event.keyCode;
   if (charCode > 31 && (charCode < 48 || charCode > 57) || charCode == 190 || charCode == 196){
      return false;
   }else{
        if(Number(ev.value.slice(0,ev.selectionStart)+evt.key+ev.value.slice(ev.selectionStart,ev.value.length)) > Number(ev.closest('[id^="demo"]').querySelector('.price_color').value) && ev.name=='promotion_color[]'){
            alert('Giá khuyễn mãi phải nhỏ hơn giá sản phẩm');
            return false;
        }
   }
   return true;
}

function change_trademark(ev){

}