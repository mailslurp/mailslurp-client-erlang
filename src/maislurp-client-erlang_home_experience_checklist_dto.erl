-module(maislurp-client-erlang_home_experience_checklist_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_home_experience_checklist_dto/0]).

-type maislurp-client-erlang_home_experience_checklist_dto() ::
    #{ 'checklistId' := binary(),
       'status' := binary(),
       'steps' := list()
     }.

encode(#{ 'checklistId' := ChecklistId,
          'status' := Status,
          'steps' := Steps
        }) ->
    #{ 'checklistId' => ChecklistId,
       'status' => Status,
       'steps' => Steps
     }.
