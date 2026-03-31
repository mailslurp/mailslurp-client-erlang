-module(maislurp-client-erlang_api_audit_log_controller_api).

-export([get_audit_log_by_event_id/2, get_audit_log_by_event_id/3,
         get_audit_logs/1, get_audit_logs/2,
         search_audit_logs/2, search_audit_logs/3]).

-define(BASE_URL, "").

%% @doc 
%% 
-spec get_audit_log_by_event_id(ctx:ctx(), binary()) -> {ok, maislurp-client-erlang_audit_log_event_dto:maislurp-client-erlang_audit_log_event_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_audit_log_by_event_id(Ctx, EventId) ->
    get_audit_log_by_event_id(Ctx, EventId, #{}).

-spec get_audit_log_by_event_id(ctx:ctx(), binary(), maps:map()) -> {ok, maislurp-client-erlang_audit_log_event_dto:maislurp-client-erlang_audit_log_event_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_audit_log_by_event_id(Ctx, EventId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/audit-logs/", EventId, ""],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['since', 'before'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_audit_logs(ctx:ctx()) -> {ok, maislurp-client-erlang_audit_log_page_dto:maislurp-client-erlang_audit_log_page_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_audit_logs(Ctx) ->
    get_audit_logs(Ctx, #{}).

-spec get_audit_logs(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_audit_log_page_dto:maislurp-client-erlang_audit_log_page_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_audit_logs(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/audit-logs"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['since', 'before', 'action', 'userId', 'actorUserId', 'targetUserId', 'resourceType', 'resourceId', 'outcome', 'requestId', 'ipAddress', 'pageSize', 'cursor'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec search_audit_logs(ctx:ctx(), maislurp-client-erlang_audit_log_search_options:maislurp-client-erlang_audit_log_search_options()) -> {ok, maislurp-client-erlang_audit_log_page_dto:maislurp-client-erlang_audit_log_page_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
search_audit_logs(Ctx, MaislurpClientErlangAuditLogSearchOptions) ->
    search_audit_logs(Ctx, MaislurpClientErlangAuditLogSearchOptions, #{}).

-spec search_audit_logs(ctx:ctx(), maislurp-client-erlang_audit_log_search_options:maislurp-client-erlang_audit_log_search_options(), maps:map()) -> {ok, maislurp-client-erlang_audit_log_page_dto:maislurp-client-erlang_audit_log_page_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
search_audit_logs(Ctx, MaislurpClientErlangAuditLogSearchOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/audit-logs/search"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangAuditLogSearchOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


