(function() {
    /* Based on https://www.labnol.org/internet/light-youtube-embeds/27941/ */
    document.addEventListener("DOMContentLoaded", function() {
        var div, n,
            v = document.querySelectorAll(".youtube-player");
        for (n = 0; n < v.length; n++) {
            a = document.createElement("a");
            a.setAttribute("data-id", v[n].dataset.id);
            a.setAttribute("href", "https://www.youtube.com/watch?v=" + v[n].dataset.id);
            a.innerHTML = ytThumb(v[n].dataset.id);
            a.addEventListener("click", ytIframe);
            v[n].classList.add("js-enabled");
            v[n].appendChild(a);
        }
    });

    function ytThumb(id) {
        var thumb = '<img src="/thumbs/{}.jpg">',
            play = '<i class="material-icons play">&#xe037;</i>',
            privacyNotice = '<div class="privacy">Note: loading this video will request resources from YouTube.</div>';
        return thumb.replace("{}", id) + play + privacyNotice;
    }

    function ytIframe(e) {
        var iframe = document.createElement("iframe");
        var embed = "https://www.youtube-nocookie.com/embed/{}?rel=0&autoplay=1";
        iframe.setAttribute("src", embed.replace("{}", this.dataset.id));
        this.parentNode.replaceChild(iframe, this);
        e.preventDefault();
    }
})();
