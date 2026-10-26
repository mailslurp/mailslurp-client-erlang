-module(maislurp-client-erlang_update_device_preview_profile_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_update_device_preview_profile_options/0]).

-type maislurp-client-erlang_update_device_preview_profile_options() ::
    #{ 'localPart' => binary(),
       'displayName' => binary(),
       'options' => maislurp-client-erlang_create_device_preview_options:maislurp-client-erlang_create_device_preview_options(),
       'enabled' => boolean()
     }.

encode(#{ 'localPart' := LocalPart,
          'displayName' := DisplayName,
          'options' := Options,
          'enabled' := Enabled
        }) ->
    #{ 'localPart' => LocalPart,
       'displayName' => DisplayName,
       'options' => Options,
       'enabled' => Enabled
     }.
