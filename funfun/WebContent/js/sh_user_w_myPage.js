var choice = $(".profile__choice").get();
var funding = $(".profile__times--num").get();
var order = $(".profile__times--text").get();
console.log(1)
$(choice[0]).click(function(e){

    $(".display_item").css('display','block');
    $(".funding_display").css('display','none');
    $(".trans_display").css('display','none');
    $("#myProject").addClass('clicked');
    $("#myFunding").removeClass('clicked');
    $("#myOrder").removeClass('clicked');
})
$(choice[1]).click(function(e){
    $(".funding_display").css('display','block');
    $(".display_item").css('display','none');
    $(".trans_display").css('display','none');
    $("#myFunding").addClass('clicked');
    $("#myProject").removeClass('clicked');
    $("#myOrder").removeClass('clicked');

})
$(choice[2]).click(function(e){
    $(".trans_display").css('display','block');
    $(".display_item").css('display','none');
    $(".funding_display").css('display','none');
    $("#myOrder").addClass('clicked');
    $("#myProject").removeClass('clicked');
    $("#myFunding").removeClass('clicked');
})

$(funding[0]).click(function(e){
	$(".funding_display").css('display','block');
    $(".display_item").css('display','none');
    $(".trans_display").css('display','none');
    $("#myFunding").addClass('clicked');
    $("#myProject").removeClass('clicked');
    $("#myOrder").removeClass('clicked');
})
$(order[0]).click(function(e){
	$(".funding_display").css('display','block');
    $(".display_item").css('display','none');
    $(".trans_display").css('display','none');
    $("#myFunding").addClass('clicked');
    $("#myProject").removeClass('clicked');
    $("#myOrder").removeClass('clicked');
})

$(funding[1]).click(function(e){
	$(".trans_display").css('display','block');
    $(".display_item").css('display','none');
    $(".funding_display").css('display','none');
    $("#myOrder").addClass('clicked');
    $("#myProject").removeClass('clicked');
    $("#myFunding").removeClass('clicked');
})
$(order[1]).click(function(e){
	$(".trans_display").css('display','block');
    $(".display_item").css('display','none');
    $(".funding_display").css('display','none');
    $("#myOrder").addClass('clicked');
    $("#myProject").removeClass('clicked');
    $("#myFunding").removeClass('clicked');
})
