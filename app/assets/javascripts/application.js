// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

function remove_fields(link){
    $(link).prev("input[type=hidden]").val("1");
    $(link).closest(".fields").hide();
}

function add_fields(link, association, content){
    var new_id = new Date().getTime();
    var regexp = new RegExp("new_" + association, "g");
    $(link).before(content.replace(regexp, new_id));
}

function showClip(adress){
    $('#filme').html('<iframe width="954" height="541" src="' + adress + '" frameborder="0" allowfullscreen></iframe>');
    $('#filme').slideDown(2000);
    $('#filme').focus();
}

function slidePix(){
	var curPic = $('.intro div.active');
	var nextPic = curPic.next();
	if (nextPic.length == 0){
		nextPic = $('.intro div:first');
	}
	
	curPic.removeClass('active').addClass('prev');
	nextPic.css({opacity:0.0}).addClass('active').animate({opacity:1.0},2000,function(){
		curPic.removeClass('prev');
	});
}

function showVids(videoArray){
    videoArray[0].play();
    videoArray[0].className = "activevid";
    videoArray[0].addEventListener('ended', function(){
        videoArray[0].setAttribute("class", "");
        videoArray[1].setAttribute("class", "activevid");
        videoArray[1].play();});
    videoArray[1].addEventListener('ended', function(){
        videoArray[1].setAttribute("class", "");
        videoArray[2].setAttribute("class", "activevid");
        videoArray[2].play();});
    videoArray[2].addEventListener('ended', function(){
        videoArray[2].setAttribute("class", "");
        videoArray[3].setAttribute("class", "activevid");
        videoArray[3].play();});
    videoArray[3].addEventListener('ended', function(){
        videoArray[3].setAttribute("class", "");
        videoArray[4].setAttribute("class", "activevid");
        videoArray[4].play();});
    videoArray[4].addEventListener('ended', function(){
        videoArray[4].setAttribute("class", "");
        videoArray[0].setAttribute("class", "activevid");
        videoArray[0].play();});
}

function showVids1(videoArray){
    videoArray[0].play();
    videoArray[0].className = "activevid";
    for(i = 0; i < videoArray.size(); i++){
        if(i < videoArray.size() - 1 ){
            videoArray[i].addEventListener('ended', function(){
                videoArray[i].setAttribute("class", "");
                videoArray[i + 1].setAttribute("class", "activevid");
                videoArray[i + 1].play();
            });
        }else{
            videoArray[i].addEventListener('ended', function(){
                videoArray[i].setAttribute("class", "");
                videoArray[0].setAttribute("class", "activevid");
                videoArray[0].play();
            });
        } 
    }
}