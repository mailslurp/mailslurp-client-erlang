-module(maislurp-client-erlang_sent_emails_controller_api).

-export([get_sent_email/2, get_sent_email/3,
         get_sent_emails/1, get_sent_emails/2,
         get_sent_organization_emails/1, get_sent_organization_emails/2]).

-define(BASE_URL, "").

%% @doc Get sent email receipt
%% 
-spec get_sent_email(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_sent_email_dto:maislurp-client-erlang_sent_email_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_sent_email(Ctx, Id) ->
    get_sent_email(Ctx, Id, #{}).

-spec get_sent_email(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_sent_email_dto:maislurp-client-erlang_sent_email_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_sent_email(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/sent/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get all sent emails in paginated form
%% 
-spec get_sent_emails(ctx:ctx()) -> {ok, maislurp-client-erlang_page_sent_email_projection:maislurp-client-erlang_page_sent_email_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_sent_emails(Ctx) ->
    get_sent_emails(Ctx, #{}).

-spec get_sent_emails(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_page_sent_email_projection:maislurp-client-erlang_page_sent_email_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_sent_emails(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/sent"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['inboxId', 'page', 'size', 'sort'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get all sent organization emails in paginated form
%% 
-spec get_sent_organization_emails(ctx:ctx()) -> {ok, maislurp-client-erlang_page_sent_email_projection:maislurp-client-erlang_page_sent_email_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_sent_organization_emails(Ctx) ->
    get_sent_organization_emails(Ctx, #{}).

-spec get_sent_organization_emails(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_page_sent_email_projection:maislurp-client-erlang_page_sent_email_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_sent_organization_emails(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/sent/organization"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['inboxId', 'page', 'size', 'sort'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


