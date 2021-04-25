-module(maislurp-client-erlang_contact_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_contact_projection/0]).

-type maislurp-client-erlang_contact_projection() ::
    #{ 'company' => binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'emailAddresses' => list(),
       'firstName' => binary(),
       'groupId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'lastName' => binary(),
       'optOut' => boolean()
     }.

encode(#{ 'company' := Company,
          'createdAt' := CreatedAt,
          'emailAddresses' := EmailAddresses,
          'firstName' := FirstName,
          'groupId' := GroupId,
          'id' := Id,
          'lastName' := LastName,
          'optOut' := OptOut
        }) ->
    #{ 'company' => Company,
       'createdAt' => CreatedAt,
       'emailAddresses' => EmailAddresses,
       'firstName' => FirstName,
       'groupId' => GroupId,
       'id' => Id,
       'lastName' => LastName,
       'optOut' => OptOut
     }.
