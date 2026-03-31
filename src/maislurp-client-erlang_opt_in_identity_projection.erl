-module(maislurp-client-erlang_opt_in_identity_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_opt_in_identity_projection/0]).

-type maislurp-client-erlang_opt_in_identity_projection() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'verified' => boolean(),
       'emailAddress' := binary(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'id' := Id,
          'verified' := Verified,
          'emailAddress' := EmailAddress,
          'updatedAt' := UpdatedAt,
          'createdAt' := CreatedAt
        }) ->
    #{ 'id' => Id,
       'verified' => Verified,
       'emailAddress' => EmailAddress,
       'updatedAt' => UpdatedAt,
       'createdAt' => CreatedAt
     }.
