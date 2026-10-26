-module(maislurp-client-erlang_api_automated_inbox_placement_controller_api).

-export([create_automated_inbox_placement_connection/2, create_automated_inbox_placement_connection/3,
         create_automated_inbox_placement_schedule/2, create_automated_inbox_placement_schedule/3,
         delete_automated_inbox_placement_connection/2, delete_automated_inbox_placement_connection/3,
         delete_automated_inbox_placement_schedule/2, delete_automated_inbox_placement_schedule/3,
         get_automated_inbox_placement_connection/2, get_automated_inbox_placement_connection/3,
         get_automated_inbox_placement_connections/1, get_automated_inbox_placement_connections/2,
         get_automated_inbox_placement_execution_events/3, get_automated_inbox_placement_execution_events/4,
         get_automated_inbox_placement_executions/2, get_automated_inbox_placement_executions/3,
         get_automated_inbox_placement_providers/1, get_automated_inbox_placement_providers/2,
         get_automated_inbox_placement_schedule/2, get_automated_inbox_placement_schedule/3,
         get_automated_inbox_placement_schedule_analytics_series/2, get_automated_inbox_placement_schedule_analytics_series/3,
         get_automated_inbox_placement_schedules/1, get_automated_inbox_placement_schedules/2,
         rotate_automated_inbox_placement_connection_credentials/3, rotate_automated_inbox_placement_connection_credentials/4,
         run_automated_inbox_placement_schedule/2, run_automated_inbox_placement_schedule/3,
         update_automated_inbox_placement_connection/3, update_automated_inbox_placement_connection/4,
         update_automated_inbox_placement_schedule/3, update_automated_inbox_placement_schedule/4,
         verify_automated_inbox_placement_connection/2, verify_automated_inbox_placement_connection/3]).

-define(BASE_URL, "").

