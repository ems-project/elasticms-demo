/**
 * Back to top JS
 */
export default function back2top() {
    const $ = require('jquery');
    const $backToTop = $('#back2top');

    const scrollCallback = function() {
        if ($(this).scrollTop() > 100) {
            $backToTop.fadeIn();
        } else {
            $backToTop.fadeOut();
        }
    };

    // appear on scroll
    if ($backToTop.length) {
        scrollCallback();
        $(window).scroll(scrollCallback);
    }

    // smooth scroll
    $backToTop.click(function(e) {
        e.preventDefault();
        const target = $('body');
        $('html, body').animate({
            scrollTop: target.offset().top
        }, 500, function() {
            target.attr('tabindex', '-1').focus(); // Set focus on body
        });
    });
}