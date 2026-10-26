-module(maislurp-client-erlang_api_email_warmup_controller_api).

-export([create_email_warmup_program/2, create_email_warmup_program/3,
         delete_email_warmup_program/3, delete_email_warmup_program/4,
         delete_email_warmup_sender_seats/1, delete_email_warmup_sender_seats/2,
         get_email_warmup_overview/1, get_email_warmup_overview/2,
         get_email_warmup_placement_checks/2, get_email_warmup_placement_checks/3,
         get_email_warmup_program/2, get_email_warmup_program/3,
         get_email_warmup_program_analytics/2, get_email_warmup_program_analytics/3,
         get_email_warmup_programs/1, get_email_warmup_programs/2,
         get_email_warmup_readiness/2, get_email_warmup_readiness/3,
         get_email_warmup_slots/2, get_email_warmup_slots/3,
         get_email_warmup_usage/1, get_email_warmup_usage/2,
         pause_email_warmup_program/3, pause_email_warmup_program/4,
         resume_email_warmup_program/3, resume_email_warmup_program/4,
         retry_email_warmup_program/3, retry_email_warmup_program/4,
         start_email_warmup_program/3, start_email_warmup_program/4,
         stop_email_warmup_program/3, stop_email_warmup_program/4,
         update_email_warmup_program/3, update_email_warmup_program/4,
         update_email_warmup_sender_seats/2, update_email_warmup_sender_seats/3]).

-define(BASE_URL, "").

