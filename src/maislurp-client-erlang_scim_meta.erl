-module(maislurp-client-erlang_scim_meta).

-export([encode/1]).

-export_type([maislurp-client-erlang_scim_meta/0]).

-type maislurp-client-erlang_scim_meta() ::
    #{ 'resourceType' := binary(),
       'created' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'lastModified' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'location' => binary()
     }.

encode(#{ 'resourceType' := ResourceType,
          'created' := Created,
          'lastModified' := LastModified,
          'location' := Location
        }) ->
    #{ 'resourceType' => ResourceType,
       'created' => Created,
       'lastModified' => LastModified,
       'location' => Location
     }.
