/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


var posLeft = activeElement.position().left;
            var elementWidth = activeElement.width();
            posLeft = posLeft + elementWidth/2 -6;
            if (activeElement.hasClass('has-sub')) {
                    posLeft -= 6;
            }

            $('#cssmenu #pIndicator').css('left', posLeft);
            var element, leftPos, indicator = $('#cssmenu pIndicator');

            $("#cssmenu>ul>li").hover(function() {
            element = $(this);
            var w = element.width();
            if ($(this).hasClass('has-sub'))
            {
                    leftPos = element.position().left + w/2 - 12;
            }
            else {
                    leftPos = element.position().left + w/2 - 6;
            }

            $('#cssmenu #pIndicator').css('left', leftPos);
        }
        , function() {
            $('#cssmenu #pIndicator').css('left', posLeft);
        });


            $('#cssmenu>ul>.has-sub>ul').append('<div class="submenuArrow"></div>');
            $('#cssmenu>ul').children('.has-sub').each(function() {
                    var posLeftArrow = $(this).width();
                    posLeftArrow /= 2;
                    posLeftArrow -= 12;
                    $(this).find('.submenuArrow').css('left', posLeftArrow);

            });

            $('#cssmenu>ul').prepend('<li id="menu-button"><a>Menu</a></li>');
            $( "#menu-button" ).click(function(){
                    if ($(this).parent().hasClass('open')) {
                            $(this).parent().removeClass('open');
                    }
                    else {
                            $(this).parent().addClass('open');
                    }
            });