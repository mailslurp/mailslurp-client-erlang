-module(maislurp-client-erlang_domain_monitor_controller_api).

-export([compare_domain_monitor_runs/4, compare_domain_monitor_runs/5,
         create_domain_monitor/2, create_domain_monitor/3,
         create_domain_monitor_alert_sink/3, create_domain_monitor_alert_sink/4,
         delete_domain_monitor/2, delete_domain_monitor/3,
         delete_domain_monitor_alert_sink/3, delete_domain_monitor_alert_sink/4,
         get_domain_monitor/2, get_domain_monitor/3,
         get_domain_monitor_alert_sinks/2, get_domain_monitor_alert_sinks/3,
         get_domain_monitor_auth_stack/2, get_domain_monitor_auth_stack/3,
         get_domain_monitor_insights/2, get_domain_monitor_insights/3,
         get_domain_monitor_run/3, get_domain_monitor_run/4,
         get_domain_monitor_runs/2, get_domain_monitor_runs/3,
         get_domain_monitor_series/2, get_domain_monitor_series/3,
         get_domain_monitor_summary/2, get_domain_monitor_summary/3,
         get_domain_monitors/1, get_domain_monitors/2,
         run_domain_monitor_now/2, run_domain_monitor_now/3,
         run_due_domain_monitors/1, run_due_domain_monitors/2,
         update_domain_monitor/3, update_domain_monitor/4]).

-define(BASE_URL, "").

