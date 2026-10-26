-module(maislurp-client-erlang_create_device_preview_import_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_create_device_preview_import_options/0]).

-type maislurp-client-erlang_create_device_preview_import_options() ::
    #{ 'rawEmailBase64' := binary(),
       'sourceAlias' => binary(),
       'externalId' => binary(),
       'options' => maislurp-client-erlang_create_device_preview_options:maislurp-client-erlang_create_device_preview_options()
     }.

encode(#{ 'rawEmailBase64' := RawEmailBase64,
          'sourceAlias' := SourceAlias,
          'externalId' := ExternalId,
          'options' := Options
        }) ->
    #{ 'rawEmailBase64' => RawEmailBase64,
       'sourceAlias' => SourceAlias,
       'externalId' => ExternalId,
       'options' => Options
     }.
