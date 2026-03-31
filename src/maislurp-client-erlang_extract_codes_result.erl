-module(maislurp-client-erlang_extract_codes_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_extract_codes_result/0]).

-type maislurp-client-erlang_extract_codes_result() ::
    #{ 'found' := boolean(),
       'code' => binary(),
       'methodUsed' => binary(),
       'candidates' := list(),
       'warnings' := list()
     }.

encode(#{ 'found' := Found,
          'code' := Code,
          'methodUsed' := MethodUsed,
          'candidates' := Candidates,
          'warnings' := Warnings
        }) ->
    #{ 'found' => Found,
       'code' => Code,
       'methodUsed' => MethodUsed,
       'candidates' => Candidates,
       'warnings' => Warnings
     }.
