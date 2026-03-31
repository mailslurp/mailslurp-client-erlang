-module(maislurp-client-erlang_create_device_preview_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_create_device_preview_options/0]).

-type maislurp-client-erlang_create_device_preview_options() ::
    #{ 'providers' => list(),
       'includeAllConfiguredProviders' => boolean()
     }.

encode(#{ 'providers' := Providers,
          'includeAllConfiguredProviders' := IncludeAllConfiguredProviders
        }) ->
    #{ 'providers' => Providers,
       'includeAllConfiguredProviders' => IncludeAllConfiguredProviders
     }.
