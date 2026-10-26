-module(maislurp-client-erlang_create_device_preview_share_link_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_create_device_preview_share_link_options/0]).

-type maislurp-client-erlang_create_device_preview_share_link_options() ::
    #{ 'label' => binary(),
       'expiresAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'label' := Label,
          'expiresAt' := ExpiresAt
        }) ->
    #{ 'label' => Label,
       'expiresAt' => ExpiresAt
     }.
