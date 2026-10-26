-module(maislurp-client-erlang_reputation_item_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_reputation_item_projection/0]).

-type maislurp-client-erlang_reputation_item_projection() ::
    #{ 'reputationType' := binary(),
       'severity' := binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'source' => binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'recipient' => binary()
     }.

encode(#{ 'reputationType' := ReputationType,
          'severity' := Severity,
          'id' := Id,
          'source' := Source,
          'createdAt' := CreatedAt,
          'recipient' := Recipient
        }) ->
    #{ 'reputationType' => ReputationType,
       'severity' => Severity,
       'id' => Id,
       'source' => Source,
       'createdAt' => CreatedAt,
       'recipient' => Recipient
     }.
