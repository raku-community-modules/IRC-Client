use Data::Dump;
use IRC::Client::Plugin;
unit class IRC::Client::Plugin::Debugger:ver<1.002001> is IRC::Client::Plugin;

method irc-all-events ($irc, $e) {
    say Dump $e, :indent(4);
    return IRC_NOT_HANDLED;
}