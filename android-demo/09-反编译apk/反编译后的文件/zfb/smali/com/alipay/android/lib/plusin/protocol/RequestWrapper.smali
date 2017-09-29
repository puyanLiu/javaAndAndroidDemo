.class public Lcom/alipay/android/lib/plusin/protocol/RequestWrapper;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Lcom/alipay/android/app/data/InteractionData;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput v0, p0, Lcom/alipay/android/lib/plusin/protocol/RequestWrapper;->a:I

    .line 51
    iput-boolean v0, p0, Lcom/alipay/android/lib/plusin/protocol/RequestWrapper;->c:Z

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/app/data/InteractionData;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput v0, p0, Lcom/alipay/android/lib/plusin/protocol/RequestWrapper;->a:I

    .line 51
    iput-boolean v0, p0, Lcom/alipay/android/lib/plusin/protocol/RequestWrapper;->c:Z

    .line 54
    iput-object p1, p0, Lcom/alipay/android/lib/plusin/protocol/RequestWrapper;->b:Lcom/alipay/android/app/data/InteractionData;

    .line 55
    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/alipay/android/app/net/Response;)Lcom/alipay/android/app/json/JSONObject;
    .locals 3

    .prologue
    const/16 v2, 0x1f7

    .line 288
    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 290
    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    .line 292
    if-eqz v0, :cond_1

    .line 294
    const-string/jumbo v1, "code"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/alipay/android/app/net/Response;->a(I)V

    .line 295
    const-string/jumbo v1, "error_msg"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/alipay/android/app/net/Response;->a(Ljava/lang/String;)V

    .line 297
    const-string/jumbo v1, "params"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    .line 298
    if-eqz v0, :cond_2

    .line 299
    invoke-virtual {p1}, Lcom/alipay/android/app/net/Response;->k()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_0

    .line 301
    const-string/jumbo v1, "public_key"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/sys/GlobalContext;->c()Lcom/alipay/android/app/IAppConfig;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/alipay/android/app/IAppConfig;->a(Ljava/lang/String;)V

    .line 304
    :cond_0
    new-instance v1, Lcom/alipay/android/app/net/Envelope;

    invoke-direct {v1}, Lcom/alipay/android/app/net/Envelope;-><init>()V

    .line 305
    const-string/jumbo v2, "next_api_name"

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/net/Envelope;->c(Ljava/lang/String;)V

    .line 306
    const-string/jumbo v2, "next_api_version"

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/net/Envelope;->d(Ljava/lang/String;)V

    .line 307
    const-string/jumbo v2, "next_namespace"

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/net/Envelope;->b(Ljava/lang/String;)V

    .line 308
    const-string/jumbo v2, "next_request_url"

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/net/Envelope;->a(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p1, v1}, Lcom/alipay/android/app/net/Response;->a(Lcom/alipay/android/app/net/Envelope;)V

    .line 318
    :goto_0
    return-object v0

    .line 315
    :cond_1
    invoke-virtual {p1, v2}, Lcom/alipay/android/app/net/Response;->a(I)V

    .line 316
    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/net/Response;->a(Ljava/lang/String;)V

    .line 318
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/data/InteractionData;Lcom/alipay/android/app/net/Response;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 125
    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/android/lib/plusin/protocol/RequestWrapper;->c:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/GlobalContext;->c()Lcom/alipay/android/app/IAppConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/app/IAppConfig;->n()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    move v3, v1

    .line 130
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "com.eg.android.AlipayGphone"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "com.eg.android.AlipayGphoneRC"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    move v0, v1

    .line 134
    :goto_1
    if-nez v3, :cond_2

    if-nez v0, :cond_6

    .line 135
    :cond_2
    invoke-direct/range {p0 .. p5}, Lcom/alipay/android/lib/plusin/protocol/RequestWrapper;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/data/InteractionData;Lcom/alipay/android/app/net/Response;)Ljava/lang/String;

    move-result-object v0

    .line 177
    :cond_3
    :goto_2
    return-object v0

    :cond_4
    move v3, v2

    .line 125
    goto :goto_0

    :cond_5
    move v0, v2

    .line 130
    goto :goto_1

    .line 138
    :cond_6
    invoke-static {p4}, Lcom/alipay/android/app/assist/MspAssistUtil;->a(Lcom/alipay/android/app/data/InteractionData;)[Ljava/lang/String;

    move-result-object v0

    .line 140
    const/4 v3, 0x0

    aget-object v3, v0, v3

    .line 141
    const/4 v4, 0x1

    aget-object v4, v0, v4

    .line 142
    const/4 v5, 0x2

    aget-object v0, v0, v5

    .line 144
    const-string/jumbo v5, "6003"

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 145
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/alipay/android/lib/plusin/protocol/RequestWrapper;->c:Z

    .line 146
    new-instance v3, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v3, v0}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 147
    const-string/jumbo v5, "data"

    invoke-virtual {v3, v5}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v3

    .line 148
    if-nez v3, :cond_7

    move v2, v1

    .line 149
    :cond_7
    if-eqz v3, :cond_9

    const-string/jumbo v5, "code"

    invoke-virtual {v3, v5}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 150
    const-string/jumbo v5, "code"

    const/16 v6, 0x1f7

    invoke-virtual {v3, v5, v6}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 151
    const-string/jumbo v6, "params"

    invoke-virtual {v3, v6}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v3

    .line 152
    if-eqz v5, :cond_9

    const/16 v6, 0x3e8

    if-eq v5, v6, :cond_9

    if-eqz v3, :cond_9

    .line 158
    :goto_3
    if-eqz v1, :cond_8

    .line 160
    invoke-direct/range {p0 .. p5}, Lcom/alipay/android/lib/plusin/protocol/RequestWrapper;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/data/InteractionData;Lcom/alipay/android/app/net/Response;)Ljava/lang/String;

    move-result-object v0

    .line 164
    :cond_8
    iget-object v1, p0, Lcom/alipay/android/lib/plusin/protocol/RequestWrapper;->b:Lcom/alipay/android/app/data/InteractionData;

    if-eqz v1, :cond_3

    .line 165
    iget-object v1, p0, Lcom/alipay/android/lib/plusin/protocol/RequestWrapper;->b:Lcom/alipay/android/app/data/InteractionData;

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/apache/http/message/BasicHeader;

    const/4 v3, 0x0

    new-instance v5, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v6, "Msp-Param"

    invoke-direct {v5, v6, v4}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v2, v3

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/data/InteractionData;->a([Lorg/apache/http/Header;)V
    :try_end_0
    .catch Lcom/alipay/android/app/exception/NetErrorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 170
    :catch_0
    move-exception v0

    throw v0

    .line 172
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    .line 174
    new-instance v0, Lcom/alipay/android/app/exception/NetErrorException;

    invoke-direct {v0}, Lcom/alipay/android/app/exception/NetErrorException;-><init>()V

    .line 175
    throw v0

    :cond_9
    move v1, v2

    goto :goto_3
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/data/InteractionData;Lcom/alipay/android/app/net/Response;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 268
    :try_start_0
    invoke-static {p1, p2, p3, p4}, Lcom/alipay/android/lib/plusin/protocol/RequestUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/data/InteractionData;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 270
    if-eqz p5, :cond_0

    .line 272
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    .line 273
    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-virtual {p5, v2}, Lcom/alipay/android/app/net/Response;->a(I)V

    .line 274
    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v1}, Lcom/alipay/android/app/net/Response;->a(Ljava/lang/String;)V

    .line 275
    iget-object v1, p0, Lcom/alipay/android/lib/plusin/protocol/RequestWrapper;->b:Lcom/alipay/android/app/data/InteractionData;

    invoke-static {v1, v0}, Lcom/alipay/android/app/util/FrameUtils;->a(Lcom/alipay/android/app/data/InteractionData;Lorg/apache/http/HttpResponse;)V

    .line 277
    :cond_0
    invoke-static {v0}, Lcom/alipay/android/lib/plusin/protocol/RequestUtils;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 279
    return-object v0

    .line 281
    :catch_0
    move-exception v0

    new-instance v0, Lcom/alipay/android/app/exception/NetErrorException;

    invoke-direct {v0}, Lcom/alipay/android/app/exception/NetErrorException;-><init>()V

    .line 282
    throw v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/alipay/android/app/net/Request;Lcom/alipay/android/app/net/Response;)Lcom/alipay/android/app/json/JSONObject;
    .locals 7

    .prologue
    .line 183
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->g()Ljava/lang/String;

    move-result-object v6

    .line 185
    :try_start_0
    invoke-virtual {p2}, Lcom/alipay/android/app/net/Request;->a()Ljava/lang/String;

    move-result-object v2

    .line 189
    invoke-virtual {p2, v6}, Lcom/alipay/android/app/net/Request;->a(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 190
    invoke-virtual {p2}, Lcom/alipay/android/app/net/Request;->b()Lcom/alipay/android/app/data/InteractionData;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    .line 191
    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/lib/plusin/protocol/RequestWrapper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/data/InteractionData;Lcom/alipay/android/app/net/Response;)Ljava/lang/String;

    move-result-object v0

    .line 193
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->f()V

    .line 195
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {p3, v1, v2}, Lcom/alipay/android/app/net/Response;->a(J)V

    .line 198
    invoke-virtual {p2}, Lcom/alipay/android/app/net/Request;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 199
    invoke-static {v0, p3}, Lcom/alipay/android/lib/plusin/protocol/RequestWrapper;->a(Ljava/lang/String;Lcom/alipay/android/app/net/Response;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    invoke-virtual {p3}, Lcom/alipay/android/app/net/Response;->k()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/alipay/android/lib/plusin/protocol/RequestWrapper;->a:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    iget v0, p0, Lcom/alipay/android/lib/plusin/protocol/RequestWrapper;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/android/lib/plusin/protocol/RequestWrapper;->a:I

    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/android/lib/plusin/protocol/RequestWrapper;->a(Landroid/content/Context;Lcom/alipay/android/app/net/Request;Lcom/alipay/android/app/net/Response;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    .line 206
    :cond_0
    :goto_0
    return-object v0

    .line 199
    :cond_1
    invoke-virtual {p3}, Lcom/alipay/android/app/net/Response;->k()I

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/alipay/android/app/exception/FailOperatingException;

    invoke-virtual {p3}, Lcom/alipay/android/app/net/Response;->l()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/alipay/android/app/util/ExceptionUtils;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/android/app/exception/FailOperatingException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/alipay/android/app/exception/NetErrorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/alipay/android/app/exception/FailOperatingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/alipay/android/app/exception/AppErrorException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 207
    :catch_0
    move-exception v0

    throw v0

    .line 199
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    iput v1, p0, Lcom/alipay/android/lib/plusin/protocol/RequestWrapper;->a:I

    const-string/jumbo v1, "res_data"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Lcom/alipay/android/app/exception/AppErrorException;

    const-string/jumbo v1, "response data is empty"

    invoke-direct {v0, v1}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lcom/alipay/android/app/exception/NetErrorException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/alipay/android/app/exception/FailOperatingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/alipay/android/app/exception/AppErrorException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 209
    :catch_1
    move-exception v0

    throw v0

    .line 199
    :cond_3
    :try_start_2
    invoke-static {v6, v0}, Lcom/alipay/android/app/encrypt/TriDes;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "respData:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0, v1}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "gateway_switch"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "gateway_switch"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/sys/GlobalContext;->c()Lcom/alipay/android/app/IAppConfig;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/alipay/android/app/IAppConfig;->a(Z)V
    :try_end_2
    .catch Lcom/alipay/android/app/exception/NetErrorException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/alipay/android/app/exception/FailOperatingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/alipay/android/app/exception/AppErrorException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 211
    :catch_2
    move-exception v0

    throw v0

    .line 202
    :cond_4
    :try_start_3
    invoke-static {v0, p3}, Lcom/alipay/android/lib/plusin/protocol/RequestWrapper;->a(Ljava/lang/String;Lcom/alipay/android/app/net/Response;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "respData:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/alipay/android/app/exception/NetErrorException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/alipay/android/app/exception/FailOperatingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/alipay/android/app/exception/AppErrorException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 213
    :catch_3
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    .line 215
    new-instance v0, Lcom/alipay/android/app/exception/NetErrorException;

    invoke-direct {v0}, Lcom/alipay/android/app/exception/NetErrorException;-><init>()V

    .line 216
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/exception/NetErrorException;->a(I)V

    .line 217
    throw v0
.end method

.method public final a(Landroid/content/Context;Lcom/alipay/android/app/net/Request;)Lcom/alipay/android/lib/plusin/protocol/FrameData;
    .locals 6

    .prologue
    .line 69
    new-instance v1, Lcom/alipay/android/app/net/Response;

    invoke-direct {v1}, Lcom/alipay/android/app/net/Response;-><init>()V

    .line 72
    invoke-virtual {p0, p1, p2, v1}, Lcom/alipay/android/lib/plusin/protocol/RequestWrapper;->a(Landroid/content/Context;Lcom/alipay/android/app/net/Request;Lcom/alipay/android/app/net/Response;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v2

    .line 73
    const-string/jumbo v0, "reflected_data"

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v3

    .line 75
    invoke-virtual {p2}, Lcom/alipay/android/app/net/Request;->d()Lcom/alipay/android/app/helper/ProtocolType;

    move-result-object v0

    .line 76
    if-eqz v3, :cond_0

    .line 77
    const-string/jumbo v0, "minipay"

    invoke-virtual {v3, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    const-string/jumbo v3, "true"

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 79
    if-eqz v0, :cond_3

    sget-object v0, Lcom/alipay/android/app/helper/ProtocolType;->Mini:Lcom/alipay/android/app/helper/ProtocolType;

    .line 82
    :cond_0
    :goto_0
    sget-object v3, Lcom/alipay/android/app/helper/ProtocolType;->Msp:Lcom/alipay/android/app/helper/ProtocolType;

    if-ne v0, v3, :cond_1

    .line 83
    invoke-virtual {v1}, Lcom/alipay/android/app/net/Response;->d()V

    .line 85
    :cond_1
    const-string/jumbo v3, "gzip"

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 86
    if-eqz v3, :cond_5

    .line 87
    const-string/jumbo v3, "form"

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v3

    .line 88
    if-eqz v3, :cond_2

    const-string/jumbo v4, "quickpay"

    invoke-virtual {v3, v4}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 89
    const-string/jumbo v4, "quickpay"

    invoke-virtual {v3, v4}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 90
    invoke-static {v3}, Lcom/alipay/android/app/encrypt/Base64;->a(Ljava/lang/String;)[B

    move-result-object v3

    .line 92
    :try_start_0
    invoke-static {v3}, Lcom/alipay/android/app/util/FrameUtils;->a([B)[B

    move-result-object v3

    .line 93
    invoke-static {v3}, Lcom/alipay/android/app/encrypt/MD5;->encryptMd5_32_byte([B)Ljava/lang/String;

    move-result-object v4

    .line 94
    const-string/jumbo v5, "md5"

    invoke-virtual {v2, v5}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 95
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 96
    new-instance v4, Ljava/lang/String;

    const-string/jumbo v5, "utf-8"

    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 97
    const-string/jumbo v3, "form"

    new-instance v5, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v5, v4}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v5}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/alipay/android/app/exception/GzipException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/alipay/android/app/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 114
    :cond_2
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "responsestring decoded "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->a()V

    .line 115
    new-instance v3, Lcom/alipay/android/lib/plusin/protocol/FrameData;

    invoke-direct {v3, p2, v1}, Lcom/alipay/android/lib/plusin/protocol/FrameData;-><init>(Lcom/alipay/android/app/net/Request;Lcom/alipay/android/app/net/Response;)V

    .line 116
    invoke-virtual {v3, v2}, Lcom/alipay/android/lib/plusin/protocol/FrameData;->a(Lcom/alipay/android/app/json/JSONObject;)V

    .line 117
    invoke-static {v0, v3}, Lcom/alipay/android/lib/plusin/protocol/FrameFactoryManager;->a(Lcom/alipay/android/app/helper/ProtocolType;Lcom/alipay/android/lib/plusin/protocol/FrameData;)Lcom/alipay/android/lib/plusin/protocol/FrameData;

    move-result-object v0

    .line 119
    return-object v0

    .line 79
    :cond_3
    sget-object v0, Lcom/alipay/android/app/helper/ProtocolType;->Msp:Lcom/alipay/android/app/helper/ProtocolType;

    goto :goto_0

    .line 99
    :cond_4
    :try_start_1
    new-instance v0, Lcom/alipay/android/app/exception/GzipException;

    const-string/jumbo v1, "client md5  not equal server md5"

    invoke-direct {v0, v1}, Lcom/alipay/android/app/exception/GzipException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/alipay/android/app/exception/GzipException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/alipay/android/app/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 103
    :catch_0
    move-exception v0

    new-instance v0, Lcom/alipay/android/app/exception/GzipException;

    const-string/jumbo v1, "unzip byte array unsupport encoding"

    invoke-direct {v0, v1}, Lcom/alipay/android/app/exception/GzipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :catch_1
    move-exception v0

    throw v0

    .line 108
    :catch_2
    move-exception v0

    new-instance v0, Lcom/alipay/android/app/exception/GzipException;

    const-string/jumbo v1, "unzip string not jsonObject"

    invoke-direct {v0, v1}, Lcom/alipay/android/app/exception/GzipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_5
    invoke-virtual {v1}, Lcom/alipay/android/app/net/Response;->b()V

    goto :goto_1
.end method
