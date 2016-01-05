package Bencher::Scenario::PerinciEnvRes;

# DATE
# VERSION

our $scenario = {
    summary => 'Compare returning enveloped result vs naked/list',
    participants => [
        {name=>'envres'             , code_template => 'return [200, "OK", "foo"]'},
        {name=>'envres_with_resmeta', code_template => 'return [200, "OK", "foo", {}]'},
        {name=>'str'                , code_template => 'return "foo"'},
        {name=>'list'               , code_template => 'return (200, "OK", "foo")', result_is_list=>1},
    ],
};

# ABSTRACT:

=head1 SYNOPSIS
