use strict;
use warnings;

use Test::More;
use Test::Command::Simple;

my $CMD = 'pipx';

run_ok 1, $CMD;
like stdout, qr/^usage:\s+$CMD/, 'bare command, stdout';
cmp_ok stderr, 'eq', '', 'bare command, stderr';

run_ok $CMD, '--help';
like stdout, qr/^usage:\s+$CMD/, 'help, stdout';
cmp_ok stderr, 'eq', '', 'help, stderr';

run_ok $CMD, '--version';
like stdout, qr/^[\d.]+$/, 'version, stdout';
cmp_ok stderr, 'eq', '', 'version, stderr';

run_ok $CMD, 'list';
cmp_ok stdout, 'eq', '', 'list, stdout';
like stderr, qr/^nothing has been installed with pipx.*/, 'list, stderr';

done_testing;
