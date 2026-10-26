-module(maislurp-client-erlang_wait_for_ai_messages_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_wait_for_ai_messages_options/0]).

-type maislurp-client-erlang_wait_for_ai_messages_options() ::
    #{ 'expectations' := list(),
       'since' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'timeout' := integer(),
       'before' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'allowSharedMessages' := boolean(),
       'aiOptions' := maislurp-client-erlang_a_i_message_ai_options:maislurp-client-erlang_a_i_message_ai_options()
     }.

encode(#{ 'expectations' := Expectations,
          'since' := Since,
          'timeout' := Timeout,
          'before' := Before,
          'allowSharedMessages' := AllowSharedMessages,
          'aiOptions' := AiOptions
        }) ->
    #{ 'expectations' => Expectations,
       'since' => Since,
       'timeout' => Timeout,
       'before' => Before,
       'allowSharedMessages' => AllowSharedMessages,
       'aiOptions' => AiOptions
     }.
