-module(maislurp-client-erlang_contact_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_contact_projection/0]).

-type maislurp-client-erlang_contact_projection() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'groupId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'emailAddresses' => list(),
       'optOut' := boolean(),
       'firstName' => binary(),
       'lastName' => binary(),
       'company' => binary()
     }.

encode(#{ 'id' := Id,
          'groupId' := GroupId,
          'createdAt' := CreatedAt,
          'emailAddresses' := EmailAddresses,
          'optOut' := OptOut,
          'firstName' := FirstName,
          'lastName' := LastName,
          'company' := Company
        }) ->
    #{ 'id' => Id,
       'groupId' => GroupId,
       'createdAt' => CreatedAt,
       'emailAddresses' => EmailAddresses,
       'optOut' => OptOut,
       'firstName' => FirstName,
       'lastName' => LastName,
       'company' => Company
     }.
