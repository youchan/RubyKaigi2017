eval$s=%w(
  s=%(eval$s=%w(#{$s})*"");

  d = 
"BAhbJiIdAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIh0AAAAAAAAfgAAAAAAAAAAAAAHwAAAAfAAiHQf/wAAAAB+AAAAAAfgH8AAAA/AAAAD8ACIdB//wAAAAH4AAAAAB+A/gAAAD8AAAAPwAIh0H//gAAAAfgAAAAAH4P8AAAAPwAAAA/AAiHQf//AAAAB8AAAAAAfh/gAAAAsAAAACQACIdD+v8AAAAHwAAAAAD8P8AAAAAAAAAAAAAIh0PwPwfgfg/HwHwB+Px/ABf4AfgD4/B+AAiHQ/A/B+B+D9/wfgPw/P4Af/4B+A/78H4ACIdD8D8PwHwP//A+A/D//AB//wH4H//gfAAIh0PwfgfA/A//+D4H4f/4AH//AfA//+B8AAiHR+D+D8D8D/H4PgfB/+AAQD8B8H8f4HwACIdH//wPwPwfwfw/D8H/wAAAH4Pwfg/g/AAIh0f/8A/A/B+A+B8Pgf/AAB//g/D8B+D8AAiHR//gD4D4H4D8Hx+B/+AAf/8D8PwPwPwACIdH//APgPgfAPwfHwH/4AH//wPg+AfA+AAIh0/j+B+B+B8A+B8/A/fwAf2/B+H4D8D4AAiHT8H4H4H4PwH4Hz4D8/gD8D8D4fgPwfgACIdPwPwfgfg/AfgP/gPx/APgPwfh+A/B+AAIh0/A/B+D+D+D8A/8A/D+A+B+B+H4H8H4AAiHX8D8H4fwP4/wD/gH8H8H8P4Hwf4/gfAACIdfgH4f//A//+AH+AfgfwP//gfA//+B8AAIh1+Afh//8D//wAfwB+A/g//+D8B//4PwAAiHX4B+D/vgfv+AB/AH4B/B/n4PwH/fg/AACIdfgH4H4/B+fgAH4AfgD+D8fA/AHx8D8AAIh0AAAAAAAAAAAAfAAAAAAAAAAAAAPwAAAAiHQAAAAAAAAAAAB8AAAAAAAAAAAAA/AAAACIdAAAAAAAAAAAAPgAAAAAAAAAABgP4AAAAIh0AAAAAAAAAAAP+AAAAAAAAAAAH//AAAAAiHQAAAAAAAAAAB/wAAAAAAAAAAAf/4AAAACIdAAAAAAAAAAAH+AAAAAAAAAAAB//AAAAAIh0AAAAAAAAAAAfgAAAAAAAAAAAD/gAAAAAiHQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA==";

  index = 0;
  f = -> n { b=s.slice(index, n); index += 1; b };

  require('base64');
  require('drb/websocket/server');

  ARGV[0] != 'server' && proc {
    Marshal.load(Base64.decode64(d)).each {|line|
      line.chars.each {|char|
        byte = char.bytes[0];
        8.times {|i|
          print((byte & (1 << (7 - i))) > 0 ? f[1] : "\s");
        }
      };
      puts
    }
  }.call;

  ARGV[0] == 'server' && proc{
    require('drb/drb');
    r = -> { s };

    DRb.start_service(ARGV[1], r);
    DRb.thread.join
  }.call;

  "*************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************";

  "RubyKaigi\s2017\sSep.18th-20th\sInternational\sConference\sCenter\sHiroshima,\sHiroshima,\sJapan";
)*""
