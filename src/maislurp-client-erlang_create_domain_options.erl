-module(maislurp-client-erlang_create_domain_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_create_domain_options/0]).

-type maislurp-client-erlang_create_domain_options() ::
    #{ 'createdCatchAllInbox' => boolean(),
       'description' => binary(),
       'domain' => binary()
     }.

encode(#{ 'createdCatchAllInbox' := CreatedCatchAllInbox,
          'description' := Description,
          'domain' := Domain
        }) ->
    #{ 'createdCatchAllInbox' => CreatedCatchAllInbox,
       'description' => Description,
       'domain' => Domain
     }.
