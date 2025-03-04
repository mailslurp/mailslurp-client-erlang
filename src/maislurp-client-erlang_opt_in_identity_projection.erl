-module(maislurp-client-erlang_opt_in_identity_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_opt_in_identity_projection/0]).

-type maislurp-client-erlang_opt_in_identity_projection() ::
    #{ 'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'emailAddress' := binary(),
       'verified' => boolean()
     }.

encode(#{ 'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt,
          'id' := Id,
          'emailAddress' := EmailAddress,
          'verified' := Verified
        }) ->
    #{ 'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt,
       'id' => Id,
       'emailAddress' => EmailAddress,
       'verified' => Verified
     }.
