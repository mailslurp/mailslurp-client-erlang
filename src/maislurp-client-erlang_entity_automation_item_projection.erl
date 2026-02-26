-module(maislurp-client-erlang_entity_automation_item_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_entity_automation_item_projection/0]).

-type maislurp-client-erlang_entity_automation_item_projection() ::
    #{ 'inboxId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'phoneId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'action' => binary(),
       'automationType' := binary(),
       'name' => binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'inboxId' := InboxId,
          'phoneId' := PhoneId,
          'action' := Action,
          'automationType' := AutomationType,
          'name' := Name,
          'id' := Id
        }) ->
    #{ 'inboxId' => InboxId,
       'phoneId' => PhoneId,
       'action' => Action,
       'automationType' => AutomationType,
       'name' => Name,
       'id' => Id
     }.
