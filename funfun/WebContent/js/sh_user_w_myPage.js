var choice = $(".profile__choice").get();
console.log(1)
$(choice[0]).click(function(e){

    $(".display_item").css('display','block');

    $(".funding_display").css('display','none');

    $(".trans_display").css('display','none');

})
$(choice[1]).click(function(e){
    console.log(2)
    $(".funding_display").css('display','block');
    console.log(3)
    $(".display_item").css('display','none');
    console.log(4)
    $(".trans_display").css('display','none');
    console.log(5)
})
$(choice[2]).click(function(e){
    $(".trans_display").css('display','block');
    $(".display_item").css('display','none');
    $(".funding_display").css('display','none');
})