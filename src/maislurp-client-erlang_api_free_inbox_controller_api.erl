-module(maislurp-client-erlang_api_free_inbox_controller_api).

-export([create/2, create/3,
         delete/3, delete/4,
         read/3, read/4]).

-define(BASE_URL, "").

%% @doc 
%% 
-spec create(ctx:ctx(), maislurp-client-erlang_create_free_inbox_options:maislurp-client-erlang_create_free_inbox_options()) -> {ok, maislurp-client-erlang_created_free_inbox_dto:maislurp-client-erlang_created_free_inbox_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create(Ctx, MaislurpClientErlangCreateFreeInboxOptions) ->
    create(Ctx, MaislurpClientErlangCreateFreeInboxOptions, #{}).

-spec create(ctx:ctx(), maislurp-client-erlang_create_free_inbox_options:maislurp-client-erlang_create_free_inbox_options(), maps:map()) -> {ok, maislurp-client-erlang_created_free_inbox_dto:maislurp-client-erlang_created_free_inbox_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create(Ctx, MaislurpClientErlangCreateFreeInboxOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/tools/free-inbox"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangCreateFreeInboxOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec delete(ctx:ctx(), binary(), binary()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete(Ctx, Id, XFreeInboxToken) ->
    delete(Ctx, Id, XFreeInboxToken, #{}).

-spec delete(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete(Ctx, Id, XFreeInboxToken, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/tools/free-inbox/", Id, ""],
    QS = [],
    Headers = [  {<<"X-Free-Inbox-Token">>, XFreeInboxToken}]++maislurp-client-erlang_utils:optional_params([], _OptionalParams),
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec read(ctx:ctx(), binary(), binary()) -> {ok, maislurp-client-erlang_free_inbox_dto:maislurp-client-erlang_free_inbox_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
read(Ctx, Id, XFreeInboxToken) ->
    read(Ctx, Id, XFreeInboxToken, #{}).

-spec read(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, maislurp-client-erlang_free_inbox_dto:maislurp-client-erlang_free_inbox_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
read(Ctx, Id, XFreeInboxToken, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/tools/free-inbox/", Id, ""],
    QS = [],
    Headers = [  {<<"X-Free-Inbox-Token">>, XFreeInboxToken}]++maislurp-client-erlang_utils:optional_params([], _OptionalParams),
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


