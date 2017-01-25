package Bencher::Scenario::PerinciExamples::Startup;

# DATE
# VERSION

our $scenario = {
    summary => 'Benchmark startup overhead of Perinci::Examples modules',
    modules => {
        # minimum versions
        'Perinci::Examples' => {version=>'0.79'},
        'Perinci::Examples::Tiny' => {version=>'0.79'},
    },
    module_startup => 1,
    participants => [
        {module=>'Perinci::Examples'},
        {module=>'Perinci::Examples::Tiny'},
        {module=>'Perinci::Examples::CLI'},
    ],
};

1;
# ABSTRACT:
