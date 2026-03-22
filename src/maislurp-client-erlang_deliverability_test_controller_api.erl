-module(maislurp-client-erlang_deliverability_test_controller_api).

-export([cancel_deliverability_simulation_job/3, cancel_deliverability_simulation_job/4,
         create_deliverability_simulation_job/3, create_deliverability_simulation_job/4,
         create_deliverability_test/2, create_deliverability_test/3,
         delete_deliverability_test/2, delete_deliverability_test/3,
         duplicate_deliverability_test/2, duplicate_deliverability_test/3,
         export_deliverability_test_report/2, export_deliverability_test_report/3,
         export_deliverability_test_results/2, export_deliverability_test_results/3,
         get_deliverability_analytics_series/1, get_deliverability_analytics_series/2,
         get_deliverability_failure_hotspots/1, get_deliverability_failure_hotspots/2,
         get_deliverability_simulation_job/3, get_deliverability_simulation_job/4,
         get_deliverability_simulation_job_events/3, get_deliverability_simulation_job_events/4,
         get_deliverability_test/2, get_deliverability_test/3,
         get_deliverability_test_results/2, get_deliverability_test_results/3,
         get_deliverability_tests/1, get_deliverability_tests/2,
         get_latest_deliverability_simulation_job/2, get_latest_deliverability_simulation_job/3,
         pause_deliverability_simulation_job/3, pause_deliverability_simulation_job/4,
         pause_deliverability_test/2, pause_deliverability_test/3,
         poll_deliverability_test_status/2, poll_deliverability_test_status/3,
         resume_deliverability_simulation_job/3, resume_deliverability_simulation_job/4,
         start_deliverability_test/2, start_deliverability_test/3,
         stop_deliverability_test/2, stop_deliverability_test/3,
         update_deliverability_test/3, update_deliverability_test/4]).

-define(BASE_URL, "").

%% @doc Cancel deliverability simulation job
%% Cancel a running or paused simulation job.
-spec cancel_deliverability_simulation_job(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_deliverability_simulation_job_dto:maislurp-client-erlang_deliverability_simulation_job_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
cancel_deliverability_simulation_job(Ctx, TestId, JobId) ->
    cancel_deliverability_simulation_job(Ctx, TestId, JobId, #{}).

-spec cancel_deliverability_simulation_job(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_deliverability_simulation_job_dto:maislurp-client-erlang_deliverability_simulation_job_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
cancel_deliverability_simulation_job(Ctx, TestId, JobId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/test/deliverability/", TestId, "/simulation-jobs/", JobId, "/cancel"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create deliverability simulation job
%% Create and start a simulation job for a running deliverability test. Only one active simulation job is allowed per user.
-spec create_deliverability_simulation_job(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_create_deliverability_simulation_job_options:maislurp-client-erlang_create_deliverability_simulation_job_options()) -> {ok, maislurp-client-erlang_deliverability_simulation_job_dto:maislurp-client-erlang_deliverability_simulation_job_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_deliverability_simulation_job(Ctx, TestId, MaislurpClientErlangCreateDeliverabilitySimulationJobOptions) ->
    create_deliverability_simulation_job(Ctx, TestId, MaislurpClientErlangCreateDeliverabilitySimulationJobOptions, #{}).

-spec create_deliverability_simulation_job(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_create_deliverability_simulation_job_options:maislurp-client-erlang_create_deliverability_simulation_job_options(), maps:map()) -> {ok, maislurp-client-erlang_deliverability_simulation_job_dto:maislurp-client-erlang_deliverability_simulation_job_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_deliverability_simulation_job(Ctx, TestId, MaislurpClientErlangCreateDeliverabilitySimulationJobOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/test/deliverability/", TestId, "/simulation-jobs"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangCreateDeliverabilitySimulationJobOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create deliverability/load test
%% Create a deliverability test for inboxes or phone numbers using ALL, PATTERN, or EXPLICIT selector scope.
-spec create_deliverability_test(ctx:ctx(), maislurp-client-erlang_create_deliverability_test_options:maislurp-client-erlang_create_deliverability_test_options()) -> {ok, maislurp-client-erlang_deliverability_test_dto:maislurp-client-erlang_deliverability_test_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_deliverability_test(Ctx, MaislurpClientErlangCreateDeliverabilityTestOptions) ->
    create_deliverability_test(Ctx, MaislurpClientErlangCreateDeliverabilityTestOptions, #{}).

-spec create_deliverability_test(ctx:ctx(), maislurp-client-erlang_create_deliverability_test_options:maislurp-client-erlang_create_deliverability_test_options(), maps:map()) -> {ok, maislurp-client-erlang_deliverability_test_dto:maislurp-client-erlang_deliverability_test_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_deliverability_test(Ctx, MaislurpClientErlangCreateDeliverabilityTestOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/test/deliverability"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangCreateDeliverabilityTestOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete deliverability/load test
%% Delete test and all persisted entity-level results.
-spec delete_deliverability_test(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_delete_result:maislurp-client-erlang_delete_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_deliverability_test(Ctx, TestId) ->
    delete_deliverability_test(Ctx, TestId, #{}).

-spec delete_deliverability_test(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_delete_result:maislurp-client-erlang_delete_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_deliverability_test(Ctx, TestId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/test/deliverability/", TestId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Duplicate deliverability/load test
%% Create a fresh deliverability test using an existing test configuration, including selector scope, exclusions, and expectations.
-spec duplicate_deliverability_test(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_deliverability_test_dto:maislurp-client-erlang_deliverability_test_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
duplicate_deliverability_test(Ctx, TestId) ->
    duplicate_deliverability_test(Ctx, TestId, #{}).

-spec duplicate_deliverability_test(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_deliverability_test_dto:maislurp-client-erlang_deliverability_test_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
duplicate_deliverability_test(Ctx, TestId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/test/deliverability/", TestId, "/duplicate"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Export deliverability/load test report as PDF
%% Export a PDF report for a terminal deliverability test (COMPLETE, FAILED, or STOPPED), including configuration, summary outcomes, and detailed entity-level results.
-spec export_deliverability_test_report(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
export_deliverability_test_report(Ctx, TestId) ->
    export_deliverability_test_report(Ctx, TestId, #{}).

-spec export_deliverability_test_report(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
export_deliverability_test_report(Ctx, TestId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/test/deliverability/", TestId, "/report/export"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Export deliverability/load test entity results as CSV
%% Export per-entity deliverability results including expectation-level pass/fail counts. The latest status is evaluated with the same polling safeguards before export.
-spec export_deliverability_test_results(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
export_deliverability_test_results(Ctx, TestId) ->
    export_deliverability_test_results(Ctx, TestId, #{}).

-spec export_deliverability_test_results(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
export_deliverability_test_results(Ctx, TestId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/test/deliverability/", TestId, "/results/export"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['matched'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get deliverability analytics time series
%% Compare deliverability runs over a time range with bucketed chart metrics and run-level rows for table views.
-spec get_deliverability_analytics_series(ctx:ctx()) -> {ok, maislurp-client-erlang_deliverability_analytics_series_dto:maislurp-client-erlang_deliverability_analytics_series_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_deliverability_analytics_series(Ctx) ->
    get_deliverability_analytics_series(Ctx, #{}).

-spec get_deliverability_analytics_series(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_deliverability_analytics_series_dto:maislurp-client-erlang_deliverability_analytics_series_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_deliverability_analytics_series(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/test/deliverability/analytics/series"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['since', 'before', 'scope', 'bucket', 'runLimit'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get deliverability failure hotspots
%% Find commonly failing entities and phone country/variant dimensions across deliverability runs in a time range.
-spec get_deliverability_failure_hotspots(ctx:ctx()) -> {ok, maislurp-client-erlang_deliverability_failure_hotspots_dto:maislurp-client-erlang_deliverability_failure_hotspots_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_deliverability_failure_hotspots(Ctx) ->
    get_deliverability_failure_hotspots(Ctx, #{}).

-spec get_deliverability_failure_hotspots(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_deliverability_failure_hotspots_dto:maislurp-client-erlang_deliverability_failure_hotspots_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_deliverability_failure_hotspots(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/test/deliverability/analytics/hotspots"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['since', 'before', 'scope', 'limit'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get deliverability simulation job
%% Get simulation job status and progress counters.
-spec get_deliverability_simulation_job(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_deliverability_simulation_job_dto:maislurp-client-erlang_deliverability_simulation_job_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_deliverability_simulation_job(Ctx, TestId, JobId) ->
    get_deliverability_simulation_job(Ctx, TestId, JobId, #{}).

-spec get_deliverability_simulation_job(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_deliverability_simulation_job_dto:maislurp-client-erlang_deliverability_simulation_job_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_deliverability_simulation_job(Ctx, TestId, JobId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/test/deliverability/", TestId, "/simulation-jobs/", JobId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get deliverability simulation job events
%% Get paged simulation events including send successes and failures.
-spec get_deliverability_simulation_job_events(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_deliverability_simulation_job_event_page_dto:maislurp-client-erlang_deliverability_simulation_job_event_page_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_deliverability_simulation_job_events(Ctx, TestId, JobId) ->
    get_deliverability_simulation_job_events(Ctx, TestId, JobId, #{}).

-spec get_deliverability_simulation_job_events(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_deliverability_simulation_job_event_page_dto:maislurp-client-erlang_deliverability_simulation_job_event_page_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_deliverability_simulation_job_events(Ctx, TestId, JobId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/test/deliverability/", TestId, "/simulation-jobs/", JobId, "/events"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['page', 'size', 'sort'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get deliverability/load test
%% Get deliverability test configuration and latest progress counters.
-spec get_deliverability_test(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_deliverability_test_dto:maislurp-client-erlang_deliverability_test_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_deliverability_test(Ctx, TestId) ->
    get_deliverability_test(Ctx, TestId, #{}).

-spec get_deliverability_test(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_deliverability_test_dto:maislurp-client-erlang_deliverability_test_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_deliverability_test(Ctx, TestId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/test/deliverability/", TestId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get deliverability/load test entity results
%% Get paged per-entity expectation results with optional matched/unmatched filtering.
-spec get_deliverability_test_results(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_deliverability_entity_result_page_dto:maislurp-client-erlang_deliverability_entity_result_page_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_deliverability_test_results(Ctx, TestId) ->
    get_deliverability_test_results(Ctx, TestId, #{}).

-spec get_deliverability_test_results(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_deliverability_entity_result_page_dto:maislurp-client-erlang_deliverability_entity_result_page_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_deliverability_test_results(Ctx, TestId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/test/deliverability/", TestId, "/results"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['matched', 'page', 'size', 'sort'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List deliverability/load tests
%% List deliverability tests for the authenticated account.
-spec get_deliverability_tests(ctx:ctx()) -> {ok, maislurp-client-erlang_deliverability_test_page_dto:maislurp-client-erlang_deliverability_test_page_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_deliverability_tests(Ctx) ->
    get_deliverability_tests(Ctx, #{}).

-spec get_deliverability_tests(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_deliverability_test_page_dto:maislurp-client-erlang_deliverability_test_page_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_deliverability_tests(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/test/deliverability"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['page', 'size', 'sort'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get latest deliverability simulation job
%% Get the most recent simulation job for a deliverability test.
-spec get_latest_deliverability_simulation_job(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_deliverability_simulation_job_dto:maislurp-client-erlang_deliverability_simulation_job_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_latest_deliverability_simulation_job(Ctx, TestId) ->
    get_latest_deliverability_simulation_job(Ctx, TestId, #{}).

-spec get_latest_deliverability_simulation_job(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_deliverability_simulation_job_dto:maislurp-client-erlang_deliverability_simulation_job_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_latest_deliverability_simulation_job(Ctx, TestId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/test/deliverability/", TestId, "/simulation-jobs/latest"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Pause deliverability simulation job
%% Pause a running simulation job.
-spec pause_deliverability_simulation_job(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_deliverability_simulation_job_dto:maislurp-client-erlang_deliverability_simulation_job_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
pause_deliverability_simulation_job(Ctx, TestId, JobId) ->
    pause_deliverability_simulation_job(Ctx, TestId, JobId, #{}).

-spec pause_deliverability_simulation_job(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_deliverability_simulation_job_dto:maislurp-client-erlang_deliverability_simulation_job_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
pause_deliverability_simulation_job(Ctx, TestId, JobId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/test/deliverability/", TestId, "/simulation-jobs/", JobId, "/pause"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Pause deliverability/load test
%% Pause a RUNNING or SCHEDULED deliverability test.
-spec pause_deliverability_test(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_deliverability_test_dto:maislurp-client-erlang_deliverability_test_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
pause_deliverability_test(Ctx, TestId) ->
    pause_deliverability_test(Ctx, TestId, #{}).

-spec pause_deliverability_test(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_deliverability_test_dto:maislurp-client-erlang_deliverability_test_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
pause_deliverability_test(Ctx, TestId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/test/deliverability/", TestId, "/pause"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Poll deliverability/load test status
%% Poll test progress. Evaluation is throttled with a 5-second cache window to protect backing data stores.
-spec poll_deliverability_test_status(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_deliverability_poll_status_result_dto:maislurp-client-erlang_deliverability_poll_status_result_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
poll_deliverability_test_status(Ctx, TestId) ->
    poll_deliverability_test_status(Ctx, TestId, #{}).

-spec poll_deliverability_test_status(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_deliverability_poll_status_result_dto:maislurp-client-erlang_deliverability_poll_status_result_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
poll_deliverability_test_status(Ctx, TestId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/test/deliverability/", TestId, "/status"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Resume deliverability simulation job
%% Resume a paused simulation job.
-spec resume_deliverability_simulation_job(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_deliverability_simulation_job_dto:maislurp-client-erlang_deliverability_simulation_job_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
resume_deliverability_simulation_job(Ctx, TestId, JobId) ->
    resume_deliverability_simulation_job(Ctx, TestId, JobId, #{}).

-spec resume_deliverability_simulation_job(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_deliverability_simulation_job_dto:maislurp-client-erlang_deliverability_simulation_job_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
resume_deliverability_simulation_job(Ctx, TestId, JobId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/test/deliverability/", TestId, "/simulation-jobs/", JobId, "/resume"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Start or resume deliverability/load test
%% Start a CREATED test or resume a PAUSED/SCHEDULED test.
-spec start_deliverability_test(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_deliverability_test_dto:maislurp-client-erlang_deliverability_test_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
start_deliverability_test(Ctx, TestId) ->
    start_deliverability_test(Ctx, TestId, #{}).

-spec start_deliverability_test(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_deliverability_test_dto:maislurp-client-erlang_deliverability_test_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
start_deliverability_test(Ctx, TestId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/test/deliverability/", TestId, "/start"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Stop deliverability/load test
%% Stop a deliverability test and mark it terminal.
-spec stop_deliverability_test(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_deliverability_test_dto:maislurp-client-erlang_deliverability_test_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
stop_deliverability_test(Ctx, TestId) ->
    stop_deliverability_test(Ctx, TestId, #{}).

-spec stop_deliverability_test(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_deliverability_test_dto:maislurp-client-erlang_deliverability_test_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
stop_deliverability_test(Ctx, TestId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/test/deliverability/", TestId, "/stop"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Update deliverability/load test
%% Update metadata, timeout, and expectations for a non-running non-terminal test.
-spec update_deliverability_test(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_update_deliverability_test_options:maislurp-client-erlang_update_deliverability_test_options()) -> {ok, maislurp-client-erlang_deliverability_test_dto:maislurp-client-erlang_deliverability_test_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
update_deliverability_test(Ctx, TestId, MaislurpClientErlangUpdateDeliverabilityTestOptions) ->
    update_deliverability_test(Ctx, TestId, MaislurpClientErlangUpdateDeliverabilityTestOptions, #{}).

-spec update_deliverability_test(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_update_deliverability_test_options:maislurp-client-erlang_update_deliverability_test_options(), maps:map()) -> {ok, maislurp-client-erlang_deliverability_test_dto:maislurp-client-erlang_deliverability_test_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
update_deliverability_test(Ctx, TestId, MaislurpClientErlangUpdateDeliverabilityTestOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = patch,
    Path = ["/test/deliverability/", TestId, ""],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangUpdateDeliverabilityTestOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


