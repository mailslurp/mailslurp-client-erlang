-module(maislurp-client-erlang_create_connector_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_create_connector_options/0]).

-type maislurp-client-erlang_create_connector_options() ::
    #{ 'name' => binary(),
       'emailAddress' => binary(),
       'enabled' => boolean()
     }.

encode(#{ 'name' := Name,
          'emailAddress' := EmailAddress,
          'enabled' := Enabled
        }) ->
    #{ 'name' => Name,
       'emailAddress' => EmailAddress,
       'enabled' => Enabled
     }.
