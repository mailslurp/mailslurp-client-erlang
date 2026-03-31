-module(maislurp-client-erlang_create_phone_provisioning_job_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_create_phone_provisioning_job_options/0]).

-type maislurp-client-erlang_create_phone_provisioning_job_options() ::
    #{ 'phoneCountry' := binary(),
       'phoneVariant' => binary(),
       'items' := list()
     }.

encode(#{ 'phoneCountry' := PhoneCountry,
          'phoneVariant' := PhoneVariant,
          'items' := Items
        }) ->
    #{ 'phoneCountry' => PhoneCountry,
       'phoneVariant' => PhoneVariant,
       'items' => Items
     }.
