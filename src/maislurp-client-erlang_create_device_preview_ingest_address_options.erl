-module(maislurp-client-erlang_create_device_preview_ingest_address_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_create_device_preview_ingest_address_options/0]).

-type maislurp-client-erlang_create_device_preview_ingest_address_options() ::
    #{ 'options' => maislurp-client-erlang_create_device_preview_options:maislurp-client-erlang_create_device_preview_options()
     }.

encode(#{ 'options' := Options
        }) ->
    #{ 'options' => Options
     }.
