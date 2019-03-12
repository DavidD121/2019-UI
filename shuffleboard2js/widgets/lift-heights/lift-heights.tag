<lift-heights>
    <svg width='100%' height='100%' viewBox="0 0 100 100">
        <image xlink:href="/widgets/lift-heights/rocket_ship_transparent.png" x="52%" y="0" height="100%" width="50%"/>

        <!-- Rocket ball button SVG elements -->
        <ellipse class = 'button top-ball' cx = '67.3%' cy = '38%' rx = '4%' ry = '5%' style="fill:lime;fill-opacity:0;stroke:black;stroke-width:.8"/>
        <ellipse class = 'button mid-ball' cx = '67.3%' cy = '55%' rx = '4%' ry = '5%' style="fill:lime;fill-opacity:0;stroke:black;stroke-width:.8"/>
        <ellipse class = 'button bot-ball' cx = '67.3%' cy = '72%' rx = '4%' ry = '5%' style="fill:lime;fill-opacity:0;stroke:black;stroke-width:.8"/>

        <!-- Rocket hatch button SVG elements -->
        <ellipse class = 'button top-hatch' cx = '78%' cy = '43.5%' rx = '4.15%' ry = '5%' style="fill:lime;fill-opacity:0;stroke:black;stroke-width:.8"/>
        <ellipse class = 'button mid-hatch' cx = '78%' cy = '60.5%' rx = '4.15%' ry = '5%' style="fill:lime;fill-opacity:0;stroke:black;stroke-width:.8"/>
        <ellipse class = 'button bot-hatch' cx = '78%' cy = '77.5%' rx = '4.15%' ry = '5%' style="fill:lime;fill-opacity:0;stroke:black;stroke-width:.8"/>
        
        <image xlink:href="/widgets/lift-heights/cargo_ship_transparent.png" x="1" y="20%" height="100%" width="50%"/>

        <!-- Cargo ship ball SVG elements-->
        <polygon points = "1.5,63.7 8.3,52.8 22.5,60.5 15.5,72" class = 'button cargo-ball'  style = "fill:lime;fill-opacity:0;stroke:black;stroke-width:.8"/>
        <polygon points = "27.5,62.5 30,77 49.8,68.8 36.5,58.5" class = 'button cargo-ball'  style = "fill:lime;fill-opacity:0;stroke:black;stroke-width:.8"/>
        
        
        <!-- Cargo ship hatch SVG elements-->
        <polygon points = "1.4,64.5 15.5,72.5 16,84.3 1.4,76" class = 'button cargo-hatch'  style = "fill:lime;fill-opacity:0;stroke:black;stroke-width:.8"/>
        <polygon points = "30,77 49.8,68.8 50.5,81 30.5,90" class = 'button cargo-hatch'  style = "fill:lime;fill-opacity:0;stroke:black;stroke-width:.8"/>
        </svg>


    <script>   
        this.heights_array = ['zero','cargo-hatch','bot-hatch', 'bot-ball', 'cargo-ball', 'mid-hatch','mid-ball','top-hatch', 'top-ball'];
        this.on('mount', () => {

            $('.button').on('click', (ev) => {
                let target = ev.target;
                let heightIndex = this.heights_array.indexOf($(target).attr('class').split(' ')[1]);
                console.log(heightIndex);
                console.log('============');
                console.log(this.opts.ntRoot, heightIndex);
                console.log('============');
                NetworkTables.putValue(this.opts.ntRoot, heightIndex);
                console.log(this.heights_array[heightIndex]);
                console.log(this.opts.table);
            });
        });

        this.on('update', () => {
            setTimeout(() => {
                $('.button').css('fill-opacity', 0);
                $("."+ this.heights_array[this.opts.table]).css('fill-opacity', .7);
            });
        });

    </script>
</lift-heights>