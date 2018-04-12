(function() {
    /* Based on https://www.labnol.org/internet/light-youtube-embeds/27941/ */
    document.addEventListener("DOMContentLoaded", function() {
        var div, n,
            v = document.querySelectorAll(".youtube-player");
        for (n = 0; n < v.length; n++) {
            div = document.createElement("div");
            div.setAttribute("data-id", v[n].dataset.id);
            div.innerHTML = ytThumb(v[n].dataset.id);
            div.addEventListener("click", ytIframe);
            v[n].classList.add("js-enabled");
            v[n].appendChild(div);
        }
    });

    function ytThumb(id) {
        var thumb = '<img src="/thumbs/{}.jpg">',
            play = '<i class="material-icons play">&#xe037;</i>';
        return thumb.replace("{}", id) + play;
    }

    function ytIframe() {
        var iframe = document.createElement("iframe");
        var embed = "https://www.youtube-nocookie.com/embed/{}?rel=0&autoplay=1";
        iframe.setAttribute("src", embed.replace("{}", this.dataset.id));
        this.parentNode.replaceChild(iframe, this);
    }
})();
