<arm-adjust>
    <svg width = '100%' height = "100%">
        <text font-size = "30" y= '25%' > Max: {this.opts.table.max}</text>
        <text font-size = "30" y= '70%' > Min: {this.opts.table.min}</text>
        <rect x = '50%' width="40%" height="40%" style="fill:rgb(0,0,255);stroke-width:3;stroke:rgb(0,0,0)" />
        <rect x = '50%' y = '45%' width="40%" height="40%" style="fill:rgb(0,0,255);stroke-width:3;stroke:rgb(0,0,0)" />
        <text font-size = "200%" x = "60%" y= '25%' fill = 'white' > UP</text>
        <text font-size = "200%" x = '50%' y= '70%' fill = 'white'> DOWN</text>
        <rect class = 'up-button' x = '50%' width="40%" height="40%" style="fill-opacity: 0;stroke-width:3;stroke:rgb(0,0,0)" />
        <rect class = 'down-button' x = '50%' y = '45%' width="40%" height="40%" style="fill-opacity: 0;stroke-width:3;stroke:rgb(0,0,0)" />
        

    </svg>

    <script>
        this.on('mount', () => {
            $('.up-button').on('click', () => {
                console.log('up');
                NetworkTables.putValue(this.opts.ntRoot + 'max', this.opts.table.max + this.opts.table.adjust_value);     
                NetworkTables.putValue(this.opts.ntRoot + 'min', this.opts.table.min + this.opts.table.adjust_value);

            });

            $('.down-button').on('click', () => {
                console.log('down');
                NetworkTables.putValue(this.opts.ntRoot + 'max', this.opts.table.max - this.opts.table.adjust_value);     
                NetworkTables.putValue(this.opts.ntRoot + 'min', this.opts.table.min - this.opts.table.adjust_value);
            });


        });
    </script>
</arm-adjust>