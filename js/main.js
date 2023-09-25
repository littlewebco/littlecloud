document.addEventListener("DOMContentLoaded", function () {
    loadTemplatePart("template-part/header.html", "header-container");
    loadTemplatePart("template-part/hero-section.html", "hero-section-container", function() {
        // Initialize Typed.js here after hero-section is loaded
        if(document.querySelector("#typed")) {
            var options = {
                strings: ['professional email', 'managed cloud services',  'tech support', 'web hosting', 'resellers hosting', 'domains'],
                typeSpeed: 120,
                backSpeed: 50,
                smartBackspace: true,
                loop: true,
            };
            var typed = new Typed("#typed", options); // corrected the selector here
        }
    });
    loadTemplatePart("template-part/header-navbar.html", "header-navbar-links");
    loadTemplatePart("template-part/hero-section-features.html", "hero-section-features-container");
    loadTemplatePart("template-part/hero-section-hosting.html", "hero-section-hosting-container");
    loadTemplatePart("template-part/web-hosting-pricing.html", "web-hosting-pricing");
    loadTemplatePart("template-part/main-text-after-montagne.html", "main-text-after-montagne-container");
    loadTemplatePart("template-part/support-package.html", "support-package");
    loadTemplatePart("template-part/google-workspace-details.html", "google-workspace");
    loadTemplatePart("template-part/footer.html", "footer-container");
});

function loadTemplatePart(path, containerId, callback) {
    fetch(path)
        .then(response => {
            if (!response.ok) {
                throw new Error("Network response was not ok" + response.statusText);
            }
            return response.text();
        })
        .then(data => {
            document.getElementById(containerId).innerHTML = data;
            if(callback) callback(); // Call callback if it's provided
        })
        .catch(error => {
            console.error("There has been a problem with your fetch operation:", error);
        });
}

const scripts = [
    "js/custom.js",
    "js/vendor.min.js",
    "plugins/fancybox/jquery.fancybox.min.js",
    "plugins/nice-select/jquery.nice-select.min.js",
    "plugins/aos/aos.min.js",
    "plugins/slick/slick.min.js",
    "plugins/typed/typed.min.js",
    "plugins/waypoints/jquery.waypoints.min.js",
    "plugins/lordicon/lord-icon-2.1.0.min.js",
    "plugins/countdown/jquery.countdown.min.js",
    "plugins/countUp/countUp.min.js",
    "plugins/flatpickr/flatpickr.min.js",
    "plugins/glightbox/glightbox.min.js",
    "plugins/isotope/isotope.pkgd.min.js",
    "plugins/swiper/swiper-bundle.min.js",
    "plugins/tiny-slider/tiny-slider.js",
    "plugins/gradientify/jquery.gradientify.min.js",
    "plugins/particles/particles-code.js",
    "plugins/particles/particles.js",
    "plugins/parallax/parallax.js",
    "plugins/i18next/i18next.min.js",
    "plugins/i18next/i18nextXHRBackend.min.js",
    "plugins/i18next/jquery-i18next.min.js",
];

function loadScripts(scriptArr) {
    scriptArr.forEach((src) => {
        const script = document.createElement('script');
        script.src = src;
        script.async = false; // To ensure scripts are executed in the order they are listed
        document.head.appendChild(script);
    });
}

loadScripts(scripts);
