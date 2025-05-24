-module(maislurp-client-erlang_alias_controller_api).

-export([create_alias/2, create_alias/3,
         delete_alias/2, delete_alias/3,
         get_alias/2, get_alias/3,
         get_alias_emails/2, get_alias_emails/3,
         get_alias_threads/2, get_alias_threads/3,
         get_aliases/1, get_aliases/2,
         get_thread/2, get_thread/3,
         get_threads_paginated/1, get_threads_paginated/2,
         reply_to_alias_email/4, reply_to_alias_email/5,
         send_alias_email/3, send_alias_email/4,
         update_alias/3, update_alias/4]).

-define(BASE_URL, "").

%% @doc Create an email alias. Must be verified by clicking link inside verification email that will be sent to the address. Once verified the alias will be active.
%% Email aliases use a MailSlurp randomly generated email address (or a custom domain inbox that you provide) to mask or proxy a real email address. Emails sent to the alias address will be forwarded to the hidden email address it was created for. If you want to send a reply use the threadId attached
-spec create_alias(ctx:ctx(), maislurp-client-erlang_create_alias_options:maislurp-client-erlang_create_alias_options()) -> {ok, maislurp-client-erlang_alias_dto:maislurp-client-erlang_alias_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_alias(Ctx, MaislurpClientErlangCreateAliasOptions) ->
    create_alias(Ctx, MaislurpClientErlangCreateAliasOptions, #{}).

-spec create_alias(ctx:ctx(), maislurp-client-erlang_create_alias_options:maislurp-client-erlang_create_alias_options(), maps:map()) -> {ok, maislurp-client-erlang_alias_dto:maislurp-client-erlang_alias_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_alias(Ctx, MaislurpClientErlangCreateAliasOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/aliases"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangCreateAliasOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete an email alias
%% 
-spec delete_alias(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_alias(Ctx, AliasId) ->
    delete_alias(Ctx, AliasId, #{}).

-spec delete_alias(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_alias(Ctx, AliasId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/aliases/", AliasId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get an email alias
%% Get an email alias by ID
-spec get_alias(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_alias_dto:maislurp-client-erlang_alias_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_alias(Ctx, AliasId) ->
    get_alias(Ctx, AliasId, #{}).

-spec get_alias(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_alias_dto:maislurp-client-erlang_alias_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_alias(Ctx, AliasId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/aliases/", AliasId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get emails for an alias
%% Get paginated emails for an alias by ID
-spec get_alias_emails(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_page_email_projection:maislurp-client-erlang_page_email_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_alias_emails(Ctx, AliasId) ->
    get_alias_emails(Ctx, AliasId, #{}).

-spec get_alias_emails(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_page_email_projection:maislurp-client-erlang_page_email_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_alias_emails(Ctx, AliasId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/aliases/", AliasId, "/emails"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['page', 'size', 'sort', 'since', 'before'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get threads created for an alias
%% Returns threads created for an email alias in paginated form
-spec get_alias_threads(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_page_alias_thread_projection:maislurp-client-erlang_page_alias_thread_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_alias_threads(Ctx, AliasId) ->
    get_alias_threads(Ctx, AliasId, #{}).

-spec get_alias_threads(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_page_alias_thread_projection:maislurp-client-erlang_page_alias_thread_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_alias_threads(Ctx, AliasId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/aliases/", AliasId, "/threads"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['page', 'size', 'sort', 'since', 'before'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get all email aliases you have created
%% Get all email aliases in paginated form
-spec get_aliases(ctx:ctx()) -> {ok, maislurp-client-erlang_page_alias:maislurp-client-erlang_page_alias(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_aliases(Ctx) ->
    get_aliases(Ctx, #{}).

-spec get_aliases(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_page_alias:maislurp-client-erlang_page_alias(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_aliases(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/aliases"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['search', 'page', 'size', 'sort', 'since', 'before'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get a thread
%% Return a thread associated with an alias
-spec get_thread(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_alias_thread_projection:maislurp-client-erlang_alias_thread_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_thread(Ctx, ThreadId) ->
    get_thread(Ctx, ThreadId, #{}).

-spec get_thread(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_alias_thread_projection:maislurp-client-erlang_alias_thread_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_thread(Ctx, ThreadId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/aliases/threads/", ThreadId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get all threads
%% Returns threads created for all aliases in paginated form
-spec get_threads_paginated(ctx:ctx()) -> {ok, maislurp-client-erlang_page_alias_thread_projection:maislurp-client-erlang_page_alias_thread_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_threads_paginated(Ctx) ->
    get_threads_paginated(Ctx, #{}).

-spec get_threads_paginated(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_page_alias_thread_projection:maislurp-client-erlang_page_alias_thread_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_threads_paginated(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/aliases/threads"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['page', 'size', 'sort', 'since', 'before'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Reply to an email
%% Send the reply to the email sender or reply-to and include same subject cc bcc etc. Reply to an email and the contents will be sent with the existing subject to the emails `to`, `cc`, and `bcc`.
-spec reply_to_alias_email(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_reply_to_alias_email_options:maislurp-client-erlang_reply_to_alias_email_options()) -> {ok, maislurp-client-erlang_sent_email_dto:maislurp-client-erlang_sent_email_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
reply_to_alias_email(Ctx, AliasId, EmailId, MaislurpClientErlangReplyToAliasEmailOptions) ->
    reply_to_alias_email(Ctx, AliasId, EmailId, MaislurpClientErlangReplyToAliasEmailOptions, #{}).

-spec reply_to_alias_email(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_reply_to_alias_email_options:maislurp-client-erlang_reply_to_alias_email_options(), maps:map()) -> {ok, maislurp-client-erlang_sent_email_dto:maislurp-client-erlang_sent_email_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
reply_to_alias_email(Ctx, AliasId, EmailId, MaislurpClientErlangReplyToAliasEmailOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/aliases/", AliasId, "/emails/", EmailId, ""],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangReplyToAliasEmailOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Send an email from an alias inbox
%% Send an email from an alias. Replies to the email will be forwarded to the alias masked email address
-spec send_alias_email(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_send_email_options:maislurp-client-erlang_send_email_options()) -> {ok, maislurp-client-erlang_sent_email_dto:maislurp-client-erlang_sent_email_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
send_alias_email(Ctx, AliasId, MaislurpClientErlangSendEmailOptions) ->
    send_alias_email(Ctx, AliasId, MaislurpClientErlangSendEmailOptions, #{}).

-spec send_alias_email(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_send_email_options:maislurp-client-erlang_send_email_options(), maps:map()) -> {ok, maislurp-client-erlang_sent_email_dto:maislurp-client-erlang_sent_email_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
send_alias_email(Ctx, AliasId, MaislurpClientErlangSendEmailOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/aliases/", AliasId, "/emails"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangSendEmailOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Update an email alias
%% 
-spec update_alias(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_update_alias_options:maislurp-client-erlang_update_alias_options()) -> {ok, maislurp-client-erlang_alias_dto:maislurp-client-erlang_alias_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
update_alias(Ctx, AliasId, MaislurpClientErlangUpdateAliasOptions) ->
    update_alias(Ctx, AliasId, MaislurpClientErlangUpdateAliasOptions, #{}).

-spec update_alias(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_update_alias_options:maislurp-client-erlang_update_alias_options(), maps:map()) -> {ok, maislurp-client-erlang_alias_dto:maislurp-client-erlang_alias_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
update_alias(Ctx, AliasId, MaislurpClientErlangUpdateAliasOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/aliases/", AliasId, ""],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangUpdateAliasOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


