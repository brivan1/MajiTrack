document.addEventListener('DOMContentLoaded', function() {
    const zonelinks = document.querySelectorAll('.zone_map a');

    zonelinks.forEach(link => {
        link.addEventListener('click', function(event) {
            event.preventDefault(); // Prevent default link behavior

            const targetzone = this.closest('.zone-info').querySelector('h2').textContent;
            let targetPage = '';
            // Determine which page to navigate to based on the zone name.

            switch (targetzone) {
                case 'Zone_1':
                    targetPage = 'zone1_user_dash.html';
                    break;
                case 'Zone_2':
                    targetPage = 'zone2_user_dash.html';
                    break;
                case 'Zone_3':
                    targetPage = 'zone3_user_dash.html';
                    break;
                case 'Zone_4':
                    targetPage = 'zone4_user_dash.html';
                    break;
                case 'Zone_5':
                    targetPage = 'zone5_user_dash.html';
                    break;
                case 'Zone_6':
                    targetPage = 'zone6_user_dash.html';
                    break;
                default:
                    targetPage = 'index.html'; //some default page
                    break;
            }
            window.location.href = targetPage; // Navigate to the target page.
        })
    })
})