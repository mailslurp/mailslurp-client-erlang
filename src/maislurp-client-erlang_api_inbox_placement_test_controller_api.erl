-module(maislurp-client-erlang_api_inbox_placement_test_controller_api).

-export([confirm_inbox_placement_test_sent/2, confirm_inbox_placement_test_sent/3,
         create_inbox_placement_test/2, create_inbox_placement_test/3,
         export_inbox_placement_seed_list/2, export_inbox_placement_seed_list/3,
         export_inbox_placement_test_results/2, export_inbox_placement_test_results/3,
         get_inbox_placement_analytics_breakdown/1, get_inbox_placement_analytics_breakdown/2,
         get_inbox_placement_analytics_series/1, get_inbox_placement_analytics_series/2,
         get_inbox_placement_public_share/2, get_inbox_placement_public_share/3,
         get_inbox_placement_public_share_analysis/2, get_inbox_placement_public_share_analysis/3,
         get_inbox_placement_test/2, get_inbox_placement_test/3,
         get_inbox_placement_test_analysis/2, get_inbox_placement_test_analysis/3,
         get_inbox_placement_test_results/2, get_inbox_placement_test_results/3,
         get_inbox_placement_tests/1, get_inbox_placement_tests/2,
         prepare_inbox_placement_test/2, prepare_inbox_placement_test/3]).

-define(BASE_URL, "").

