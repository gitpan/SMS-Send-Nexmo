#! /usr/bin/env perl

use Modern::Perl;
use SMS::Send;

my @drivers = SMS::Send->installed_drivers;

say @drivers;

my $sender = SMS::Send->new('Nexmo',
   _username => '31598cf1',
   _password => 'ea8ec5c2',
   _from => '+31715143971',
   );
   
my $sent = $sender->send_sms(
   text => 'try me',
   to   => '+31645742418',
   );
if ($sent) { say "Ya";} else { say "Na";}
