<hab-climb>
        <svg width='100%' height='100%' viewBox="0 0 100 75">
            <rect class = 'background' height='100%' width='100%' style="fill:black;fill-opacity:.5"/>
            <image xlink:href="/widgets/hab-climb/hab_transparent.png" height='100%' width='100%'/>
            <text class = 'unpressed' fill='white' x='5%' y='50%'>Climb Time?</text>
            <text class = 'pressed' fill='red' font-size='30' opacity='0' x='10%' y='50%'>
                <tspan x=".1em" dy="-.2em">CLIMB</tspan>
                <tspan x=".3em"dy="1.0em"> TIME!</tspan>
            </text>
            <rect class = 'rect-button' height='100%' width='100%' style="fill:lime;fill-opacity:0;stroke:black;stroke-width:.8"/>

    </svg>

    <script>   

        this.on('mount', () => {

            $('.rect-button').on('click', () => {
                NetworkTables.putValue(this.opts.ntRoot, !this.opts.table)

            if(!this.opts.table) {
                $('.pressed').css('opacity', 1);
                $('.unpressed').css('opacity', 0);
                $('.background').css('fill', 'lime');
            } else {
                $('.pressed').css('opacity', 0);
                $('.unpressed').css('opacity', 1);
                $('.background').css('fill', 'black');
            }
                
            });
        });

    </script>

</hab-climb>