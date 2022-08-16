-module(maislurp-client-erlang_webhook_header_name_value).

-export([encode/1]).

-export_type([maislurp-client-erlang_webhook_header_name_value/0]).

-type maislurp-client-erlang_webhook_header_name_value() ::
    #{ 'name' := binary(),
       'value' := binary()
     }.

encode(#{ 'name' := Name,
          'value' := Value
        }) ->
    #{ 'name' => Name,
       'value' => Value
     }.
