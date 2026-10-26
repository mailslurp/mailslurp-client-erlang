-module(maislurp-client-erlang_opt_in_identity_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_opt_in_identity_projection/0]).

-type maislurp-client-erlang_opt_in_identity_projection() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'emailAddress' := binary(),
       'verified' => boolean()
     }.

encode(#{ 'id' := Id,
          'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt,
          'emailAddress' := EmailAddress,
          'verified' := Verified
        }) ->
    #{ 'id' => Id,
       'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt,
       'emailAddress' => EmailAddress,
       'verified' => Verified
     }.
