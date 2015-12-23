package Bencher::Scenario::Perinci::Sub::Normalize;

# DATE
# VERSION

our $scenario = {
    summary => 'Benchmark normalizing Rinci function metadata',
    participants => [
        {
            fcall_template => 'Perinci::Sub::Normalize::normalize_function_metadata(<meta>)'
        },
    ],
    datasets => [

        {
            name    => 'minimal',
            summary => 'Only contains v=>1.1',
            args    => {
                meta => {
                    v => 1.1,
                },
            },
        },

        {
            name => '0args',
            args => {
                meta => {
                    v => 1.1,
                    summary => 'Some summary',
                    description => <<'_',

Some description. Some description. Some description. Some description. Some
description. Some description. Some description. Some description. Some
description.

_
                    args => {},
                },
            },
        },

        {
            name => '1arg',
            args => {
                meta => {
                    v => 1.1,
                    summary => 'Some summary',
                    description => <<'_',

Some description. Some description. Some description. Some description. Some
description. Some description. Some description. Some description. Some
description.

_
                    args => {
                        arg1 => {
                            summary => 'Some summary',
                            schema => 'str*',
                            req => 1,
                            pos => 0,
                        },
                    },
                },
            },
        },

        {
            name => 'typical',
            summary => '5 arguments',
            args => {
                meta => {
                    v => 1.1,
                    summary => 'Some summary',
                    description => <<'_',

Some description. Some description. Some description. Some description. Some
description. Some description. Some description. Some description. Some
description.

_
                    args => {
                        arg1 => {
                            summary => 'Some summary',
                            schema => 'str*',
                            req => 1,
                            pos => 0,
                        },
                        arg2 => {
                            summary => 'Some summary',
                            schema => ['array*' => of => 'str*', min_len=>1],
                            req => 1,
                            pos => 1,
                            greedy => 1,
                        },
                        arg3 => {
                            summary => 'Some summary',
                            schema => ['int*', min=>1, max=>100],
                            req => 1,
                        },
                        arg4 => {
                            summary => 'Some summary',
                            schema => [bool => is=>1],
                            cmdline_aliases => {f=>{is_flag=>1}},
                        },
                        arg5 => {
                            summary => 'Some summary',
                            schema => 'hash*',
                        },
                    },
                },
            },
        },

    ],
};

1;
