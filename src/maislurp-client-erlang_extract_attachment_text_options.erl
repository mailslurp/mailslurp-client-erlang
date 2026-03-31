-module(maislurp-client-erlang_extract_attachment_text_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_extract_attachment_text_options/0]).

-type maislurp-client-erlang_extract_attachment_text_options() ::
    #{ 'method' => binary(),
       'allowFallback' => boolean(),
       'maxBytes' => integer()
     }.

encode(#{ 'method' := Method,
          'allowFallback' := AllowFallback,
          'maxBytes' := MaxBytes
        }) ->
    #{ 'method' => Method,
       'allowFallback' => AllowFallback,
       'maxBytes' => MaxBytes
     }.