%% @doc Create an encrypted sender connection
%% 
-spec create_automated_inbox_placement_connection(ctx:ctx(), maislurp-client-erlang_create_automated_inbox_placement_connection_options:maislurp-client-erlang_create_automated_inbox_placement_connection_options()) -> {ok, maislurp-client-erlang_automated_inbox_placement_connection_dto:maislurp-client-erlang_automated_inbox_placement_connection_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_automated_inbox_placement_connection(Ctx, MaislurpClientErlangCreateAutomatedInboxPlacementConnectionOptions) ->
    create_automated_inbox_placement_connection(Ctx, MaislurpClientErlangCreateAutomatedInboxPlacementConnectionOptions, #{}).

-spec create_automated_inbox_placement_connection(ctx:ctx(), maislurp-client-erlang_create_automated_inbox_placement_connection_options:maislurp-client-erlang_create_automated_inbox_placement_connection_options(), maps:map()) -> {ok, maislurp-client-erlang_automated_inbox_placement_connection_dto:maislurp-client-erlang_automated_inbox_placement_connection_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_automated_inbox_placement_connection(Ctx, MaislurpClientErlangCreateAutomatedInboxPlacementConnectionOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/inbox-placement-tests/automations/connections"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangCreateAutomatedInboxPlacementConnectionOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create an automated inbox placement schedule
%% 
-spec create_automated_inbox_placement_schedule(ctx:ctx(), maislurp-client-erlang_create_automated_inbox_placement_schedule_options:maislurp-client-erlang_create_automated_inbox_placement_schedule_options()) -> {ok, maislurp-client-erlang_automated_inbox_placement_schedule_dto:maislurp-client-erlang_automated_inbox_placement_schedule_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_automated_inbox_placement_schedule(Ctx, MaislurpClientErlangCreateAutomatedInboxPlacementScheduleOptions) ->
    create_automated_inbox_placement_schedule(Ctx, MaislurpClientErlangCreateAutomatedInboxPlacementScheduleOptions, #{}).

-spec create_automated_inbox_placement_schedule(ctx:ctx(), maislurp-client-erlang_create_automated_inbox_placement_schedule_options:maislurp-client-erlang_create_automated_inbox_placement_schedule_options(), maps:map()) -> {ok, maislurp-client-erlang_automated_inbox_placement_schedule_dto:maislurp-client-erlang_automated_inbox_placement_schedule_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_automated_inbox_placement_schedule(Ctx, MaislurpClientErlangCreateAutomatedInboxPlacementScheduleOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/inbox-placement-tests/automations/schedules"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangCreateAutomatedInboxPlacementScheduleOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Disconnect a sender connection
%% 
-spec delete_automated_inbox_placement_connection(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_automated_inbox_placement_connection(Ctx, ConnectionId) ->
    delete_automated_inbox_placement_connection(Ctx, ConnectionId, #{}).

-spec delete_automated_inbox_placement_connection(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_automated_inbox_placement_connection(Ctx, ConnectionId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/inbox-placement-tests/automations/connections/", ConnectionId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete an automated inbox placement schedule
%% 
-spec delete_automated_inbox_placement_schedule(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_automated_inbox_placement_schedule(Ctx, ScheduleId) ->
    delete_automated_inbox_placement_schedule(Ctx, ScheduleId, #{}).

-spec delete_automated_inbox_placement_schedule(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_automated_inbox_placement_schedule(Ctx, ScheduleId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/inbox-placement-tests/automations/schedules/", ScheduleId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get a sender connection
%% 
-spec get_automated_inbox_placement_connection(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_automated_inbox_placement_connection_dto:maislurp-client-erlang_automated_inbox_placement_connection_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_automated_inbox_placement_connection(Ctx, ConnectionId) ->
    get_automated_inbox_placement_connection(Ctx, ConnectionId, #{}).

-spec get_automated_inbox_placement_connection(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_automated_inbox_placement_connection_dto:maislurp-client-erlang_automated_inbox_placement_connection_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_automated_inbox_placement_connection(Ctx, ConnectionId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/inbox-placement-tests/automations/connections/", ConnectionId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List sender connections
%% 
-spec get_automated_inbox_placement_connections(ctx:ctx()) -> {ok, [maislurp-client-erlang_automated_inbox_placement_connection_dto:maislurp-client-erlang_automated_inbox_placement_connection_dto()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_automated_inbox_placement_connections(Ctx) ->
    get_automated_inbox_placement_connections(Ctx, #{}).

-spec get_automated_inbox_placement_connections(ctx:ctx(), maps:map()) -> {ok, [maislurp-client-erlang_automated_inbox_placement_connection_dto:maislurp-client-erlang_automated_inbox_placement_connection_dto()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_automated_inbox_placement_connections(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/inbox-placement-tests/automations/connections"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List non-secret execution events
%% 
-spec get_automated_inbox_placement_execution_events(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, [maislurp-client-erlang_automated_inbox_placement_event_dto:maislurp-client-erlang_automated_inbox_placement_event_dto()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_automated_inbox_placement_execution_events(Ctx, ScheduleId, ExecutionId) ->
    get_automated_inbox_placement_execution_events(Ctx, ScheduleId, ExecutionId, #{}).

-spec get_automated_inbox_placement_execution_events(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, [maislurp-client-erlang_automated_inbox_placement_event_dto:maislurp-client-erlang_automated_inbox_placement_event_dto()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_automated_inbox_placement_execution_events(Ctx, ScheduleId, ExecutionId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/inbox-placement-tests/automations/schedules/", ScheduleId, "/executions/", ExecutionId, "/events"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List schedule executions
%% 
-spec get_automated_inbox_placement_executions(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, [maislurp-client-erlang_automated_inbox_placement_execution_dto:maislurp-client-erlang_automated_inbox_placement_execution_dto()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_automated_inbox_placement_executions(Ctx, ScheduleId) ->
    get_automated_inbox_placement_executions(Ctx, ScheduleId, #{}).

-spec get_automated_inbox_placement_executions(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, [maislurp-client-erlang_automated_inbox_placement_execution_dto:maislurp-client-erlang_automated_inbox_placement_execution_dto()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_automated_inbox_placement_executions(Ctx, ScheduleId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/inbox-placement-tests/automations/schedules/", ScheduleId, "/executions"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['limit'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List automated inbox placement sender providers
%% 
-spec get_automated_inbox_placement_providers(ctx:ctx()) -> {ok, [maislurp-client-erlang_automated_inbox_placement_provider_dto:maislurp-client-erlang_automated_inbox_placement_provider_dto()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_automated_inbox_placement_providers(Ctx) ->
    get_automated_inbox_placement_providers(Ctx, #{}).

-spec get_automated_inbox_placement_providers(ctx:ctx(), maps:map()) -> {ok, [maislurp-client-erlang_automated_inbox_placement_provider_dto:maislurp-client-erlang_automated_inbox_placement_provider_dto()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_automated_inbox_placement_providers(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/inbox-placement-tests/automations/providers"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get an automated inbox placement schedule
%% 
-spec get_automated_inbox_placement_schedule(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_automated_inbox_placement_schedule_dto:maislurp-client-erlang_automated_inbox_placement_schedule_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_automated_inbox_placement_schedule(Ctx, ScheduleId) ->
    get_automated_inbox_placement_schedule(Ctx, ScheduleId, #{}).

-spec get_automated_inbox_placement_schedule(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_automated_inbox_placement_schedule_dto:maislurp-client-erlang_automated_inbox_placement_schedule_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_automated_inbox_placement_schedule(Ctx, ScheduleId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/inbox-placement-tests/automations/schedules/", ScheduleId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get automation inbox placement analytics over time
%% Returns chart-ready metrics for billed placement runs created by this schedule only.
-spec get_automated_inbox_placement_schedule_analytics_series(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_inbox_placement_analytics_series_dto:maislurp-client-erlang_inbox_placement_analytics_series_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_automated_inbox_placement_schedule_analytics_series(Ctx, ScheduleId) ->
    get_automated_inbox_placement_schedule_analytics_series(Ctx, ScheduleId, #{}).

-spec get_automated_inbox_placement_schedule_analytics_series(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_inbox_placement_analytics_series_dto:maislurp-client-erlang_inbox_placement_analytics_series_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_automated_inbox_placement_schedule_analytics_series(Ctx, ScheduleId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/inbox-placement-tests/automations/schedules/", ScheduleId, "/analytics/series"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['since', 'before', 'bucket', 'runLimit'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List automated inbox placement schedules
%% 
-spec get_automated_inbox_placement_schedules(ctx:ctx()) -> {ok, [maislurp-client-erlang_automated_inbox_placement_schedule_dto:maislurp-client-erlang_automated_inbox_placement_schedule_dto()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_automated_inbox_placement_schedules(Ctx) ->
    get_automated_inbox_placement_schedules(Ctx, #{}).

-spec get_automated_inbox_placement_schedules(ctx:ctx(), maps:map()) -> {ok, [maislurp-client-erlang_automated_inbox_placement_schedule_dto:maislurp-client-erlang_automated_inbox_placement_schedule_dto()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_automated_inbox_placement_schedules(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/inbox-placement-tests/automations/schedules"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Rotate sender connection credentials
%% Verifies the replacement SMTP settings before atomically replacing the encrypted credential envelope. A failed verification leaves the existing connection unchanged.
-spec rotate_automated_inbox_placement_connection_credentials(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_rotate_automated_inbox_placement_connection_credentials_options:maislurp-client-erlang_rotate_automated_inbox_placement_connection_credentials_options()) -> {ok, maislurp-client-erlang_automated_inbox_placement_connection_dto:maislurp-client-erlang_automated_inbox_placement_connection_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
rotate_automated_inbox_placement_connection_credentials(Ctx, ConnectionId, MaislurpClientErlangRotateAutomatedInboxPlacementConnectionCredentialsOptions) ->
    rotate_automated_inbox_placement_connection_credentials(Ctx, ConnectionId, MaislurpClientErlangRotateAutomatedInboxPlacementConnectionCredentialsOptions, #{}).

-spec rotate_automated_inbox_placement_connection_credentials(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_rotate_automated_inbox_placement_connection_credentials_options:maislurp-client-erlang_rotate_automated_inbox_placement_connection_credentials_options(), maps:map()) -> {ok, maislurp-client-erlang_automated_inbox_placement_connection_dto:maislurp-client-erlang_automated_inbox_placement_connection_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
rotate_automated_inbox_placement_connection_credentials(Ctx, ConnectionId, MaislurpClientErlangRotateAutomatedInboxPlacementConnectionCredentialsOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/inbox-placement-tests/automations/connections/", ConnectionId, "/credentials"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangRotateAutomatedInboxPlacementConnectionCredentialsOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Run an automated inbox placement schedule now
%% 
-spec run_automated_inbox_placement_schedule(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_automated_inbox_placement_execution_dto:maislurp-client-erlang_automated_inbox_placement_execution_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
run_automated_inbox_placement_schedule(Ctx, ScheduleId) ->
    run_automated_inbox_placement_schedule(Ctx, ScheduleId, #{}).

-spec run_automated_inbox_placement_schedule(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_automated_inbox_placement_execution_dto:maislurp-client-erlang_automated_inbox_placement_execution_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
run_automated_inbox_placement_schedule(Ctx, ScheduleId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/inbox-placement-tests/automations/schedules/", ScheduleId, "/run"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Update a sender connection
%% Updates non-secret connection metadata. Use the credentials endpoint to replace SMTP credentials or transport settings.
-spec update_automated_inbox_placement_connection(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_update_automated_inbox_placement_connection_options:maislurp-client-erlang_update_automated_inbox_placement_connection_options()) -> {ok, maislurp-client-erlang_automated_inbox_placement_connection_dto:maislurp-client-erlang_automated_inbox_placement_connection_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
update_automated_inbox_placement_connection(Ctx, ConnectionId, MaislurpClientErlangUpdateAutomatedInboxPlacementConnectionOptions) ->
    update_automated_inbox_placement_connection(Ctx, ConnectionId, MaislurpClientErlangUpdateAutomatedInboxPlacementConnectionOptions, #{}).

-spec update_automated_inbox_placement_connection(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_update_automated_inbox_placement_connection_options:maislurp-client-erlang_update_automated_inbox_placement_connection_options(), maps:map()) -> {ok, maislurp-client-erlang_automated_inbox_placement_connection_dto:maislurp-client-erlang_automated_inbox_placement_connection_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
update_automated_inbox_placement_connection(Ctx, ConnectionId, MaislurpClientErlangUpdateAutomatedInboxPlacementConnectionOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = patch,
    Path = ["/inbox-placement-tests/automations/connections/", ConnectionId, ""],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangUpdateAutomatedInboxPlacementConnectionOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Update an automated inbox placement schedule
%% 
-spec update_automated_inbox_placement_schedule(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_update_automated_inbox_placement_schedule_options:maislurp-client-erlang_update_automated_inbox_placement_schedule_options()) -> {ok, maislurp-client-erlang_automated_inbox_placement_schedule_dto:maislurp-client-erlang_automated_inbox_placement_schedule_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
update_automated_inbox_placement_schedule(Ctx, ScheduleId, MaislurpClientErlangUpdateAutomatedInboxPlacementScheduleOptions) ->
    update_automated_inbox_placement_schedule(Ctx, ScheduleId, MaislurpClientErlangUpdateAutomatedInboxPlacementScheduleOptions, #{}).

-spec update_automated_inbox_placement_schedule(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_update_automated_inbox_placement_schedule_options:maislurp-client-erlang_update_automated_inbox_placement_schedule_options(), maps:map()) -> {ok, maislurp-client-erlang_automated_inbox_placement_schedule_dto:maislurp-client-erlang_automated_inbox_placement_schedule_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
update_automated_inbox_placement_schedule(Ctx, ScheduleId, MaislurpClientErlangUpdateAutomatedInboxPlacementScheduleOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = patch,
    Path = ["/inbox-placement-tests/automations/schedules/", ScheduleId, ""],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangUpdateAutomatedInboxPlacementScheduleOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Verify a sender connection
%% 
-spec verify_automated_inbox_placement_connection(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_automated_inbox_placement_connection_dto:maislurp-client-erlang_automated_inbox_placement_connection_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
verify_automated_inbox_placement_connection(Ctx, ConnectionId) ->
    verify_automated_inbox_placement_connection(Ctx, ConnectionId, #{}).

-spec verify_automated_inbox_placement_connection(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_automated_inbox_placement_connection_dto:maislurp-client-erlang_automated_inbox_placement_connection_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
verify_automated_inbox_placement_connection(Ctx, ConnectionId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/inbox-placement-tests/automations/connections/", ConnectionId, "/verify"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