%% @doc Confirm an inbox placement test email has been sent
%% Reconcile any messages that arrived after seed reservation, commit allowance, and move a prepared dashboard test into its active lifecycle. This operation is idempotent.
-spec confirm_inbox_placement_test_sent(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_inbox_placement_test_run_dto:maislurp-client-erlang_inbox_placement_test_run_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
confirm_inbox_placement_test_sent(Ctx, Id) ->
    confirm_inbox_placement_test_sent(Ctx, Id, #{}).

-spec confirm_inbox_placement_test_sent(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_inbox_placement_test_run_dto:maislurp-client-erlang_inbox_placement_test_run_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
confirm_inbox_placement_test_sent(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/inbox-placement-tests/", Id, "/confirm-sent"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create a new direct-send inbox placement test
%% 
-spec create_inbox_placement_test(ctx:ctx(), maislurp-client-erlang_create_inbox_placement_test_options:maislurp-client-erlang_create_inbox_placement_test_options()) -> {ok, maislurp-client-erlang_inbox_placement_test_run_dto:maislurp-client-erlang_inbox_placement_test_run_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_inbox_placement_test(Ctx, MaislurpClientErlangCreateInboxPlacementTestOptions) ->
    create_inbox_placement_test(Ctx, MaislurpClientErlangCreateInboxPlacementTestOptions, #{}).

-spec create_inbox_placement_test(ctx:ctx(), maislurp-client-erlang_create_inbox_placement_test_options:maislurp-client-erlang_create_inbox_placement_test_options(), maps:map()) -> {ok, maislurp-client-erlang_inbox_placement_test_run_dto:maislurp-client-erlang_inbox_placement_test_run_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_inbox_placement_test(Ctx, MaislurpClientErlangCreateInboxPlacementTestOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/inbox-placement-tests"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangCreateInboxPlacementTestOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Download inbox placement seed addresses as an email-platform CSV
%% Export the current run's seed addresses with headers recognized by the selected email platform. Downloading a prepared seed list does not confirm the send or consume allowance.
-spec export_inbox_placement_seed_list(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
export_inbox_placement_seed_list(Ctx, Id) ->
    export_inbox_placement_seed_list(Ctx, Id, #{}).

-spec export_inbox_placement_seed_list(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
export_inbox_placement_seed_list(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/inbox-placement-tests/", Id, "/seed-list.csv"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['provider'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Export inbox placement test results as CSV
%% Export one row per placement target, including run-level delivery totals, 0-10 placement scores, and target placement outcome fields.
-spec export_inbox_placement_test_results(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
export_inbox_placement_test_results(Ctx, Id) ->
    export_inbox_placement_test_results(Ctx, Id, #{}).

-spec export_inbox_placement_test_results(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
export_inbox_placement_test_results(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/inbox-placement-tests/", Id, "/results/export"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get inbox placement analytics breakdowns
%% Return aggregated folder, provider, sender-domain, and from-email breakdowns for inbox placement runs in a time range.
-spec get_inbox_placement_analytics_breakdown(ctx:ctx()) -> {ok, maislurp-client-erlang_inbox_placement_analytics_breakdown_dto:maislurp-client-erlang_inbox_placement_analytics_breakdown_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inbox_placement_analytics_breakdown(Ctx) ->
    get_inbox_placement_analytics_breakdown(Ctx, #{}).

-spec get_inbox_placement_analytics_breakdown(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_inbox_placement_analytics_breakdown_dto:maislurp-client-erlang_inbox_placement_analytics_breakdown_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inbox_placement_analytics_breakdown(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/inbox-placement-tests/analytics/breakdown"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['since', 'before', 'senderDomain', 'fromEmail', 'limit'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get inbox placement analytics time series
%% Return chart-ready inbox placement metrics over time, with optional sender/domain filters and grouped comparisons for sender domains or from-email addresses.
-spec get_inbox_placement_analytics_series(ctx:ctx()) -> {ok, maislurp-client-erlang_inbox_placement_analytics_series_dto:maislurp-client-erlang_inbox_placement_analytics_series_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inbox_placement_analytics_series(Ctx) ->
    get_inbox_placement_analytics_series(Ctx, #{}).

-spec get_inbox_placement_analytics_series(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_inbox_placement_analytics_series_dto:maislurp-client-erlang_inbox_placement_analytics_series_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inbox_placement_analytics_series(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/inbox-placement-tests/analytics/series"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['since', 'before', 'bucket', 'groupBy', 'senderDomain', 'fromEmail', 'runLimit', 'groupLimit'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get a public inbox placement share
%% 
-spec get_inbox_placement_public_share(ctx:ctx(), binary()) -> {ok, maislurp-client-erlang_inbox_placement_public_share_dto:maislurp-client-erlang_inbox_placement_public_share_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inbox_placement_public_share(Ctx, ShareToken) ->
    get_inbox_placement_public_share(Ctx, ShareToken, #{}).

-spec get_inbox_placement_public_share(ctx:ctx(), binary(), maps:map()) -> {ok, maislurp-client-erlang_inbox_placement_public_share_dto:maislurp-client-erlang_inbox_placement_public_share_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inbox_placement_public_share(Ctx, ShareToken, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/inbox-placement-tests/share/", ShareToken, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get public inbox placement share analysis
%% 
-spec get_inbox_placement_public_share_analysis(ctx:ctx(), binary()) -> {ok, maislurp-client-erlang_inbox_placement_analysis_bundle_dto:maislurp-client-erlang_inbox_placement_analysis_bundle_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inbox_placement_public_share_analysis(Ctx, ShareToken) ->
    get_inbox_placement_public_share_analysis(Ctx, ShareToken, #{}).

-spec get_inbox_placement_public_share_analysis(ctx:ctx(), binary(), maps:map()) -> {ok, maislurp-client-erlang_inbox_placement_analysis_bundle_dto:maislurp-client-erlang_inbox_placement_analysis_bundle_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inbox_placement_public_share_analysis(Ctx, ShareToken, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/inbox-placement-tests/share/", ShareToken, "/analysis"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get inbox placement test run
%% 
-spec get_inbox_placement_test(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_inbox_placement_test_run_dto:maislurp-client-erlang_inbox_placement_test_run_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inbox_placement_test(Ctx, Id) ->
    get_inbox_placement_test(Ctx, Id, #{}).

-spec get_inbox_placement_test(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_inbox_placement_test_run_dto:maislurp-client-erlang_inbox_placement_test_run_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inbox_placement_test(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/inbox-placement-tests/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get inbox placement run analysis
%% 
-spec get_inbox_placement_test_analysis(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_inbox_placement_analysis_bundle_dto:maislurp-client-erlang_inbox_placement_analysis_bundle_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inbox_placement_test_analysis(Ctx, Id) ->
    get_inbox_placement_test_analysis(Ctx, Id, #{}).

-spec get_inbox_placement_test_analysis(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_inbox_placement_analysis_bundle_dto:maislurp-client-erlang_inbox_placement_analysis_bundle_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inbox_placement_test_analysis(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/inbox-placement-tests/", Id, "/analysis"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get inbox placement test results
%% 
-spec get_inbox_placement_test_results(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_inbox_placement_test_results_dto:maislurp-client-erlang_inbox_placement_test_results_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inbox_placement_test_results(Ctx, Id) ->
    get_inbox_placement_test_results(Ctx, Id, #{}).

-spec get_inbox_placement_test_results(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_inbox_placement_test_results_dto:maislurp-client-erlang_inbox_placement_test_results_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inbox_placement_test_results(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/inbox-placement-tests/", Id, "/results"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List inbox placement test runs
%% 
-spec get_inbox_placement_tests(ctx:ctx()) -> {ok, [maislurp-client-erlang_inbox_placement_test_run_dto:maislurp-client-erlang_inbox_placement_test_run_dto()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inbox_placement_tests(Ctx) ->
    get_inbox_placement_tests(Ctx, #{}).

-spec get_inbox_placement_tests(ctx:ctx(), maps:map()) -> {ok, [maislurp-client-erlang_inbox_placement_test_run_dto:maislurp-client-erlang_inbox_placement_test_run_dto()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inbox_placement_tests(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/inbox-placement-tests"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['limit'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Prepare a direct-send inbox placement test without consuming allowance
%% Reserve seed addresses for the dashboard create flow. The run remains staged and allowance is not committed until send confirmation. Reuses a recent active preparation when possible.
-spec prepare_inbox_placement_test(ctx:ctx(), maislurp-client-erlang_create_inbox_placement_test_options:maislurp-client-erlang_create_inbox_placement_test_options()) -> {ok, maislurp-client-erlang_inbox_placement_test_run_dto:maislurp-client-erlang_inbox_placement_test_run_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
prepare_inbox_placement_test(Ctx, MaislurpClientErlangCreateInboxPlacementTestOptions) ->
    prepare_inbox_placement_test(Ctx, MaislurpClientErlangCreateInboxPlacementTestOptions, #{}).

-spec prepare_inbox_placement_test(ctx:ctx(), maislurp-client-erlang_create_inbox_placement_test_options:maislurp-client-erlang_create_inbox_placement_test_options(), maps:map()) -> {ok, maislurp-client-erlang_inbox_placement_test_run_dto:maislurp-client-erlang_inbox_placement_test_run_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
prepare_inbox_placement_test(Ctx, MaislurpClientErlangCreateInboxPlacementTestOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/inbox-placement-tests/prepare"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangCreateInboxPlacementTestOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