%% @doc Create an email warmup program
%% 
-spec create_email_warmup_program(ctx:ctx(), maislurp-client-erlang_create_email_warmup_program_options:maislurp-client-erlang_create_email_warmup_program_options()) -> {ok, maislurp-client-erlang_email_warmup_program_dto:maislurp-client-erlang_email_warmup_program_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_email_warmup_program(Ctx, MaislurpClientErlangCreateEmailWarmupProgramOptions) ->
    create_email_warmup_program(Ctx, MaislurpClientErlangCreateEmailWarmupProgramOptions, #{}).

-spec create_email_warmup_program(ctx:ctx(), maislurp-client-erlang_create_email_warmup_program_options:maislurp-client-erlang_create_email_warmup_program_options(), maps:map()) -> {ok, maislurp-client-erlang_email_warmup_program_dto:maislurp-client-erlang_email_warmup_program_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_email_warmup_program(Ctx, MaislurpClientErlangCreateEmailWarmupProgramOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/email-warmup/programs"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangCreateEmailWarmupProgramOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete an email warmup program
%% 
-spec delete_email_warmup_program(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_email_warmup_program_command_options:maislurp-client-erlang_email_warmup_program_command_options()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_email_warmup_program(Ctx, ProgramId, MaislurpClientErlangEmailWarmupProgramCommandOptions) ->
    delete_email_warmup_program(Ctx, ProgramId, MaislurpClientErlangEmailWarmupProgramCommandOptions, #{}).

-spec delete_email_warmup_program(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_email_warmup_program_command_options:maislurp-client-erlang_email_warmup_program_command_options(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_email_warmup_program(Ctx, ProgramId, MaislurpClientErlangEmailWarmupProgramCommandOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/email-warmup/programs/", ProgramId, ""],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangEmailWarmupProgramCommandOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Cancel purchased email warmup sender seats
%% 
-spec delete_email_warmup_sender_seats(ctx:ctx()) -> {ok, maislurp-client-erlang_email_warmup_usage_summary_dto:maislurp-client-erlang_email_warmup_usage_summary_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_email_warmup_sender_seats(Ctx) ->
    delete_email_warmup_sender_seats(Ctx, #{}).

-spec delete_email_warmup_sender_seats(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_email_warmup_usage_summary_dto:maislurp-client-erlang_email_warmup_usage_summary_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_email_warmup_sender_seats(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/email-warmup/programs/sender-seats"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get operational email warmup activity and program progress
%% 
-spec get_email_warmup_overview(ctx:ctx()) -> {ok, maislurp-client-erlang_email_warmup_overview_dto:maislurp-client-erlang_email_warmup_overview_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_email_warmup_overview(Ctx) ->
    get_email_warmup_overview(Ctx, #{}).

-spec get_email_warmup_overview(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_email_warmup_overview_dto:maislurp-client-erlang_email_warmup_overview_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_email_warmup_overview(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/email-warmup/programs/overview"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['days'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List Gmail and Outlook placement checks for an email warmup program
%% 
-spec get_email_warmup_placement_checks(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, [maislurp-client-erlang_email_warmup_placement_check_dto:maislurp-client-erlang_email_warmup_placement_check_dto()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_email_warmup_placement_checks(Ctx, ProgramId) ->
    get_email_warmup_placement_checks(Ctx, ProgramId, #{}).

-spec get_email_warmup_placement_checks(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, [maislurp-client-erlang_email_warmup_placement_check_dto:maislurp-client-erlang_email_warmup_placement_check_dto()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_email_warmup_placement_checks(Ctx, ProgramId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/email-warmup/programs/", ProgramId, "/placement-checks"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get an email warmup program
%% 
-spec get_email_warmup_program(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_email_warmup_program_dto:maislurp-client-erlang_email_warmup_program_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_email_warmup_program(Ctx, ProgramId) ->
    get_email_warmup_program(Ctx, ProgramId, #{}).

-spec get_email_warmup_program(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_email_warmup_program_dto:maislurp-client-erlang_email_warmup_program_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_email_warmup_program(Ctx, ProgramId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/email-warmup/programs/", ProgramId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get email warmup program progress and daily activity
%% 
-spec get_email_warmup_program_analytics(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_email_warmup_program_analytics_dto:maislurp-client-erlang_email_warmup_program_analytics_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_email_warmup_program_analytics(Ctx, ProgramId) ->
    get_email_warmup_program_analytics(Ctx, ProgramId, #{}).

-spec get_email_warmup_program_analytics(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_email_warmup_program_analytics_dto:maislurp-client-erlang_email_warmup_program_analytics_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_email_warmup_program_analytics(Ctx, ProgramId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/email-warmup/programs/", ProgramId, "/analytics"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['days'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List email warmup programs
%% 
-spec get_email_warmup_programs(ctx:ctx()) -> {ok, maislurp-client-erlang_email_warmup_program_page_dto:maislurp-client-erlang_email_warmup_program_page_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_email_warmup_programs(Ctx) ->
    get_email_warmup_programs(Ctx, #{}).

-spec get_email_warmup_programs(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_email_warmup_program_page_dto:maislurp-client-erlang_email_warmup_program_page_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_email_warmup_programs(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/email-warmup/programs"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['page', 'size'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get warmup readiness, adaptive pacing, and sender-health signals
%% 
-spec get_email_warmup_readiness(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_email_warmup_readiness_dto:maislurp-client-erlang_email_warmup_readiness_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_email_warmup_readiness(Ctx, ProgramId) ->
    get_email_warmup_readiness(Ctx, ProgramId, #{}).

-spec get_email_warmup_readiness(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_email_warmup_readiness_dto:maislurp-client-erlang_email_warmup_readiness_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_email_warmup_readiness(Ctx, ProgramId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/email-warmup/programs/", ProgramId, "/readiness"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List scheduled email warmup slots
%% 
-spec get_email_warmup_slots(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_email_warmup_send_slot_page_dto:maislurp-client-erlang_email_warmup_send_slot_page_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_email_warmup_slots(Ctx, ProgramId) ->
    get_email_warmup_slots(Ctx, ProgramId, #{}).

-spec get_email_warmup_slots(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_email_warmup_send_slot_page_dto:maislurp-client-erlang_email_warmup_send_slot_page_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_email_warmup_slots(Ctx, ProgramId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/email-warmup/programs/", ProgramId, "/slots"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['page', 'size'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get email warmup sender capacity, included credits, and billable usage
%% 
-spec get_email_warmup_usage(ctx:ctx()) -> {ok, maislurp-client-erlang_email_warmup_usage_summary_dto:maislurp-client-erlang_email_warmup_usage_summary_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_email_warmup_usage(Ctx) ->
    get_email_warmup_usage(Ctx, #{}).

-spec get_email_warmup_usage(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_email_warmup_usage_summary_dto:maislurp-client-erlang_email_warmup_usage_summary_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_email_warmup_usage(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/email-warmup/programs/usage"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Pause an email warmup program
%% 
-spec pause_email_warmup_program(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_email_warmup_program_command_options:maislurp-client-erlang_email_warmup_program_command_options()) -> {ok, maislurp-client-erlang_email_warmup_program_dto:maislurp-client-erlang_email_warmup_program_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
pause_email_warmup_program(Ctx, ProgramId, MaislurpClientErlangEmailWarmupProgramCommandOptions) ->
    pause_email_warmup_program(Ctx, ProgramId, MaislurpClientErlangEmailWarmupProgramCommandOptions, #{}).

-spec pause_email_warmup_program(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_email_warmup_program_command_options:maislurp-client-erlang_email_warmup_program_command_options(), maps:map()) -> {ok, maislurp-client-erlang_email_warmup_program_dto:maislurp-client-erlang_email_warmup_program_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
pause_email_warmup_program(Ctx, ProgramId, MaislurpClientErlangEmailWarmupProgramCommandOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/email-warmup/programs/", ProgramId, "/pause"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangEmailWarmupProgramCommandOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Resume an email warmup program
%% 
-spec resume_email_warmup_program(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_email_warmup_program_command_options:maislurp-client-erlang_email_warmup_program_command_options()) -> {ok, maislurp-client-erlang_email_warmup_program_dto:maislurp-client-erlang_email_warmup_program_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
resume_email_warmup_program(Ctx, ProgramId, MaislurpClientErlangEmailWarmupProgramCommandOptions) ->
    resume_email_warmup_program(Ctx, ProgramId, MaislurpClientErlangEmailWarmupProgramCommandOptions, #{}).

-spec resume_email_warmup_program(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_email_warmup_program_command_options:maislurp-client-erlang_email_warmup_program_command_options(), maps:map()) -> {ok, maislurp-client-erlang_email_warmup_program_dto:maislurp-client-erlang_email_warmup_program_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
resume_email_warmup_program(Ctx, ProgramId, MaislurpClientErlangEmailWarmupProgramCommandOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/email-warmup/programs/", ProgramId, "/resume"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangEmailWarmupProgramCommandOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Retry a system-paused email warmup program
%% 
-spec retry_email_warmup_program(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_email_warmup_program_command_options:maislurp-client-erlang_email_warmup_program_command_options()) -> {ok, maislurp-client-erlang_email_warmup_program_dto:maislurp-client-erlang_email_warmup_program_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
retry_email_warmup_program(Ctx, ProgramId, MaislurpClientErlangEmailWarmupProgramCommandOptions) ->
    retry_email_warmup_program(Ctx, ProgramId, MaislurpClientErlangEmailWarmupProgramCommandOptions, #{}).

-spec retry_email_warmup_program(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_email_warmup_program_command_options:maislurp-client-erlang_email_warmup_program_command_options(), maps:map()) -> {ok, maislurp-client-erlang_email_warmup_program_dto:maislurp-client-erlang_email_warmup_program_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
retry_email_warmup_program(Ctx, ProgramId, MaislurpClientErlangEmailWarmupProgramCommandOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/email-warmup/programs/", ProgramId, "/retry"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangEmailWarmupProgramCommandOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Start an email warmup program
%% 
-spec start_email_warmup_program(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_email_warmup_program_command_options:maislurp-client-erlang_email_warmup_program_command_options()) -> {ok, maislurp-client-erlang_email_warmup_program_dto:maislurp-client-erlang_email_warmup_program_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
start_email_warmup_program(Ctx, ProgramId, MaislurpClientErlangEmailWarmupProgramCommandOptions) ->
    start_email_warmup_program(Ctx, ProgramId, MaislurpClientErlangEmailWarmupProgramCommandOptions, #{}).

-spec start_email_warmup_program(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_email_warmup_program_command_options:maislurp-client-erlang_email_warmup_program_command_options(), maps:map()) -> {ok, maislurp-client-erlang_email_warmup_program_dto:maislurp-client-erlang_email_warmup_program_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
start_email_warmup_program(Ctx, ProgramId, MaislurpClientErlangEmailWarmupProgramCommandOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/email-warmup/programs/", ProgramId, "/start"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangEmailWarmupProgramCommandOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Stop an email warmup program
%% 
-spec stop_email_warmup_program(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_email_warmup_program_command_options:maislurp-client-erlang_email_warmup_program_command_options()) -> {ok, maislurp-client-erlang_email_warmup_program_dto:maislurp-client-erlang_email_warmup_program_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
stop_email_warmup_program(Ctx, ProgramId, MaislurpClientErlangEmailWarmupProgramCommandOptions) ->
    stop_email_warmup_program(Ctx, ProgramId, MaislurpClientErlangEmailWarmupProgramCommandOptions, #{}).

-spec stop_email_warmup_program(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_email_warmup_program_command_options:maislurp-client-erlang_email_warmup_program_command_options(), maps:map()) -> {ok, maislurp-client-erlang_email_warmup_program_dto:maislurp-client-erlang_email_warmup_program_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
stop_email_warmup_program(Ctx, ProgramId, MaislurpClientErlangEmailWarmupProgramCommandOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/email-warmup/programs/", ProgramId, "/stop"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangEmailWarmupProgramCommandOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Update a draft email warmup program
%% 
-spec update_email_warmup_program(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_update_email_warmup_program_options:maislurp-client-erlang_update_email_warmup_program_options()) -> {ok, maislurp-client-erlang_email_warmup_program_dto:maislurp-client-erlang_email_warmup_program_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
update_email_warmup_program(Ctx, ProgramId, MaislurpClientErlangUpdateEmailWarmupProgramOptions) ->
    update_email_warmup_program(Ctx, ProgramId, MaislurpClientErlangUpdateEmailWarmupProgramOptions, #{}).

-spec update_email_warmup_program(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_update_email_warmup_program_options:maislurp-client-erlang_update_email_warmup_program_options(), maps:map()) -> {ok, maislurp-client-erlang_email_warmup_program_dto:maislurp-client-erlang_email_warmup_program_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
update_email_warmup_program(Ctx, ProgramId, MaislurpClientErlangUpdateEmailWarmupProgramOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/email-warmup/programs/", ProgramId, ""],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangUpdateEmailWarmupProgramOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Update purchased email warmup sender seats
%% 
-spec update_email_warmup_sender_seats(ctx:ctx(), maislurp-client-erlang_update_email_warmup_sender_seats_options:maislurp-client-erlang_update_email_warmup_sender_seats_options()) -> {ok, maislurp-client-erlang_email_warmup_usage_summary_dto:maislurp-client-erlang_email_warmup_usage_summary_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
update_email_warmup_sender_seats(Ctx, MaislurpClientErlangUpdateEmailWarmupSenderSeatsOptions) ->
    update_email_warmup_sender_seats(Ctx, MaislurpClientErlangUpdateEmailWarmupSenderSeatsOptions, #{}).

-spec update_email_warmup_sender_seats(ctx:ctx(), maislurp-client-erlang_update_email_warmup_sender_seats_options:maislurp-client-erlang_update_email_warmup_sender_seats_options(), maps:map()) -> {ok, maislurp-client-erlang_email_warmup_usage_summary_dto:maislurp-client-erlang_email_warmup_usage_summary_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
update_email_warmup_sender_seats(Ctx, MaislurpClientErlangUpdateEmailWarmupSenderSeatsOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/email-warmup/programs/sender-seats"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangUpdateEmailWarmupSenderSeatsOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


