-module(maislurp-client-erlang_code_candidate).

-export([encode/1]).

-export_type([maislurp-client-erlang_code_candidate/0]).

-type maislurp-client-erlang_code_candidate() ::
    #{ 'code' := binary(),
       'confidence' := float(),
       'method' := binary(),
       'source' := binary(),
       'context' => binary()
     }.

encode(#{ 'code' := Code,
          'confidence' := Confidence,
          'method' := Method,
          'source' := Source,
          'context' := Context
        }) ->
    #{ 'code' => Code,
       'confidence' => Confidence,
       'method' => Method,
       'source' => Source,
       'context' => Context
     }.
