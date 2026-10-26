-module(maislurp-client-erlang_home_experience_first_value_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_home_experience_first_value_dto/0]).

-type maislurp-client-erlang_home_experience_first_value_dto() ::
    #{ 'status' := binary(),
       'type' => binary(),
       'at' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'status' := Status,
          'type' := Type,
          'at' := At
        }) ->
    #{ 'status' => Status,
       'type' => Type,
       'at' => At
     }.
