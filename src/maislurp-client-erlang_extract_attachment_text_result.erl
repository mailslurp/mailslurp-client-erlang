-module(maislurp-client-erlang_extract_attachment_text_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_extract_attachment_text_result/0]).

-type maislurp-client-erlang_extract_attachment_text_result() ::
    #{ 'present' := boolean(),
       'text' => binary(),
       'methodUsed' => binary(),
       'contentType' => binary(),
       'warnings' := list()
     }.

encode(#{ 'present' := Present,
          'text' := Text,
          'methodUsed' := MethodUsed,
          'contentType' := ContentType,
          'warnings' := Warnings
        }) ->
    #{ 'present' => Present,
       'text' => Text,
       'methodUsed' => MethodUsed,
       'contentType' => ContentType,
       'warnings' => Warnings
     }.
