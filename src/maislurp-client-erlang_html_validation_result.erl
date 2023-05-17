-module(maislurp-client-erlang_html_validation_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_html_validation_result/0]).

-type maislurp-client-erlang_html_validation_result() ::
    #{ 'isValid' := boolean(),
       'errors' := list(),
       'warnings' := list()
     }.

encode(#{ 'isValid' := IsValid,
          'errors' := Errors,
          'warnings' := Warnings
        }) ->
    #{ 'isValid' => IsValid,
       'errors' => Errors,
       'warnings' => Warnings
     }.
