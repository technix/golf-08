use 5.006;
use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'golf-08',
    AUTHOR              => q{Vladimir Lettiev <crux@cpan.org>},
    VERSION             => '0.03',
    ABSTRACT            => 'Golf 08',
    BUILD_REQUIRES      => {
        'IPC::Run' => '0.92',
    },
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
    EXE_FILES           => [ <script/*.pl> ],
    PREREQ_PM => {
        'Test::More' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'golf-08-*' },
);
