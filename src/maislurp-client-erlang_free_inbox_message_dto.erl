-module(maislurp-client-erlang_free_inbox_message_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_free_inbox_message_dto/0]).

-type maislurp-client-erlang_free_inbox_message_dto() ::
    #{ 'id' := binary(),
       'sender' := binary(),
       'subject' := binary(),
       'text' := binary(),
       'receivedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'id' := Id,
          'sender' := Sender,
          'subject' := Subject,
          'text' := Text,
          'receivedAt' := ReceivedAt
        }) ->
    #{ 'id' => Id,
       'sender' => Sender,
       'subject' => Subject,
       'text' => Text,
       'receivedAt' => ReceivedAt
     }.
