-module(maislurp-client-erlang_get_next_agent_work_item_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_get_next_agent_work_item_options/0]).

-type maislurp-client-erlang_get_next_agent_work_item_options() ::
    #{ 'workerId' := binary(),
       'leaseSeconds' := integer(),
       'cursor' => binary(),
       'inboxId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'hasAttachments' => boolean()
     }.

encode(#{ 'workerId' := WorkerId,
          'leaseSeconds' := LeaseSeconds,
          'cursor' := Cursor,
          'inboxId' := InboxId,
          'hasAttachments' := HasAttachments
        }) ->
    #{ 'workerId' => WorkerId,
       'leaseSeconds' => LeaseSeconds,
       'cursor' => Cursor,
       'inboxId' => InboxId,
       'hasAttachments' => HasAttachments
     }.
