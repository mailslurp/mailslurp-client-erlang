-module(maislurp-client-erlang_contact_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_contact_projection/0]).

-type maislurp-client-erlang_contact_projection() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'groupId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'firstName' => binary(),
       'lastName' => binary(),
       'company' => binary(),
       'emailAddresses' => list(),
       'optOut' := boolean()
     }.

encode(#{ 'id' := Id,
          'groupId' := GroupId,
          'createdAt' := CreatedAt,
          'firstName' := FirstName,
          'lastName' := LastName,
          'company' := Company,
          'emailAddresses' := EmailAddresses,
          'optOut' := OptOut
        }) ->
    #{ 'id' => Id,
       'groupId' => GroupId,
       'createdAt' => CreatedAt,
       'firstName' => FirstName,
       'lastName' => LastName,
       'company' => Company,
       'emailAddresses' => EmailAddresses,
       'optOut' => OptOut
     }.
