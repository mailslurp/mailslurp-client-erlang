-module(maislurp-client-erlang_user_controller_api).

-export([get_json_property_as_string/3, get_json_property_as_string/4,
         get_user_info/1, get_user_info/2]).

-define(BASE_URL, "").

%% @doc 
%% Utility function to extract properties from JSON objects in language where this is cumbersome.
-spec get_json_property_as_string(ctx:ctx(), binary(), maps:map()) -> {ok, binary(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_json_property_as_string(Ctx, Property, Body) ->
    get_json_property_as_string(Ctx, Property, Body, #{}).

-spec get_json_property_as_string(ctx:ctx(), binary(), maps:map(), maps:map()) -> {ok, binary(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_json_property_as_string(Ctx, Property, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/user/json/pluck"],
    QS = lists:flatten([{<<"property">>, Property}])++maislurp-client-erlang_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get account information for your user
-spec get_user_info(ctx:ctx()) -> {ok, maislurp-client-erlang_user_info_dto:maislurp-client-erlang_user_info_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_user_info(Ctx) ->
    get_user_info(Ctx, #{}).

-spec get_user_info(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_user_info_dto:maislurp-client-erlang_user_info_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_user_info(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/user/info"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


