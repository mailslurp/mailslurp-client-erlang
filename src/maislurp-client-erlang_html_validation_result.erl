-module(maislurp-client-erlang_html_validation_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_html_validation_result/0]).

-type maislurp-client-erlang_html_validation_result() ::
    #{ 'errors' => list(),
       'isValid' => boolean(),
       'warnings' => list()
     }.

encode(#{ 'errors' := Errors,
          'isValid' := IsValid,
          'warnings' := Warnings
        }) ->
    #{ 'errors' => Errors,
       'isValid' => IsValid,
       'warnings' => Warnings
     }.
