-module(maislurp-client-erlang_guest_portal_user_create_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_guest_portal_user_create_dto/0]).

-type maislurp-client-erlang_guest_portal_user_create_dto() ::
    #{ 'guest' := maislurp-client-erlang_guest_portal_user_dto:maislurp-client-erlang_guest_portal_user_dto(),
       'password' := binary()
     }.

encode(#{ 'guest' := Guest,
          'password' := Password
        }) ->
    #{ 'guest' => Guest,
       'password' => Password
     }.
