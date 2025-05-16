document.addEventListener('DOMContentLoaded', function() {
    const navLinks = document.querySelectorAll('nav a');

    navLinks.forEach(link => {
        link.addEventListener('click', function(event) {
            event.preventDefault(); // Prevent default link behavior

            const href = this.getAttribute('href');

            if (href.startsWith('#')) {
                // Smooth scrolling for same-page links
                document.querySelector(href).scrollIntoView({
                    behavior: 'smooth'
                });
            } else if (href === 'zones.html') {
                // Navigate to zones.html
                window.location.href = href;
            }else {
             window.location.href = href;
            }
        });
    });
});