-module(maislurp-client-erlang_inbox_replier_controller_api).

-export([create_new_inbox_replier/2, create_new_inbox_replier/3,
         delete_inbox_replier/2, delete_inbox_replier/3,
         delete_inbox_repliers/1, delete_inbox_repliers/2,
         get_all_inbox_replier_events/1, get_all_inbox_replier_events/2,
         get_inbox_replier/2, get_inbox_replier/3,
         get_inbox_replier_events/2, get_inbox_replier_events/3,
         get_inbox_repliers/1, get_inbox_repliers/2,
         update_inbox_replier/3, update_inbox_replier/4]).

-define(BASE_URL, "").

%% @doc Create an inbox replier
%% Create a new inbox rule for reply toing, blocking, and allowing emails when sending and receiving
-spec create_new_inbox_replier(ctx:ctx(), maislurp-client-erlang_create_inbox_replier_options:maislurp-client-erlang_create_inbox_replier_options()) -> {ok, maislurp-client-erlang_inbox_replier_dto:maislurp-client-erlang_inbox_replier_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_new_inbox_replier(Ctx, MaislurpClientErlangCreateInboxReplierOptions) ->
    create_new_inbox_replier(Ctx, MaislurpClientErlangCreateInboxReplierOptions, #{}).

-spec create_new_inbox_replier(ctx:ctx(), maislurp-client-erlang_create_inbox_replier_options:maislurp-client-erlang_create_inbox_replier_options(), maps:map()) -> {ok, maislurp-client-erlang_inbox_replier_dto:maislurp-client-erlang_inbox_replier_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_new_inbox_replier(Ctx, MaislurpClientErlangCreateInboxReplierOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/repliers"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangCreateInboxReplierOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete an inbox replier
%% Delete inbox replier
-spec delete_inbox_replier(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_inbox_replier(Ctx, Id) ->
    delete_inbox_replier(Ctx, Id, #{}).

-spec delete_inbox_replier(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_inbox_replier(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/repliers/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete inbox repliers
%% Delete inbox repliers. Accepts optional inboxId filter.
-spec delete_inbox_repliers(ctx:ctx()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_inbox_repliers(Ctx) ->
    delete_inbox_repliers(Ctx, #{}).

-spec delete_inbox_repliers(ctx:ctx(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_inbox_repliers(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/repliers"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['inboxId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get inbox replier event list
%% Get all inbox ruleset events
-spec get_all_inbox_replier_events(ctx:ctx()) -> {ok, maislurp-client-erlang_page_inbox_replier_events:maislurp-client-erlang_page_inbox_replier_events(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_all_inbox_replier_events(Ctx) ->
    get_all_inbox_replier_events(Ctx, #{}).

-spec get_all_inbox_replier_events(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_page_inbox_replier_events:maislurp-client-erlang_page_inbox_replier_events(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_all_inbox_replier_events(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/repliers/events"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['inboxReplierId', 'inboxId', 'emailId', 'sentId', 'page', 'size', 'sort'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get an inbox replier
%% Get inbox ruleset
-spec get_inbox_replier(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_inbox_replier_dto:maislurp-client-erlang_inbox_replier_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inbox_replier(Ctx, Id) ->
    get_inbox_replier(Ctx, Id, #{}).

-spec get_inbox_replier(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_inbox_replier_dto:maislurp-client-erlang_inbox_replier_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inbox_replier(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/repliers/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get an inbox replier event list
%% Get inbox ruleset events
-spec get_inbox_replier_events(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_page_inbox_replier_events:maislurp-client-erlang_page_inbox_replier_events(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inbox_replier_events(Ctx, Id) ->
    get_inbox_replier_events(Ctx, Id, #{}).

-spec get_inbox_replier_events(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_page_inbox_replier_events:maislurp-client-erlang_page_inbox_replier_events(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inbox_replier_events(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/repliers/", Id, "/events"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['page', 'size', 'sort'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List inbox repliers
%% List all repliers attached to an inbox
-spec get_inbox_repliers(ctx:ctx()) -> {ok, maislurp-client-erlang_page_inbox_replier_dto:maislurp-client-erlang_page_inbox_replier_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inbox_repliers(Ctx) ->
    get_inbox_repliers(Ctx, #{}).

-spec get_inbox_repliers(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_page_inbox_replier_dto:maislurp-client-erlang_page_inbox_replier_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inbox_repliers(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/repliers"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['inboxId', 'page', 'size', 'sort', 'since', 'before'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Update an inbox replier
%% Update inbox ruleset
-spec update_inbox_replier(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_update_inbox_replier_options:maislurp-client-erlang_update_inbox_replier_options()) -> {ok, maislurp-client-erlang_inbox_replier_dto:maislurp-client-erlang_inbox_replier_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
update_inbox_replier(Ctx, Id, MaislurpClientErlangUpdateInboxReplierOptions) ->
    update_inbox_replier(Ctx, Id, MaislurpClientErlangUpdateInboxReplierOptions, #{}).

-spec update_inbox_replier(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_update_inbox_replier_options:maislurp-client-erlang_update_inbox_replier_options(), maps:map()) -> {ok, maislurp-client-erlang_inbox_replier_dto:maislurp-client-erlang_inbox_replier_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
update_inbox_replier(Ctx, Id, MaislurpClientErlangUpdateInboxReplierOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/repliers/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangUpdateInboxReplierOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


