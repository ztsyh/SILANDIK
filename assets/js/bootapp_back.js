
function switch_tab(id)
{
	$('#sliding-navigation a.a_main').removeClass("focused").addClass("not_focused");
	$(id).addClass("focused").removeClass("not_focused");
}
function switch_child(id)
{
	$('.acitem a.a_child').removeClass("cfocused");
	$(id).addClass("cfocused");
}
function periodic_5()
{
	// chat
	periodic_chat();
	// user online
	load_silent('cms/common/load_user_online','#user-online');
}
function periodic_30()
{
	// check message
	load_silent("cms/common/get_num_new_message",".bubblemsg");
	// check notifications
	load_silent("cms/common/get_num_notification",".bubblenotif");
}
function nicetable()
{
	$('.table2').attr('cellspacing','0');
	$(".table2 td:first-child, table th:first-child").addClass("first");
        /* For removing the last border */
        $(".table2 td:last-child, table th:last-child").addClass("last");
}
function convert_form()
{
	$('form').attr('onsubmit','return false;');
}
// SET CURSOR POSITION
new function($) {
	$.fn.setCursorPosition = function(pos) {
		if ($(this).get(0).setSelectionRange)
		{
			$(this).get(0).setSelectionRange(pos, pos);
		}
		else if ($(this).get(0).createTextRange)
		{
			var range = $(this).get(0).createTextRange();
			range.collapse(true);
			range.moveEnd('character', pos);
			range.moveStart('character', pos);
			range.select();
		}
	}
}(jQuery);

function load_silent(page,div,dt,repmethod)
{

	$('div.box').block({ 
        message: '<h4><img src="busy.gif" /> Memproses...</h4>',
        centerY: 0, 
        css: { top: '150px' }
    });
	dt = dt || "";
	rm = repmethod || 'replace';
	var splitted = page.split('#');
	var domscroll = '';
	if(splitted.length > 1)
	{
		page = splitted[0];
		domscroll = splitted[1];
	}
	$.ajax({
		data:dt,
		url: site+page,
		success: function(response){
			if(rm == 'replace')
			{
				$(div).html(response);
			}
			else if(rm == 'append')
			{
				$(div).append(response);
			}
			if(domscroll != '')
			{
				$('body').scrollTo($('#'+domscroll),800);
			}
			nicetable();
			convert_form();
			$('div.box').unblock(); 
		},
		dataType:"html",
		type:"post"
	});
	//clearconsole();
	return false;
}
// $('.log').ajaxComplete(function() {
//     clearconsole();
//   $(this).text('Triggered ajaxComplete handler.');
// });

function clearconsole() {
  console.log(window.console);
  if(window.console || window.console.firebug) {
   console.clear();
  }
}
function load_url(theurl,div)
{
	$.ajax({
	    url: theurl,
	    success: function(response){
		$(div).html(response);
		nicetable();
	    },
	dataType:"html"
	});
	return false;
}
function append_after(page,div)
{
	$.ajax({
	    url: site+'/'+page,
	    beforeSend:function(){
		$(div).html('Loading...');
	    },
	    success: function(response){
		$(div).after(response);
		$(div).html('');
	    },
	dataType:"html"
	});
	return false;
}
function stristr (haystack, needle, bool) {
	var pos = 0;
	haystack += '';
	pos = haystack.toLowerCase().indexOf((needle + '').toLowerCase());
	if (pos == -1)
	{
		return false;
	}
	else
	{
		if (bool)
		{
			return haystack.substr(0, pos);
		}
		else
		{
			return haystack.slice(pos);
		}
	}
}
function convert_paging(domId)
{
	$(".pagination").find("a").each(function(i){
		if(!$(this).hasClass("notAjax")){
			var thisHref = $(this).attr("href");
			$(this).prop('href','javascript:void(0)');
			$(this).prop('rel',thisHref);
			$(this).bind('click', function(){
				load_url(thisHref,domId);
				return false;
			});
		}
	});
}
function send_form(formObj,action,responseDIV)
{
	$.ajax({
		url: site+action,
		data: $(formObj.elements).serialize(),
		success: function(response){
			$(responseDIV).html(response);
		    },
		type: "post",
		dataType: "html"
	});
	return false;
}
function send_form_lb(formObj,action)
{
	$.ajax({
		url: site+action,
		data: $(formObj.elements).serialize(),
		success: function(response){
			jQuery.facebox(response);
		    },
		type: "post",
		dataType: "html"
	});
	return false;
}
function load_into_box(page,dt)
{
	$.ajax({
	    url: site+"/"+page,
	    data: dt,
	    success: function(response){
		jQuery.facebox(response);
		nicetable();
	    },
	    type:"post",
	    dataType:"html"
	});
	return false;
}
function slidebox(boxx,func)
{
	var box = $(boxx);
	if(box.html() == '')
	{
		box.hide();
		eval(func);
		box.delay(500).slideDown('slow',function(){
			$('body').scrollTo($('#tops'),800);
		});
		return false;
	}
	else
	{
		return false;
	}
}
function closebox(dom)
{
	$(dom).slideUp('slow').delay(300).html('');
}
function jconfirm(dialog,uri,dom)
{
	var answer = confirm(dialog);
	if(answer)
	{
		load_silent(uri,dom);
	}
}
function formatNumber(input)
{
	var num = input.value.replace(/\,/g,'');
	if(!isNaN(num)){
	if(num.indexOf('.') > -1){
	num = num.split('.');
	num[0] = num[0].toString().split('').reverse().join('').replace(/(?=\d*\.?)(\d{3})/g,'$1,').split('').reverse().join('').replace(/^[\,]/,'');
	if(num[1].length > 2){
	alert('You may only enter two decimals!');
	num[1] = num[1].substring(0,num[1].length-1);
	} input.value = num[0]+'.'+num[1];
	} else{ input.value = num.toString().split('').reverse().join('').replace(/(?=\d*\.?)(\d{3})/g,'$1,').split('').reverse().join('').replace(/^[\,]/,'') };
	}
	else{
		//alert('Anda hanya diperbolehkan memasukkan angka!');
		input.value = input.value.substring(0,input.value.length-1);
	}
}
function format_number(nStr){
	nStr += '';
	x = nStr.split('.');
	x1 = x[0];
	x2 = x.length > 1 ? '.' + x[1] : '';
	var rgx = /(\d+)(\d{3})/;
	while (rgx.test(x1)) {
		x1 = x1.replace(rgx, '$1' + ',' + '$2');
	}
	return x1 + x2;
}
function back_page()
{
	load_silent('apl/common/back_history','#content');
}
// removes MS Office generated guff
function cleanHTML(txt)
{
	var input = txt.value;
	// 1. remove line breaks / Mso classes
	var stringStripper = /(\n|\r| class=(")?Mso[a-zA-Z]+(")?)/g;
	var output = input.replace(stringStripper, '');
	// 2. strip Word generated HTML comments
	var commentSripper = new RegExp('<!--(.*?)-->','g');
	var output = output.replace(commentSripper, '');
	var tagStripper = new RegExp('<(/)*(meta|link|span|\\?xml:|st1:|o:|font)(.*?)>','gi');
	// 3. remove tags leave content if any
	output = output.replace(tagStripper, '');
	// 4. Remove everything in between and including tags '<style(.)style(.)>'
	var badTags = ['style', 'script','applet','embed','noframes','noscript'];
	for (var i=0; i< badTags.length; i++) {
		tagStripper = new RegExp('<'+badTags[i]+'.*?'+badTags[i]+'(.*?)>', 'gi');
		output = output.replace(tagStripper, '');
	}
	// 5. remove attributes ' style="..."'
	var badAttributes = ['style', 'start'];
	for (var i=0; i< badAttributes.length; i++) {
		var attributeStripper = new RegExp(' ' + badAttributes[i] + '="(.*?)"','gi');
		output = output.replace(attributeStripper, '');
	}
	txt.value = output;
}
// buat titik pada currency
function tandaPemisahTitik(b){
    var _minus = false;
    if (b<0) _minus = true;
    b = b.toString();
    b=b.replace(".","");
    b=b.replace("-","");
    c = "";
    panjang = b.length;
    j = 0;
    for (i = panjang; i > 0; i--){
         j = j + 1;
         if (((j % 3) == 1) && (j != 1)){
           c = b.substr(i-1,1) + "." + c;
         } else {
           c = b.substr(i-1,1) + c;
         }
    }
    if (_minus) c = "-" + c ;
    return c;
}

