-module(maislurp-client-erlang_device_preview_account_settings_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_device_preview_account_settings_dto/0]).

-type maislurp-client-erlang_device_preview_account_settings_dto() ::
    #{ 'domain' := maislurp-client-erlang_device_preview_ingest_domain_dto:maislurp-client-erlang_device_preview_ingest_domain_dto(),
       'profiles' := list()
     }.

encode(#{ 'domain' := Domain,
          'profiles' := Profiles
        }) ->
    #{ 'domain' => Domain,
       'profiles' => Profiles
     }.
