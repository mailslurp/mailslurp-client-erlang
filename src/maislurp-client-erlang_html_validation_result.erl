-module(maislurp-client-erlang_html_validation_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_html_validation_result/0]).

-type maislurp-client-erlang_html_validation_result() ::
    #{ 'isValid' := boolean(),
       'infos' := list(),
       'errors' := list(),
       'warnings' := list()
     }.

encode(#{ 'isValid' := IsValid,
          'infos' := Infos,
          'errors' := Errors,
          'warnings' := Warnings
        }) ->
    #{ 'isValid' => IsValid,
       'infos' => Infos,
       'errors' => Errors,
       'warnings' => Warnings
     }.
