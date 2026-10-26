-module(maislurp-client-erlang_home_experience_checklist_step_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_home_experience_checklist_step_dto/0]).

-type maislurp-client-erlang_home_experience_checklist_step_dto() ::
    #{ 'id' := binary(),
       'title' := binary(),
       'status' := binary(),
       'routeName' => binary(),
       'completedAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'id' := Id,
          'title' := Title,
          'status' := Status,
          'routeName' := RouteName,
          'completedAt' := CompletedAt
        }) ->
    #{ 'id' => Id,
       'title' => Title,
       'status' => Status,
       'routeName' => RouteName,
       'completedAt' => CompletedAt
     }.
