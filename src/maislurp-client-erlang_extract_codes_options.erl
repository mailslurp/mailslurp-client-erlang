-module(maislurp-client-erlang_extract_codes_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_extract_codes_options/0]).

-type maislurp-client-erlang_extract_codes_options() ::
    #{ 'method' => binary(),
       'allowFallback' => boolean(),
       'minLength' => integer(),
       'maxLength' => integer(),
       'maxCandidates' => integer(),
       'customPatterns' => list()
     }.

encode(#{ 'method' := Method,
          'allowFallback' := AllowFallback,
          'minLength' := MinLength,
          'maxLength' := MaxLength,
          'maxCandidates' := MaxCandidates,
          'customPatterns' := CustomPatterns
        }) ->
    #{ 'method' => Method,
       'allowFallback' => AllowFallback,
       'minLength' => MinLength,
       'maxLength' => MaxLength,
       'maxCandidates' => MaxCandidates,
       'customPatterns' => CustomPatterns
     }.
