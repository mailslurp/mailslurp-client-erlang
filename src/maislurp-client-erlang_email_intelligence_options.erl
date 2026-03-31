-module(maislurp-client-erlang_email_intelligence_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_intelligence_options/0]).

-type maislurp-client-erlang_email_intelligence_options() ::
    #{ 'targets' := list(),
       'page' => integer(),
       'size' => integer(),
       'ignoreCache' => boolean(),
       'includeEmailValidation' => boolean(),
       'tests' => maislurp-client-erlang_email_intelligence_tests_options:maislurp-client-erlang_email_intelligence_tests_options()
     }.

encode(#{ 'targets' := Targets,
          'page' := Page,
          'size' := Size,
          'ignoreCache' := IgnoreCache,
          'includeEmailValidation' := IncludeEmailValidation,
          'tests' := Tests
        }) ->
    #{ 'targets' => Targets,
       'page' => Page,
       'size' => Size,
       'ignoreCache' => IgnoreCache,
       'includeEmailValidation' => IncludeEmailValidation,
       'tests' => Tests
     }.