%% @doc Compare two monitor runs
%% 
-spec compare_domain_monitor_runs(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_domain_monitor_run_comparison_dto:maislurp-client-erlang_domain_monitor_run_comparison_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
compare_domain_monitor_runs(Ctx, MonitorId, RunId, OtherRunId) ->
    compare_domain_monitor_runs(Ctx, MonitorId, RunId, OtherRunId, #{}).

-spec compare_domain_monitor_runs(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_domain_monitor_run_comparison_dto:maislurp-client-erlang_domain_monitor_run_comparison_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
compare_domain_monitor_runs(Ctx, MonitorId, RunId, OtherRunId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/domain-monitor/monitors/", MonitorId, "/runs/", RunId, "/compare/", OtherRunId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create domain monitor
%% 
-spec create_domain_monitor(ctx:ctx(), maislurp-client-erlang_create_domain_monitor_options:maislurp-client-erlang_create_domain_monitor_options()) -> {ok, maislurp-client-erlang_domain_monitor_dto:maislurp-client-erlang_domain_monitor_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_domain_monitor(Ctx, MaislurpClientErlangCreateDomainMonitorOptions) ->
    create_domain_monitor(Ctx, MaislurpClientErlangCreateDomainMonitorOptions, #{}).

-spec create_domain_monitor(ctx:ctx(), maislurp-client-erlang_create_domain_monitor_options:maislurp-client-erlang_create_domain_monitor_options(), maps:map()) -> {ok, maislurp-client-erlang_domain_monitor_dto:maislurp-client-erlang_domain_monitor_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_domain_monitor(Ctx, MaislurpClientErlangCreateDomainMonitorOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/domain-monitor/monitors"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangCreateDomainMonitorOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create alert sink for monitor
%% 
-spec create_domain_monitor_alert_sink(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_create_domain_monitor_alert_sink_options:maislurp-client-erlang_create_domain_monitor_alert_sink_options()) -> {ok, maislurp-client-erlang_domain_monitor_alert_sink_dto:maislurp-client-erlang_domain_monitor_alert_sink_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_domain_monitor_alert_sink(Ctx, MonitorId, MaislurpClientErlangCreateDomainMonitorAlertSinkOptions) ->
    create_domain_monitor_alert_sink(Ctx, MonitorId, MaislurpClientErlangCreateDomainMonitorAlertSinkOptions, #{}).

-spec create_domain_monitor_alert_sink(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_create_domain_monitor_alert_sink_options:maislurp-client-erlang_create_domain_monitor_alert_sink_options(), maps:map()) -> {ok, maislurp-client-erlang_domain_monitor_alert_sink_dto:maislurp-client-erlang_domain_monitor_alert_sink_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_domain_monitor_alert_sink(Ctx, MonitorId, MaislurpClientErlangCreateDomainMonitorAlertSinkOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/domain-monitor/monitors/", MonitorId, "/alert-sinks"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangCreateDomainMonitorAlertSinkOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete domain monitor
%% 
-spec delete_domain_monitor(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_domain_monitor(Ctx, MonitorId) ->
    delete_domain_monitor(Ctx, MonitorId, #{}).

-spec delete_domain_monitor(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_domain_monitor(Ctx, MonitorId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/domain-monitor/monitors/", MonitorId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete monitor alert sink
%% 
-spec delete_domain_monitor_alert_sink(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_domain_monitor_alert_sink(Ctx, MonitorId, SinkId) ->
    delete_domain_monitor_alert_sink(Ctx, MonitorId, SinkId, #{}).

-spec delete_domain_monitor_alert_sink(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_domain_monitor_alert_sink(Ctx, MonitorId, SinkId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/domain-monitor/monitors/", MonitorId, "/alert-sinks/", SinkId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get domain monitor
%% 
-spec get_domain_monitor(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_domain_monitor_dto:maislurp-client-erlang_domain_monitor_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_domain_monitor(Ctx, MonitorId) ->
    get_domain_monitor(Ctx, MonitorId, #{}).

-spec get_domain_monitor(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_domain_monitor_dto:maislurp-client-erlang_domain_monitor_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_domain_monitor(Ctx, MonitorId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/domain-monitor/monitors/", MonitorId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List alert sinks for monitor
%% 
-spec get_domain_monitor_alert_sinks(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, [maislurp-client-erlang_domain_monitor_alert_sink_dto:maislurp-client-erlang_domain_monitor_alert_sink_dto()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_domain_monitor_alert_sinks(Ctx, MonitorId) ->
    get_domain_monitor_alert_sinks(Ctx, MonitorId, #{}).

-spec get_domain_monitor_alert_sinks(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, [maislurp-client-erlang_domain_monitor_alert_sink_dto:maislurp-client-erlang_domain_monitor_alert_sink_dto()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_domain_monitor_alert_sinks(Ctx, MonitorId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/domain-monitor/monitors/", MonitorId, "/alert-sinks"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get current auth stack for monitor domain
%% 
-spec get_domain_monitor_auth_stack(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_check_email_auth_stack_results:maislurp-client-erlang_check_email_auth_stack_results(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_domain_monitor_auth_stack(Ctx, MonitorId) ->
    get_domain_monitor_auth_stack(Ctx, MonitorId, #{}).

-spec get_domain_monitor_auth_stack(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_check_email_auth_stack_results:maislurp-client-erlang_check_email_auth_stack_results(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_domain_monitor_auth_stack(Ctx, MonitorId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/domain-monitor/monitors/", MonitorId, "/auth-stack"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['dkimSelector'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get monitor insights
%% 
-spec get_domain_monitor_insights(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_domain_monitor_insights_dto:maislurp-client-erlang_domain_monitor_insights_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_domain_monitor_insights(Ctx, MonitorId) ->
    get_domain_monitor_insights(Ctx, MonitorId, #{}).

-spec get_domain_monitor_insights(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_domain_monitor_insights_dto:maislurp-client-erlang_domain_monitor_insights_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_domain_monitor_insights(Ctx, MonitorId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/domain-monitor/monitors/", MonitorId, "/insights"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['since', 'before'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get monitor run
%% 
-spec get_domain_monitor_run(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_domain_monitor_run_dto:maislurp-client-erlang_domain_monitor_run_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_domain_monitor_run(Ctx, MonitorId, RunId) ->
    get_domain_monitor_run(Ctx, MonitorId, RunId, #{}).

-spec get_domain_monitor_run(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_domain_monitor_run_dto:maislurp-client-erlang_domain_monitor_run_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_domain_monitor_run(Ctx, MonitorId, RunId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/domain-monitor/monitors/", MonitorId, "/runs/", RunId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List monitor runs
%% 
-spec get_domain_monitor_runs(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, [maislurp-client-erlang_domain_monitor_run_dto:maislurp-client-erlang_domain_monitor_run_dto()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_domain_monitor_runs(Ctx, MonitorId) ->
    get_domain_monitor_runs(Ctx, MonitorId, #{}).

-spec get_domain_monitor_runs(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, [maislurp-client-erlang_domain_monitor_run_dto:maislurp-client-erlang_domain_monitor_run_dto()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_domain_monitor_runs(Ctx, MonitorId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/domain-monitor/monitors/", MonitorId, "/runs"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['since', 'before', 'status', 'limit'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get monitor trend series
%% 
-spec get_domain_monitor_series(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_domain_monitor_series_dto:maislurp-client-erlang_domain_monitor_series_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_domain_monitor_series(Ctx, MonitorId) ->
    get_domain_monitor_series(Ctx, MonitorId, #{}).

-spec get_domain_monitor_series(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_domain_monitor_series_dto:maislurp-client-erlang_domain_monitor_series_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_domain_monitor_series(Ctx, MonitorId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/domain-monitor/monitors/", MonitorId, "/series"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['since', 'before', 'bucket'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get domain monitor summary
%% 
-spec get_domain_monitor_summary(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_domain_monitor_summary_dto:maislurp-client-erlang_domain_monitor_summary_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_domain_monitor_summary(Ctx, MonitorId) ->
    get_domain_monitor_summary(Ctx, MonitorId, #{}).

-spec get_domain_monitor_summary(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_domain_monitor_summary_dto:maislurp-client-erlang_domain_monitor_summary_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_domain_monitor_summary(Ctx, MonitorId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/domain-monitor/monitors/", MonitorId, "/summary"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['dkimSelector'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List domain monitors
%% 
-spec get_domain_monitors(ctx:ctx()) -> {ok, [maislurp-client-erlang_domain_monitor_dto:maislurp-client-erlang_domain_monitor_dto()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_domain_monitors(Ctx) ->
    get_domain_monitors(Ctx, #{}).

-spec get_domain_monitors(ctx:ctx(), maps:map()) -> {ok, [maislurp-client-erlang_domain_monitor_dto:maislurp-client-erlang_domain_monitor_dto()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_domain_monitors(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/domain-monitor/monitors"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Run monitor now
%% 
-spec run_domain_monitor_now(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_domain_monitor_run_now_result:maislurp-client-erlang_domain_monitor_run_now_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
run_domain_monitor_now(Ctx, MonitorId) ->
    run_domain_monitor_now(Ctx, MonitorId, #{}).

-spec run_domain_monitor_now(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_domain_monitor_run_now_result:maislurp-client-erlang_domain_monitor_run_now_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
run_domain_monitor_now(Ctx, MonitorId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/domain-monitor/monitors/", MonitorId, "/run-now"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Run due monitors for user
%% 
-spec run_due_domain_monitors(ctx:ctx()) -> {ok, maislurp-client-erlang_domain_monitor_run_due_result:maislurp-client-erlang_domain_monitor_run_due_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
run_due_domain_monitors(Ctx) ->
    run_due_domain_monitors(Ctx, #{}).

-spec run_due_domain_monitors(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_domain_monitor_run_due_result:maislurp-client-erlang_domain_monitor_run_due_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
run_due_domain_monitors(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/domain-monitor/monitors/run-due"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['maxRuns'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Update domain monitor
%% 
-spec update_domain_monitor(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_update_domain_monitor_options:maislurp-client-erlang_update_domain_monitor_options()) -> {ok, maislurp-client-erlang_domain_monitor_dto:maislurp-client-erlang_domain_monitor_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
update_domain_monitor(Ctx, MonitorId, MaislurpClientErlangUpdateDomainMonitorOptions) ->
    update_domain_monitor(Ctx, MonitorId, MaislurpClientErlangUpdateDomainMonitorOptions, #{}).

-spec update_domain_monitor(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_update_domain_monitor_options:maislurp-client-erlang_update_domain_monitor_options(), maps:map()) -> {ok, maislurp-client-erlang_domain_monitor_dto:maislurp-client-erlang_domain_monitor_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
update_domain_monitor(Ctx, MonitorId, MaislurpClientErlangUpdateDomainMonitorOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/domain-monitor/monitors/", MonitorId, ""],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangUpdateDomainMonitorOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


