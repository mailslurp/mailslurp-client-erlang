-module(maislurp-client-erlang_reputation_item_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_reputation_item_projection/0]).

-type maislurp-client-erlang_reputation_item_projection() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'severity' := binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'recipient' => binary(),
       'reputationType' := binary(),
       'source' => binary()
     }.

encode(#{ 'id' := Id,
          'severity' := Severity,
          'createdAt' := CreatedAt,
          'recipient' := Recipient,
          'reputationType' := ReputationType,
          'source' := Source
        }) ->
    #{ 'id' => Id,
       'severity' => Severity,
       'createdAt' => CreatedAt,
       'recipient' => Recipient,
       'reputationType' => ReputationType,
       'source' => Source
     }.