function numbersonly(ini, e){
    if (e.keyCode>=49){
        if(e.keyCode<=57){
        a = ini.value.toString().replace(".","");
        b = a.replace(/[^\d]/g,"");
        b = (b=="0")?String.fromCharCode(e.keyCode):b + String.fromCharCode(e.keyCode);
        ini.value = tandaPemisahTitik(b);
        return false;
        }
        else if(e.keyCode<=105){
            if(e.keyCode>=96){
                //e.keycode = e.keycode - 47;
                a = ini.value.toString().replace(".","");
                b = a.replace(/[^\d]/g,"");
                b = (b=="0")?String.fromCharCode(e.keyCode-48):b + String.fromCharCode(e.keyCode-48);
                ini.value = tandaPemisahTitik(b);
                //alert(e.keycode);
                return false;
                }
            else {return false;}
        }
        else {
            return false; }
    }else if (e.keyCode==48){
        a = ini.value.replace(".","") + String.fromCharCode(e.keyCode);
        b = a.replace(/[^\d]/g,"");
        if (parseFloat(b)!=0){
            ini.value = tandaPemisahTitik(b);
            return false;
        } else {
            return false;
        }
    }else if (e.keyCode==95){
        a = ini.value.replace(".","") + String.fromCharCode(e.keyCode-48);
        b = a.replace(/[^\d]/g,"");
        if (parseFloat(b)!=0){
            ini.value = tandaPemisahTitik(b);
            return false;
        } else {
            return false;
        }
    }else if (e.keyCode==8 || e.keycode==46){
        a = ini.value.replace(".","");
        b = a.replace(/[^\d]/g,"");
        b = b.substr(0,b.length -1);
        if (tandaPemisahTitik(b)!=""){
            ini.value = tandaPemisahTitik(b);
        } else {
            ini.value = "";
        }

        return false;
    } else if (e.keyCode==9){
        return true;
    } else if (e.keyCode==17){
        return true;
    } else {
        //alert (e.keyCode);
        return false;
    }

}

function bersihPemisah(ini){
    a = ini.toString().replace(".","");
    //a = a.replace(".","");
    return a;
}
function fnHitung() {
    var angka = bersihPemisah(bersihPemisah(bersihPemisah(bersihPemisah(document.getElementById('inputku').value)))); //input ke dalam angka tanpa titik
    if (document.getElementById('inputku').value == "") {
        alert("Jangan Dikosongi");
        document.getElementById('inputku').focus();
        return false;
    }
    else
        if (angka >= 1) {
        alert("angka aslinya : "+angka);
        document.getElementById('inputku').focus();
        document.getElementById('inputku').value = tandaPemisahTitik(angka) ;
        return false;
        }
    }
