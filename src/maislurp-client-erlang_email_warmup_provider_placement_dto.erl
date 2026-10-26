-module(maislurp-client-erlang_email_warmup_provider_placement_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_warmup_provider_placement_dto/0]).

-type maislurp-client-erlang_email_warmup_provider_placement_dto() ::
    #{ 'provider' := binary(),
       'totalCount' := integer(),
       'inboxCount' := integer(),
       'spamCount' := integer(),
       'notReceivedCount' := integer(),
       'inboxPercent' := integer()
     }.

encode(#{ 'provider' := Provider,
          'totalCount' := TotalCount,
          'inboxCount' := InboxCount,
          'spamCount' := SpamCount,
          'notReceivedCount' := NotReceivedCount,
          'inboxPercent' := InboxPercent
        }) ->
    #{ 'provider' => Provider,
       'totalCount' => TotalCount,
       'inboxCount' => InboxCount,
       'spamCount' => SpamCount,
       'notReceivedCount' => NotReceivedCount,
       'inboxPercent' => InboxPercent
     }.
