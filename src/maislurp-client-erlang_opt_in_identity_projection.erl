-module(maislurp-client-erlang_opt_in_identity_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_opt_in_identity_projection/0]).

-type maislurp-client-erlang_opt_in_identity_projection() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'verified' => boolean(),
       'emailAddress' := binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'id' := Id,
          'verified' := Verified,
          'emailAddress' := EmailAddress,
          'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt
        }) ->
    #{ 'id' => Id,
       'verified' => Verified,
       'emailAddress' => EmailAddress,
       'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt
     }.
