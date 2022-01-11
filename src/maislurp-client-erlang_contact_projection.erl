-module(maislurp-client-erlang_contact_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_contact_projection/0]).

-type maislurp-client-erlang_contact_projection() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'groupId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'firstName' => binary(),
       'lastName' => binary(),
       'company' => binary(),
       'emailAddresses' => maislurp-client-erlang_set:maislurp-client-erlang_set(),
       'optOut' => boolean()
     }.

encode(#{ 'id' := Id,
          'createdAt' := CreatedAt,
          'groupId' := GroupId,
          'firstName' := FirstName,
          'lastName' := LastName,
          'company' := Company,
          'emailAddresses' := EmailAddresses,
          'optOut' := OptOut
        }) ->
    #{ 'id' => Id,
       'createdAt' => CreatedAt,
       'groupId' => GroupId,
       'firstName' => FirstName,
       'lastName' => LastName,
       'company' => Company,
       'emailAddresses' => EmailAddresses,
       'optOut' => OptOut
     }.
