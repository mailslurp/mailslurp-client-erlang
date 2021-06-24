-module(maislurp-client-erlang_match_option).

-export([encode/1]).

-export_type([maislurp-client-erlang_match_option/0]).

-type maislurp-client-erlang_match_option() ::
    #{ 'field' => binary(),
       'should' => binary(),
       'value' => binary()
     }.

encode(#{ 'field' := Field,
          'should' := Should,
          'value' := Value
        }) ->
    #{ 'field' => Field,
       'should' => Should,
       'value' => Value
     }.
