-module(maislurp-client-erlang_sms_controller_api).

-export([delete_sent_sms_message/2, delete_sent_sms_message/3,
         delete_sent_sms_messages/1, delete_sent_sms_messages/2,
         delete_sms_message/2, delete_sms_message/3,
         delete_sms_messages/1, delete_sms_messages/2,
         get_all_sms_messages/1, get_all_sms_messages/2,
         get_reply_for_sms_message/2, get_reply_for_sms_message/3,
         get_sent_sms_count/1, get_sent_sms_count/2,
         get_sent_sms_message/2, get_sent_sms_message/3,
         get_sent_sms_messages_paginated/1, get_sent_sms_messages_paginated/2,
         get_sms_count/1, get_sms_count/2,
         get_sms_message/2, get_sms_message/3,
         get_unread_sms_count/1, get_unread_sms_count/2,
         reply_to_sms_message/3, reply_to_sms_message/4,
         send_sms/2, send_sms/3,
         set_sms_favourited/3, set_sms_favourited/4]).

-define(BASE_URL, "").

%% @doc Delete sent SMS message.
%% Delete a sent SMS message
-spec delete_sent_sms_message(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_sent_sms_message(Ctx, SentSmsId) ->
    delete_sent_sms_message(Ctx, SentSmsId, #{}).

-spec delete_sent_sms_message(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_sent_sms_message(Ctx, SentSmsId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/sms/sent/", SentSmsId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete all sent SMS messages
%% Delete all sent SMS messages or all messages for a given phone number
-spec delete_sent_sms_messages(ctx:ctx()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_sent_sms_messages(Ctx) ->
    delete_sent_sms_messages(Ctx, #{}).

-spec delete_sent_sms_messages(ctx:ctx(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_sent_sms_messages(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/sms/sent"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['phoneNumberId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete SMS message.
%% Delete an SMS message
-spec delete_sms_message(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_sms_message(Ctx, SmsId) ->
    delete_sms_message(Ctx, SmsId, #{}).

-spec delete_sms_message(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_sms_message(Ctx, SmsId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/sms/", SmsId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete all SMS messages
%% Delete all SMS messages or all messages for a given phone number
-spec delete_sms_messages(ctx:ctx()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_sms_messages(Ctx) ->
    delete_sms_messages(Ctx, #{}).

-spec delete_sms_messages(ctx:ctx(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_sms_messages(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/sms"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['phoneNumberId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_all_sms_messages(ctx:ctx()) -> {ok, maislurp-client-erlang_page_sms_projection:maislurp-client-erlang_page_sms_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_all_sms_messages(Ctx) ->
    get_all_sms_messages(Ctx, #{}).

-spec get_all_sms_messages(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_page_sms_projection:maislurp-client-erlang_page_sms_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_all_sms_messages(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/sms"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['phoneNumber', 'page', 'size', 'sort', 'since', 'before', 'search', 'favourite'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get reply for an SMS message
%% Get reply for an SMS message.
-spec get_reply_for_sms_message(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_reply_for_sms:maislurp-client-erlang_reply_for_sms(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_reply_for_sms_message(Ctx, SmsId) ->
    get_reply_for_sms_message(Ctx, SmsId, #{}).

-spec get_reply_for_sms_message(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_reply_for_sms:maislurp-client-erlang_reply_for_sms(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_reply_for_sms_message(Ctx, SmsId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/sms/", SmsId, "/reply"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get sent SMS count
%% Get number of sent SMS
-spec get_sent_sms_count(ctx:ctx()) -> {ok, maislurp-client-erlang_count_dto:maislurp-client-erlang_count_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_sent_sms_count(Ctx) ->
    get_sent_sms_count(Ctx, #{}).

-spec get_sent_sms_count(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_count_dto:maislurp-client-erlang_count_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_sent_sms_count(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/sms/sent/count"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get sent SMS content including body. Expects sent SMS to exist by ID.
%% Returns an SMS summary object with content.
-spec get_sent_sms_message(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_sent_sms_dto:maislurp-client-erlang_sent_sms_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_sent_sms_message(Ctx, SentSmsId) ->
    get_sent_sms_message(Ctx, SentSmsId, #{}).

-spec get_sent_sms_message(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_sent_sms_dto:maislurp-client-erlang_sent_sms_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_sent_sms_message(Ctx, SentSmsId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/sms/sent/", SentSmsId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get all SMS messages in all phone numbers in paginated form. .
%% By default returns all SMS messages across all phone numbers sorted by ascending created at date. Responses are paginated. You can restrict results to a list of phone number IDs. You can also filter out read messages
-spec get_sent_sms_messages_paginated(ctx:ctx()) -> {ok, maislurp-client-erlang_page_sent_sms_projection:maislurp-client-erlang_page_sent_sms_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_sent_sms_messages_paginated(Ctx) ->
    get_sent_sms_messages_paginated(Ctx, #{}).

-spec get_sent_sms_messages_paginated(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_page_sent_sms_projection:maislurp-client-erlang_page_sent_sms_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_sent_sms_messages_paginated(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/sms/sent"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['phoneNumber', 'page', 'size', 'sort', 'since', 'before', 'search'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get SMS count
%% Get number of SMS
-spec get_sms_count(ctx:ctx()) -> {ok, maislurp-client-erlang_count_dto:maislurp-client-erlang_count_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_sms_count(Ctx) ->
    get_sms_count(Ctx, #{}).

-spec get_sms_count(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_count_dto:maislurp-client-erlang_count_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_sms_count(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/sms/count"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get SMS content including body. Expects SMS to exist by ID. For SMS that may not have arrived yet use the WaitForController.
%% Returns a SMS summary object with content.
-spec get_sms_message(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_sms_dto:maislurp-client-erlang_sms_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_sms_message(Ctx, SmsId) ->
    get_sms_message(Ctx, SmsId, #{}).

-spec get_sms_message(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_sms_dto:maislurp-client-erlang_sms_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_sms_message(Ctx, SmsId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/sms/", SmsId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get unread SMS count
%% Get number of SMS unread. Unread means has not been viewed in dashboard or returned in an email API response
-spec get_unread_sms_count(ctx:ctx()) -> {ok, maislurp-client-erlang_unread_count:maislurp-client-erlang_unread_count(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_unread_sms_count(Ctx) ->
    get_unread_sms_count(Ctx, #{}).

-spec get_unread_sms_count(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_unread_count:maislurp-client-erlang_unread_count(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_unread_sms_count(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/sms/unreadCount"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Send a reply to a received SMS message. Replies are sent from the receiving number.
%% Reply to an SMS message.
-spec reply_to_sms_message(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_sms_reply_options:maislurp-client-erlang_sms_reply_options()) -> {ok, maislurp-client-erlang_sent_sms_dto:maislurp-client-erlang_sent_sms_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
reply_to_sms_message(Ctx, SmsId, MaislurpClientErlangSmsReplyOptions) ->
    reply_to_sms_message(Ctx, SmsId, MaislurpClientErlangSmsReplyOptions, #{}).

-spec reply_to_sms_message(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_sms_reply_options:maislurp-client-erlang_sms_reply_options(), maps:map()) -> {ok, maislurp-client-erlang_sent_sms_dto:maislurp-client-erlang_sent_sms_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
reply_to_sms_message(Ctx, SmsId, MaislurpClientErlangSmsReplyOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/sms/", SmsId, "/reply"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangSmsReplyOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec send_sms(ctx:ctx(), maislurp-client-erlang_sms_send_options:maislurp-client-erlang_sms_send_options()) -> {ok, maislurp-client-erlang_sent_sms_dto:maislurp-client-erlang_sent_sms_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
send_sms(Ctx, MaislurpClientErlangSmsSendOptions) ->
    send_sms(Ctx, MaislurpClientErlangSmsSendOptions, #{}).

-spec send_sms(ctx:ctx(), maislurp-client-erlang_sms_send_options:maislurp-client-erlang_sms_send_options(), maps:map()) -> {ok, maislurp-client-erlang_sent_sms_dto:maislurp-client-erlang_sent_sms_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
send_sms(Ctx, MaislurpClientErlangSmsSendOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/sms/send"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['fromPhoneNumber', 'fromPhoneId'], _OptionalParams),
    Headers = [],
    Body1 = MaislurpClientErlangSmsSendOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec set_sms_favourited(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), boolean()) -> {ok, maislurp-client-erlang_sms_dto:maislurp-client-erlang_sms_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
set_sms_favourited(Ctx, SmsId, Favourited) ->
    set_sms_favourited(Ctx, SmsId, Favourited, #{}).

-spec set_sms_favourited(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), boolean(), maps:map()) -> {ok, maislurp-client-erlang_sms_dto:maislurp-client-erlang_sms_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
set_sms_favourited(Ctx, SmsId, Favourited, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/sms/", SmsId, "/favourite"],
    QS = lists:flatten([{<<"favourited">>, Favourited}])++maislurp-client-erlang_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


