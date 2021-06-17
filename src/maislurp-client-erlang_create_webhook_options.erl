-module(maislurp-client-erlang_create_webhook_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_create_webhook_options/0]).

-type maislurp-client-erlang_create_webhook_options() ::
    #{ 'basicAuth' => maislurp-client-erlang_basic_auth_options:maislurp-client-erlang_basic_auth_options(),
       'eventName' => binary(),
       'name' => binary(),
       'url' => binary()
     }.

encode(#{ 'basicAuth' := BasicAuth,
          'eventName' := EventName,
          'name' := Name,
          'url' := Url
        }) ->
    #{ 'basicAuth' => BasicAuth,
       'eventName' => EventName,
       'name' => Name,
       'url' => Url
     }.
