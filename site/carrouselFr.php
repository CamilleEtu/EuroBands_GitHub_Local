<!-- Swiper -->
<div class="swiper mySwiper">
    <div class="swiper-wrapper">
        <div class="swiper-slide"><img src="./img/ELECTRO RAP txt FR.png"></div>
        <div class="swiper-slide"><img src="./img/ELECTRO POP txt FR.png"></div>
        <div class="swiper-slide"><img src="./img/POP ROCK txt FR.png"></div>
        <div class="swiper-slide"><img src="./img/GLOBAL txt FR.png"></div>
    </div>
    <div class="swiper-pagination"></div>
</div>

<script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>
<!-- Initialize Swiper -->
<script type="module">
    var swiper = new Swiper(".swiper", {
        spaceBetween: 30,
        pagination: {
            el: ".swiper-pagination",
            clickable: true,
        },
        autoplay: {
            delay: 4000,
        },
    });
</script>