$(document).ready(function () {
    $("#searchMsg").keyup(function () {
        $.ajax({
            url: "ajax/MsgSearch.ashx",
            data: { q: this.value },
            success: function(res){
                var arID = res.split(';');
                console.log(res.split(';'));
                $(".msgBlock").each(function () {
                    if( arID.indexOf($(this).attr("data-itmid")) == -1  )
                        $(this).hide();
                    else
                        $(this).show();
                });
            }
        });
    })
});