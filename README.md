# myshifts.sh

I created this script as a way to quickly add
my shifts to my calendar, which I use via
[Khal](https://lostpackets.de/khal/index.html)
on a Mac and sync it with iCloud via
[vdirsyncer](https://vdirsyncer.pimutils.org/en/stable/index.html).

Then, because I've been studying bash scripting and want
practice, I went ahead and made it a little fancier by
putting configuration into a separate file etc.

Usage:

```
./myshifts.sh [date] [time]+
```

`[date]` sets the date of the first shift you're adding
then `[time]` sets the start time of your shift that day
then after that, each new `[time]` you add will create
a new shift the next day, and the next and so on, for as many
days as you like. For days you don't work, you will type `off`.

Use `myshifts.config.sample` to set stuff like what `dateformat`
you use in `khal`, whether or not you want it to sync `vdirsyncer`
after the script finishes, and things like which calendar you
want your events added to, the name of the events created, and
the length of your shifts.

For `[date]`, use `%m/%d`, for time, use `%H:%m`. In
`myshifts.config.sample`, you can set the `dateformat` to make
sure it'll match what you use in `khal`, and this script will
convert it to that. However, it won't do that for your `timeformat`,
so either edit the script yourself or make sure you use `%H:%m` as
your `timeformat` in `khal`, sorry...

**Example:**

```
./myshifts.sh 01/01 08:00 08:00 08:00 08:00 08:00 off off
```

Creates events from monday through friday starting at 8am, and
no events for saturday and sunday.

Thanks for stopping by.

\- Tiago Donato
