-module(maislurp-client-erlang_html_validation_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_html_validation_result/0]).

-type maislurp-client-erlang_html_validation_result() ::
    #{ 'errors' => list(),
       'warnings' => list(),
       'valid' => boolean()
     }.

encode(#{ 'errors' := Errors,
          'warnings' := Warnings,
          'valid' := Valid
        }) ->
    #{ 'errors' => Errors,
       'warnings' => Warnings,
       'valid' => Valid
     }.
