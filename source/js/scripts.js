(function(a) {
    var o = a(window);
    o.on("load",
    function() {
        o.trigger("resize")
    });
    a(".loader").fadeOut();
    a(".loader-mask").delay(350).fadeOut("slow");
    r();
    o.on("resize",
    function() {
        p();
        q()
    });
    var t;
    if (Modernizr.mq("(min-width: 0px)")) {
        t = function(z) {
            return Modernizr.mq("(min-width: " + z + "px)")
        }
    } else {
        t = function(z) {
            return o.width() >= z
        }
    }
    if (/Android|iPhone|iPad|iPod|BlackBerry|Windows Phone/i.test(navigator.userAgent || navigator.vendor || window.opera)) {
        a("html").addClass("mobile");
        a(".dropdown-toggle").attr("data-toggle", "dropdown")
    } else {
        a("html").removeClass("mobile")
    }
    if (Function("/*@cc_on return document.documentMode===10@*/")()) {
        a("html").addClass("ie")
    }
    o.scroll(function() {
        w();
        x()
    });
    var n = a(".nav--sticky");
    var g = a(".nav");
    function x() {
        if (o.scrollTop() > 2) {
            n.addClass("sticky");
            g.addClass("sticky")
        } else {
            n.removeClass("sticky");
            g.removeClass("sticky")
        }
    }
    var l = a("#sidenav"),
    f = a("#main-container"),
    k = a(".nav-icon-toggle"),
    j = a(".nav__holder"),
    b = a(".content-overlay"),
    e = a("html"),
    m = a("#sidenav__close-button");
    k.on("click",
    function(z) {
        z.stopPropagation();
        a(this).toggleClass("nav-icon-toggle--is-open");
        l.toggleClass("sidenav--is-open");
        b.toggleClass("content-overlay--is-visible")
    });
    function v() {
        k.removeClass("nav-icon-toggle--is-open");
        l.removeClass("sidenav--is-open");
        b.removeClass("content-overlay--is-visible")
    }
    function p() {
        if (t(992)) {
            v()
        }
    }
    b.on("click",
    function() {
        v()
    });
    m.on("click",
    function() {
        v()
    });
    var d = a(".nav__dropdown-trigger"),
    i = a(".nav__dropdown-menu"),
    h = a(".nav__dropdown");
    if (a("html").hasClass("mobile")) {
        a("body").on("click",
        function() {
            i.addClass("hide-dropdown")
        });
        h.on("click", "> a",
        function(z) {
            z.preventDefault()
        });
        h.on("click",
        function(z) {
            z.stopPropagation();
            i.removeClass("hide-dropdown")
        })
    }
    a(".sidenav__menu-toggle").on("click",
    function(A) {
        A.preventDefault();
        var z = a(this);
        z.parent().siblings().removeClass("sidenav__menu--is-open");
        z.parent().siblings().find("li").removeClass("sidenav__menu--is-open");
        z.parent().find("li").removeClass("sidenav__menu--is-open");
        z.parent().toggleClass("sidenav__menu--is-open");
        if (z.next().hasClass("show")) {
            z.next().removeClass("show").slideUp(350)
        } else {
            z.parent().parent().find("li .sidenav__menu-dropdown").removeClass("show").slideUp(350);
            z.next().toggleClass("show").slideToggle(350)
        }
    }); (function() {
        var A = a(".nav__search-form"),
        C = a(".nav__search-trigger"),
        B = a(".nav__search-input"),
        z = a(".nav__search-close");
        C.on("click",
        function(E) {
            E.preventDefault();
            A.animate({
                opacity: "toggle"
            },
            500);
            B.focus()
        });
        z.on("click",
        function(E) {
            E.preventDefault();
            A.animate({
                opacity: "toggle"
            },
            500)
        });
        function D() {
            A.fadeOut(200)
        }
        a(document.body).on("click",
        function(E) {
            D()
        });
        B.add(C).on("click",
        function(E) {
            E.stopPropagation()
        })
    })();
    var c = a(".crypto-rates");
    c.append('<span class="loading">Loading...</span>');
    // a.ajax({
    //     type: "GET",
    //     url: "https://api.coinmarketcap.com/v1/ticker/?limit=10",
    //     dataType: "json",
    //     success: function(z) {
    //         u(z)
    //     },
    //     error: function(z, A) {
    //         console.log(A)
    //     }
    // });
    function u(z) {
        var A = "";
        var D = "";
        var C = "";
        for (var B = 0; B < z.length; B++) {
            A += "<div><img class='crypto-rates__img' src='img/coins_icons/" + z[B].id + "_icon.png'/><span class='crypto-rates__name'>" + z[B].name + " (" + z[B].symbol + ")</span><span class='crypto-rates__price'>$" + z[B].price_usd + "</span>";
            D = z[B].percent_change_1h;
            C = D.search(/\-/);
            A += "<span class='crypto-rates__percent " + E() + "'>" + z[B].percent_change_1h + "%</span></div>"
        }
        function E() {
            if (C === 0) {
                return "crypto-rates__percent--down"
            } else {
                return "crypto-rates__percent--up"
            }
        }
        E();
        c.append(A);
        a(".loading").remove();
        a(".marquee").marquee({
            pauseOnHover: true,
            gap: 0,
            duplicated: true,
            startVisible: true
        })
    } (function() {
        var z = a(".sticky-col");
        if (z.length > 0) {
            z.stick_in_parent({
                offset_top: 40
            })
        }
    })();
    function q() {
        var z = a("#isotope-grid");
        if (z.length > 0) {
            z.imagesLoaded(function() {
                z.isotope({
                    layoutMode: "masonry"
                });
                z.isotope()
            })
        }
    }
    a(".tabs__trigger").on("click",
    function(A) {
        var z = a(this).attr("href");
        a(".tabs__content-trigger " + z).stop().fadeIn(1000).siblings().hide();
        a(this).parent("li").addClass("tabs__item--active").siblings().removeClass("tabs__item--active");
        A.preventDefault()
    });
    function r() {
        a("#owl-hero-grid").owlCarousel({
            center: false,
            items: 1,
            loop: true,
            nav: true,
            dots: true,
            margin: 0,
            lazyLoad: true,
            navSpeed: 500,
            navText: ['<i class="ui-arrow-left">', '<i class="ui-arrow-right">']
        });
        a("#owl-single").owlCarousel({
            items: 1,
            loop: true,
            nav: true,
            dots: false,
            lazyLoad: true,
            navSpeed: 500,
            navText: ['<i class="ui-arrow-left">', '<i class="ui-arrow-right">']
        });
        a("#owl-single-post-gallery").owlCarousel({
            items: 1,
            loop: true,
            nav: true,
            dots: true,
            lazyLoad: true,
            navSpeed: 500,
            navText: ['<i class="ui-arrow-left">', '<i class="ui-arrow-right">']
        });
        var z = a("#owl-posts").owlCarousel();
        a(".carousel-nav__btn--prev").on("click",
        function() {
            z.trigger("prev.owl.carousel")
        });
        a(".carousel-nav__btn--next").on("click",
        function() {
            z.trigger("next.owl.carousel")
        })
    }
    var y = a("#submit-message"),
    s = a("#msg");
    y.on("click",
    function(A) {
        A.preventDefault();
        var z = a(this);
        a.ajax({
            type: "POST",
            url: "contact.php",
            dataType: "json",
            cache: false,
            data: a("#contact-form").serialize(),
            success: function(B) {
                if (B.info !== "error") {
                    z.parents("form").find("input[type=text],input[type=email],textarea,select").filter(":visible").val("");
                    s.hide().removeClass("success").removeClass("error").addClass("success").html(B.msg).fadeIn("slow").delay(5000).fadeOut("slow")
                } else {
                    s.hide().removeClass("success").removeClass("error").addClass("error").html(B.msg).fadeIn("slow").delay(5000).fadeOut("slow")
                }
            }
        })
    });
    function w() {
        var A = o.scrollTop();
        var z = a("#back-to-top");
        if (A >= 50) {
            z.addClass("show")
        } else {
            z.removeClass("show")
        }
    }
    a('a[href="#top"]').on("click",
    function() {
        a("html, body").animate({
            scrollTop: 0
        },
        1000, "easeInOutQuint");
        return false
    })
})(jQuery);