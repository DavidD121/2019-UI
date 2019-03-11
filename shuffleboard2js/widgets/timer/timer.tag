<timer>
    <svg height = '100%' width = '100%'>
        <rect class = 'color' height = '100%' width = '100%' fill = 'rgb(255,0,0)'/>
        <text text-align = 'center' y = '25%'>
                <tspan dy="-10%">Time Remaining:</tspan>
                <tspan font-size = '70' x = '25%' dy="55%"> {minutes} : {seconds}</tspan>
        </text>
    </svg>


    <script>

        this.on('update', () => {
            if(this.opts.table > 0) {
                this.minutes = Math.floor(this.opts.table / 60).toString();
                this.seconds = Math.floor(this.opts.table % 60).toString();
                if (this.seconds < 10) {
                    this.seconds = '0' + this.seconds;
                }
            } else { 
                this.minutes = '0';
                this.seconds = '00';
            }

            //color cycle
            var init_time = 120;
            var green = (this.opts.table/init_time) * 255;
            var red = (1 - this.opts.table/init_time) * 255;
            $('.color').css('fill', 'rgb('+red+','+green+',0)');
        }); 

        
    </script>
</timer>