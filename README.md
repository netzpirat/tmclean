# Time Machine Clean

Clean old Time Machine backups with ease! You know, when you have backups from several machines on a single drive and
not a single one wants to backup anymore...

## Installation

Simply install from [RubyGems](https://rubygems.org/):

```Bash
$ gem install tmclean
```

## Usage

See the usage by just type `tmclean`:

```Bash
$ tmclean                                                                                                                                                          ruby-1.9.3-p194 1↵
Usage: tmclean last <number>
       tmclean keep <number>
       tmclean until <date description>
```

TMClean requires root privileges to delete the Time Machine backups. If you use [RVM](https://rvm.io/),
then you simply can use `rvmsudo`, otherwise use `sudo su -`.

### Last

You can say how many backups you want to remove from Time Machine:

```Bash
$ rvmsudo tmclean last 2
Getting the list of backups. Hold on a moment...

Keep 53 recent backups.
Delete the following backups:

/Volumes/Time Machine Backups/Backups.backupdb/otherland/2011-12-16-004025
/Volumes/Time Machine Backups/Backups.backupdb/otherland/2011-12-23-002310

Are you sure to delete these backups? (Y/N)

Deleting backups. You may want to grab some coffees, I'll take ages...

Delete /Volumes/Time Machine Backups/Backups.backupdb/otherland/2011-12-16-004025
Delete /Volumes/Time Machine Backups/Backups.backupdb/otherland/2011-12-23-002310

Done.
```

### Keep

You can say how many backups you want to keep, the rest is removed from Time Machine:

```Bash
$ rvmsudo tmclean keep 50
Getting the list of backups. Hold on a moment...

Keep 50 recent backups.
Delete the following backups:

/Volumes/Time Machine Backups/Backups.backupdb/otherland/2011-12-30-000535
/Volumes/Time Machine Backups/Backups.backupdb/otherland/2012-01-07-174853
/Volumes/Time Machine Backups/Backups.backupdb/otherland/2012-01-15-001309

Are you sure to delete these backups? (Y/N)

Deleting backups. You may want to grab some coffees, I'll take ages...

Delete /Volumes/Time Machine Backups/Backups.backupdb/otherland/2011-12-30-000535
Delete /Volumes/Time Machine Backups/Backups.backupdb/otherland/2012-01-07-174853
Delete /Volumes/Time Machine Backups/Backups.backupdb/otherland/2012-01-15-001309

Done.
```

### Until

You can say which date the backups should be removed from Time Machine:

```Bash
$ rvmsudo tmclean until 3 months ago
Getting the list of backups. Hold on a moment...

Keep 36 recent backups.
Delete the following backups:

/Volumes/Time Machine Backups/Backups.backupdb/otherland/2012-01-22-200324
/Volumes/Time Machine Backups/Backups.backupdb/otherland/2012-01-29-204948
/Volumes/Time Machine Backups/Backups.backupdb/otherland/2012-02-11-202151
/Volumes/Time Machine Backups/Backups.backupdb/otherland/2012-02-18-200728
/Volumes/Time Machine Backups/Backups.backupdb/otherland/2012-02-25-201024
/Volumes/Time Machine Backups/Backups.backupdb/otherland/2012-03-03-200513
/Volumes/Time Machine Backups/Backups.backupdb/otherland/2012-03-10-200939
/Volumes/Time Machine Backups/Backups.backupdb/otherland/2012-03-17-200645
/Volumes/Time Machine Backups/Backups.backupdb/otherland/2012-03-24-200450
/Volumes/Time Machine Backups/Backups.backupdb/otherland/2012-03-31-200929
/Volumes/Time Machine Backups/Backups.backupdb/otherland/2012-04-07-200722
/Volumes/Time Machine Backups/Backups.backupdb/otherland/2012-04-18-201209
/Volumes/Time Machine Backups/Backups.backupdb/otherland/2012-04-25-201422
/Volumes/Time Machine Backups/Backups.backupdb/otherland/2012-05-08-201136

Are you sure to delete these backups? (Y/N)
Cancelled.
```

## Author

Developed by Michael Kessler, sponsored by [mksoft.ch](https://mksoft.ch).

If you like TMClean, you can watch the repository at [GitHub](https://github.com/netzpirat/tmclean) and
follow [@netzpirat](https://twitter.com/#!/netzpirat) on Twitter for project updates.

## License

(The MIT License)

Copyright (c) 2012 Michael Kessler

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
