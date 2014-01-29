# EverydayCurses

A utility for handling some curses stuff more easily.  Split out from everyday-cli-utils.

## Installation

Add this line to your application's Gemfile:

    gem 'everyday-curses'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install everyday-curses

## Usage

###EverydayCurses::MyCurses

Encapsulates the code for dealing with the curses library.

###Fields:
####MyCurses.headers
An array storing the header lines that will be printed out with `MyCurses.myprints`.

####MyCurses.bodies
An array storing the body lines that will be printed out with `MyCurses.myprints`.

####MyCurses.footers
An array storing the footer lines that will be printed out with `MyCurses.myprints`.

###Methods:

####MyCurses.new(use\_curses, linesh, linesf)
Initializes the class and sets the basic options.

######Parameters
* `use_curses`: `true` to use curses, `false` to use `puts`
* `linesh`: the number of header lines
* `linesf`: the number of footer lines

####MyCurses.clear
Clear the `headers`, `bodies`, and `footers` arrays

####MyCurses.myprints
Print out all of the lines stored in the `headers`, `bodies`, and `footers` arrays.  If `use_curses` is `true`, it will use curses and allow for scrolling.  Otherwise, it will just print out all of the lines with `puts`

####MyCurses.read\_ch
Update the character from the body pad.

####MyCurses.clear\_ch
Clear out any newline, ENTER, UP, or DOWN characters from the queue.

####MyCurses.scroll\_iteration
Update the display (including doing any scrolling) and read the next character.

####MyCurses.header\_live\_append(str)
Append `str` to the header pad immediately and update it.  Does not modify the `headers` array.

######Parameters
* `str`: the string to append

####MyCurses.body\_live\_append(str)
Append `str` to the body pad immediately and update it.  Does not modify the `bodies` array.

######Parameters
* `str`: the string to append

####MyCurses.footer\_live\_append(str)
Append `str` to the footer pad immediately and update it.  Does not modify the `footers` array.

######Parameters
* `str`: the string to append

####MyCurses.dispose
Close out the curses screen if curses was used.

## Contributing

1. Fork it ( http://github.com/<my-github-username>/everyday-curses/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
