-module(maislurp-client-erlang_email_audit_controller_api).

-export([compare_email_audits/3, compare_email_audits/4,
         create_email_audit/2, create_email_audit/3,
         delete_email_audit/2, delete_email_audit/3,
         get_email_audit/2, get_email_audit/3,
         get_email_audits/1, get_email_audits/2]).

-define(BASE_URL, "").

%% @doc Compare two email audits
%% 
-spec compare_email_audits(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_email_audit_comparison_dto:maislurp-client-erlang_email_audit_comparison_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
compare_email_audits(Ctx, AuditId, OtherAuditId) ->
    compare_email_audits(Ctx, AuditId, OtherAuditId, #{}).

-spec compare_email_audits(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_email_audit_comparison_dto:maislurp-client-erlang_email_audit_comparison_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
compare_email_audits(Ctx, AuditId, OtherAuditId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/email-audits/", AuditId, "/compare/", OtherAuditId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create email audit
%% 
-spec create_email_audit(ctx:ctx(), maislurp-client-erlang_create_email_audit_options:maislurp-client-erlang_create_email_audit_options()) -> {ok, maislurp-client-erlang_email_audit_dto:maislurp-client-erlang_email_audit_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_email_audit(Ctx, MaislurpClientErlangCreateEmailAuditOptions) ->
    create_email_audit(Ctx, MaislurpClientErlangCreateEmailAuditOptions, #{}).

-spec create_email_audit(ctx:ctx(), maislurp-client-erlang_create_email_audit_options:maislurp-client-erlang_create_email_audit_options(), maps:map()) -> {ok, maislurp-client-erlang_email_audit_dto:maislurp-client-erlang_email_audit_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_email_audit(Ctx, MaislurpClientErlangCreateEmailAuditOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/email-audits"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangCreateEmailAuditOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete email audit
%% 
-spec delete_email_audit(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_email_audit(Ctx, AuditId) ->
    delete_email_audit(Ctx, AuditId, #{}).

-spec delete_email_audit(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_email_audit(Ctx, AuditId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/email-audits/", AuditId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get email audit
%% 
-spec get_email_audit(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_email_audit_dto:maislurp-client-erlang_email_audit_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_email_audit(Ctx, AuditId) ->
    get_email_audit(Ctx, AuditId, #{}).

-spec get_email_audit(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_email_audit_dto:maislurp-client-erlang_email_audit_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_email_audit(Ctx, AuditId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/email-audits/", AuditId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List email audits
%% 
-spec get_email_audits(ctx:ctx()) -> {ok, [maislurp-client-erlang_email_audit_dto:maislurp-client-erlang_email_audit_dto()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_email_audits(Ctx) ->
    get_email_audits(Ctx, #{}).

-spec get_email_audits(ctx:ctx(), maps:map()) -> {ok, [maislurp-client-erlang_email_audit_dto:maislurp-client-erlang_email_audit_dto()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_email_audits(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/email-audits"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['emailId', 'since', 'before', 'limit'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


