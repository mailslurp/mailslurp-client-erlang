-module(maislurp-client-erlang_analyze_email_headers_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_analyze_email_headers_options/0]).

-type maislurp-client-erlang_analyze_email_headers_options() ::
    #{ 'rawHeaders' := binary()
     }.

encode(#{ 'rawHeaders' := RawHeaders
        }) ->
    #{ 'rawHeaders' => RawHeaders
     }.
