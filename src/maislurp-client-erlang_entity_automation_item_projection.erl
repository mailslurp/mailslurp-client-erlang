-module(maislurp-client-erlang_entity_automation_item_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_entity_automation_item_projection/0]).

-type maislurp-client-erlang_entity_automation_item_projection() ::
    #{ 'inboxId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'action' => binary(),
       'phoneId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'automationType' := binary(),
       'name' => binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'inboxId' := InboxId,
          'action' := Action,
          'phoneId' := PhoneId,
          'automationType' := AutomationType,
          'name' := Name,
          'id' := Id
        }) ->
    #{ 'inboxId' => InboxId,
       'action' => Action,
       'phoneId' => PhoneId,
       'automationType' => AutomationType,
       'name' => Name,
       'id' => Id
     }.
