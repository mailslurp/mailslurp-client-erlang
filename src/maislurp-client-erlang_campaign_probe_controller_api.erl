-module(maislurp-client-erlang_campaign_probe_controller_api).

-export([compare_campaign_probe_runs/4, compare_campaign_probe_runs/5,
         create_campaign_probe/2, create_campaign_probe/3,
         delete_campaign_probe/2, delete_campaign_probe/3,
         get_campaign_probe/2, get_campaign_probe/3,
         get_campaign_probe_insights/2, get_campaign_probe_insights/3,
         get_campaign_probe_run/3, get_campaign_probe_run/4,
         get_campaign_probe_runs/2, get_campaign_probe_runs/3,
         get_campaign_probe_series/2, get_campaign_probe_series/3,
         get_campaign_probes/1, get_campaign_probes/2,
         run_campaign_probe_now/3, run_campaign_probe_now/4,
         run_due_campaign_probes/1, run_due_campaign_probes/2,
         update_campaign_probe/3, update_campaign_probe/4]).

-define(BASE_URL, "").

%% @doc Compare two campaign probe runs
%% 
-spec compare_campaign_probe_runs(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_campaign_probe_run_comparison_dto:maislurp-client-erlang_campaign_probe_run_comparison_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
compare_campaign_probe_runs(Ctx, ProbeId, RunId, OtherRunId) ->
    compare_campaign_probe_runs(Ctx, ProbeId, RunId, OtherRunId, #{}).

-spec compare_campaign_probe_runs(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_campaign_probe_run_comparison_dto:maislurp-client-erlang_campaign_probe_run_comparison_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
compare_campaign_probe_runs(Ctx, ProbeId, RunId, OtherRunId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/campaign-probe/probes/", ProbeId, "/runs/", RunId, "/compare/", OtherRunId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create campaign probe
%% 
-spec create_campaign_probe(ctx:ctx(), maislurp-client-erlang_create_campaign_probe_options:maislurp-client-erlang_create_campaign_probe_options()) -> {ok, maislurp-client-erlang_campaign_probe_dto:maislurp-client-erlang_campaign_probe_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_campaign_probe(Ctx, MaislurpClientErlangCreateCampaignProbeOptions) ->
    create_campaign_probe(Ctx, MaislurpClientErlangCreateCampaignProbeOptions, #{}).

-spec create_campaign_probe(ctx:ctx(), maislurp-client-erlang_create_campaign_probe_options:maislurp-client-erlang_create_campaign_probe_options(), maps:map()) -> {ok, maislurp-client-erlang_campaign_probe_dto:maislurp-client-erlang_campaign_probe_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_campaign_probe(Ctx, MaislurpClientErlangCreateCampaignProbeOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/campaign-probe/probes"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangCreateCampaignProbeOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete campaign probe
%% 
-spec delete_campaign_probe(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_campaign_probe(Ctx, ProbeId) ->
    delete_campaign_probe(Ctx, ProbeId, #{}).

-spec delete_campaign_probe(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_campaign_probe(Ctx, ProbeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/campaign-probe/probes/", ProbeId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get campaign probe
%% 
-spec get_campaign_probe(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_campaign_probe_dto:maislurp-client-erlang_campaign_probe_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_campaign_probe(Ctx, ProbeId) ->
    get_campaign_probe(Ctx, ProbeId, #{}).

-spec get_campaign_probe(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_campaign_probe_dto:maislurp-client-erlang_campaign_probe_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_campaign_probe(Ctx, ProbeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/campaign-probe/probes/", ProbeId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get campaign probe insights
%% 
-spec get_campaign_probe_insights(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_campaign_probe_insights_dto:maislurp-client-erlang_campaign_probe_insights_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_campaign_probe_insights(Ctx, ProbeId) ->
    get_campaign_probe_insights(Ctx, ProbeId, #{}).

-spec get_campaign_probe_insights(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_campaign_probe_insights_dto:maislurp-client-erlang_campaign_probe_insights_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_campaign_probe_insights(Ctx, ProbeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/campaign-probe/probes/", ProbeId, "/insights"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['since', 'before'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get campaign probe run
%% 
-spec get_campaign_probe_run(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_campaign_probe_run_dto:maislurp-client-erlang_campaign_probe_run_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_campaign_probe_run(Ctx, ProbeId, RunId) ->
    get_campaign_probe_run(Ctx, ProbeId, RunId, #{}).

-spec get_campaign_probe_run(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_campaign_probe_run_dto:maislurp-client-erlang_campaign_probe_run_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_campaign_probe_run(Ctx, ProbeId, RunId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/campaign-probe/probes/", ProbeId, "/runs/", RunId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List campaign probe runs
%% 
-spec get_campaign_probe_runs(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, [maislurp-client-erlang_campaign_probe_run_dto:maislurp-client-erlang_campaign_probe_run_dto()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_campaign_probe_runs(Ctx, ProbeId) ->
    get_campaign_probe_runs(Ctx, ProbeId, #{}).

-spec get_campaign_probe_runs(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, [maislurp-client-erlang_campaign_probe_run_dto:maislurp-client-erlang_campaign_probe_run_dto()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_campaign_probe_runs(Ctx, ProbeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/campaign-probe/probes/", ProbeId, "/runs"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['since', 'before', 'status', 'limit'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get campaign probe trend series
%% 
-spec get_campaign_probe_series(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_campaign_probe_series_dto:maislurp-client-erlang_campaign_probe_series_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_campaign_probe_series(Ctx, ProbeId) ->
    get_campaign_probe_series(Ctx, ProbeId, #{}).

-spec get_campaign_probe_series(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_campaign_probe_series_dto:maislurp-client-erlang_campaign_probe_series_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_campaign_probe_series(Ctx, ProbeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/campaign-probe/probes/", ProbeId, "/series"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['since', 'before', 'bucket'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List campaign probes
%% 
-spec get_campaign_probes(ctx:ctx()) -> {ok, [maislurp-client-erlang_campaign_probe_dto:maislurp-client-erlang_campaign_probe_dto()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_campaign_probes(Ctx) ->
    get_campaign_probes(Ctx, #{}).

-spec get_campaign_probes(ctx:ctx(), maps:map()) -> {ok, [maislurp-client-erlang_campaign_probe_dto:maislurp-client-erlang_campaign_probe_dto()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_campaign_probes(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/campaign-probe/probes"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Run campaign probe now
%% 
-spec run_campaign_probe_now(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_create_campaign_probe_run_options:maislurp-client-erlang_create_campaign_probe_run_options()) -> {ok, maislurp-client-erlang_campaign_probe_run_now_result:maislurp-client-erlang_campaign_probe_run_now_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
run_campaign_probe_now(Ctx, ProbeId, MaislurpClientErlangCreateCampaignProbeRunOptions) ->
    run_campaign_probe_now(Ctx, ProbeId, MaislurpClientErlangCreateCampaignProbeRunOptions, #{}).

-spec run_campaign_probe_now(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_create_campaign_probe_run_options:maislurp-client-erlang_create_campaign_probe_run_options(), maps:map()) -> {ok, maislurp-client-erlang_campaign_probe_run_now_result:maislurp-client-erlang_campaign_probe_run_now_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
run_campaign_probe_now(Ctx, ProbeId, MaislurpClientErlangCreateCampaignProbeRunOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/campaign-probe/probes/", ProbeId, "/run-now"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangCreateCampaignProbeRunOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Run due campaign probes for user
%% 
-spec run_due_campaign_probes(ctx:ctx()) -> {ok, maislurp-client-erlang_campaign_probe_run_due_result:maislurp-client-erlang_campaign_probe_run_due_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
run_due_campaign_probes(Ctx) ->
    run_due_campaign_probes(Ctx, #{}).

-spec run_due_campaign_probes(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_campaign_probe_run_due_result:maislurp-client-erlang_campaign_probe_run_due_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
run_due_campaign_probes(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/campaign-probe/probes/run-due"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['maxRuns'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Update campaign probe
%% 
-spec update_campaign_probe(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_update_campaign_probe_options:maislurp-client-erlang_update_campaign_probe_options()) -> {ok, maislurp-client-erlang_campaign_probe_dto:maislurp-client-erlang_campaign_probe_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
update_campaign_probe(Ctx, ProbeId, MaislurpClientErlangUpdateCampaignProbeOptions) ->
    update_campaign_probe(Ctx, ProbeId, MaislurpClientErlangUpdateCampaignProbeOptions, #{}).

-spec update_campaign_probe(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_update_campaign_probe_options:maislurp-client-erlang_update_campaign_probe_options(), maps:map()) -> {ok, maislurp-client-erlang_campaign_probe_dto:maislurp-client-erlang_campaign_probe_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
update_campaign_probe(Ctx, ProbeId, MaislurpClientErlangUpdateCampaignProbeOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/campaign-probe/probes/", ProbeId, ""],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangUpdateCampaignProbeOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


