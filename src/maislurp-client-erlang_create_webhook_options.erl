-module(maislurp-client-erlang_create_webhook_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_create_webhook_options/0]).

-type maislurp-client-erlang_create_webhook_options() ::
    #{ 'url' := binary(),
       'basicAuth' => maislurp-client-erlang_basic_auth_options:maislurp-client-erlang_basic_auth_options(),
       'name' => binary(),
       'eventName' => binary()
     }.

encode(#{ 'url' := Url,
          'basicAuth' := BasicAuth,
          'name' := Name,
          'eventName' := EventName
        }) ->
    #{ 'url' => Url,
       'basicAuth' => BasicAuth,
       'name' => Name,
       'eventName' => EventName
     }.
