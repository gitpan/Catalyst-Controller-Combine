
use strict;
use warnings;



use ExtUtils::MakeMaker 6.31;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'Catalyst::Controller::Combine',
                       'DISTNAME' => 'Catalyst-Controller-Combine',
                       'CONFIGURE_REQUIRES' => {
                                                 'ExtUtils::MakeMaker' => '6.31'
                                               },
                       'AUTHOR' => 'Wolfgang Kinkeldei <wolfgang@kinkeldei.de>',
                       'BUILD_REQUIRES' => {
                                             'DateTime' => '0',
                                             'Test::Exception' => '0',
                                             'namespace::autoclean' => '0',
                                             'FindBin' => '0',
                                             'Exporter' => '0',
                                             'Test::More' => '0',
                                             'DateTime::Duration' => '0',
                                             'Catalyst' => '0',
                                             'Path::Class::File' => '0',
                                             'Catalyst::Runtime' => '0',
                                             'Catalyst::Test' => '0'
                                           },
                       'ABSTRACT' => 'Combine JS/CSS Files',
                       'EXE_FILES' => [],
                       'VERSION' => '0.12',
                       'PREREQ_PM' => {
                                        'DateTime' => '0',
                                        'FindBin' => '1.47',
                                        'Test::Builder::Tester' => '1.18',
                                        'List::Util' => '1.21',
                                        'Test::Builder' => '0.86',
                                        'Text::Glob' => '0.08',
                                        'Moose' => '0.74',
                                        'Test::Harness' => '3.14',
                                        'Test::Exception' => '0.27',
                                        'namespace::autoclean' => '0.09',
                                        'Test::More' => '0.86',
                                        'Catalyst::Controller' => '0',
                                        'DateTime::Duration' => '0',
                                        'Path::Class' => '0.16',
                                        'Catalyst::Runtime' => '5.80',
                                        'File::stat' => '1.00'
                                      },
                       'LICENSE' => 'perl'
                     );


delete $WriteMakefileArgs{BUILD_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.56) };

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



