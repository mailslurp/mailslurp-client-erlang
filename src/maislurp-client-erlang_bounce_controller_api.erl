-module(maislurp-client-erlang_bounce_controller_api).

-export([get_bounced_email/2, get_bounced_email/3,
         get_bounced_emails/1, get_bounced_emails/2,
         get_bounced_recipient/2, get_bounced_recipient/3,
         get_bounced_recipients/1, get_bounced_recipients/2]).

-define(BASE_URL, "").

%% @doc Get a bounced email.
%% Bounced emails are email you have sent that were rejected by a recipient
-spec get_bounced_email(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_bounced_email_dto:maislurp-client-erlang_bounced_email_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_bounced_email(Ctx, Id) ->
    get_bounced_email(Ctx, Id, #{}).

-spec get_bounced_email(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_bounced_email_dto:maislurp-client-erlang_bounced_email_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_bounced_email(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/bounce/emails/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get paginated list of bounced emails.
%% Bounced emails are email you have sent that were rejected by a recipient
-spec get_bounced_emails(ctx:ctx()) -> {ok, maislurp-client-erlang_page_bounced_email:maislurp-client-erlang_page_bounced_email(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_bounced_emails(Ctx) ->
    get_bounced_emails(Ctx, #{}).

-spec get_bounced_emails(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_page_bounced_email:maislurp-client-erlang_page_bounced_email(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_bounced_emails(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/bounce/emails"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['page', 'size', 'sort'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get a bounced email.
%% Bounced emails are email you have sent that were rejected by a recipient
-spec get_bounced_recipient(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_bounced_recipient_dto:maislurp-client-erlang_bounced_recipient_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_bounced_recipient(Ctx, Id) ->
    get_bounced_recipient(Ctx, Id, #{}).

-spec get_bounced_recipient(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_bounced_recipient_dto:maislurp-client-erlang_bounced_recipient_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_bounced_recipient(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/bounce/recipients/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get paginated list of bounced recipients.
%% Bounced recipients are email addresses that you have sent emails to that did not accept the sent email. Once a recipient is bounced you cannot send emails to that address.
-spec get_bounced_recipients(ctx:ctx()) -> {ok, maislurp-client-erlang_page_bounced_recipients:maislurp-client-erlang_page_bounced_recipients(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_bounced_recipients(Ctx) ->
    get_bounced_recipients(Ctx, #{}).

-spec get_bounced_recipients(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_page_bounced_recipients:maislurp-client-erlang_page_bounced_recipients(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_bounced_recipients(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/bounce/recipients"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['page', 'size', 'sort'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

