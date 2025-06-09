-module(maislurp-client-erlang_reputation_item_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_reputation_item_projection/0]).

-type maislurp-client-erlang_reputation_item_projection() ::
    #{ 'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'recipient' => binary(),
       'reputationType' := binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'severity' := binary(),
       'source' => binary()
     }.

encode(#{ 'createdAt' := CreatedAt,
          'recipient' := Recipient,
          'reputationType' := ReputationType,
          'id' := Id,
          'severity' := Severity,
          'source' := Source
        }) ->
    #{ 'createdAt' => CreatedAt,
       'recipient' => Recipient,
       'reputationType' => ReputationType,
       'id' => Id,
       'severity' => Severity,
       'source' => Source
     }.
