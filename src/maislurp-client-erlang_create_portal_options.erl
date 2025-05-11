-module(maislurp-client-erlang_create_portal_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_create_portal_options/0]).

-type maislurp-client-erlang_create_portal_options() ::
    #{ 'name' => binary(),
       'domainId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'description' => binary(),
       'linkHelp' => binary()
     }.

encode(#{ 'name' := Name,
          'domainId' := DomainId,
          'description' := Description,
          'linkHelp' := LinkHelp
        }) ->
    #{ 'name' => Name,
       'domainId' => DomainId,
       'description' => Description,
       'linkHelp' => LinkHelp
     }.
