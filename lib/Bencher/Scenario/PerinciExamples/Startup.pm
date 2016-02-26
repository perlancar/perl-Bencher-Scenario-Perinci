package Bencher::Scenario::PerinciExamples::Startup;

# DATE
# VERSION

our $scenario = {
    summary => 'Benchmark startup overhead of Perinci::Examples modules',
    module_startup => 1,
    participants => [
        {module=>'Perinci::Examples'},
        {module=>'Perinci::Examples::Tiny'},
        {module=>'Perinci::Examples::CLI'},
    ],
};

1;
# ABSTRACT:
