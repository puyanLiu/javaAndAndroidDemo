.class public Lcom/alipay/android/app/logic/request/RequestConfig;
.super Ljava/lang/Object;


# static fields
.field public static a:Z


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Ljava/lang/String;

.field private s:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/android/app/logic/request/RequestConfig;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-boolean v1, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->j:Z

    .line 72
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->k:Ljava/lang/String;

    .line 86
    iput-boolean v2, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->o:Z

    .line 87
    iput-boolean v1, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->p:Z

    .line 89
    iput-boolean v1, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->q:Z

    .line 91
    const-string/jumbo v0, "alipay.msp.cashier.dispatch"

    iput-object v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->r:Ljava/lang/String;

    .line 95
    iput v2, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->s:I

    .line 104
    invoke-direct {p0}, Lcom/alipay/android/app/logic/request/RequestConfig;->t()V

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-boolean v1, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->j:Z

    .line 72
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->k:Ljava/lang/String;

    .line 86
    iput-boolean v2, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->o:Z

    .line 87
    iput-boolean v1, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->p:Z

    .line 89
    iput-boolean v1, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->q:Z

    .line 91
    const-string/jumbo v0, "alipay.msp.cashier.dispatch"

    iput-object v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->r:Ljava/lang/String;

    .line 95
    iput v2, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->s:I

    .line 99
    iput-object p1, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->i:Ljava/lang/String;

    .line 100
    invoke-direct {p0}, Lcom/alipay/android/app/logic/request/RequestConfig;->t()V

    .line 101
    return-void
.end method

.method private t()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v0, 0x1

    .line 108
    const-string/jumbo v1, "com.alipay.mobilecashier"

    iput-object v1, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->b:Ljava/lang/String;

    .line 109
    const-string/jumbo v1, "com.alipay.quickpay"

    iput-object v1, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->c:Ljava/lang/String;

    .line 110
    sget-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->API_VERSION:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->f:Ljava/lang/String;

    .line 111
    const-string/jumbo v1, "cashier"

    iput-object v1, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->d:Ljava/lang/String;

    .line 112
    const-string/jumbo v1, "main"

    iput-object v1, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->e:Ljava/lang/String;

    .line 113
    const-string/jumbo v1, "application/octet-stream;binary/octet-stream"

    iput-object v1, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->m:Ljava/lang/String;

    .line 114
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/sys/GlobalContext;->c()Lcom/alipay/android/app/IAppConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/android/app/IAppConfig;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->h:Ljava/lang/String;

    .line 115
    iput-boolean v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->g:Z

    .line 116
    invoke-static {}, Lcom/alipay/android/app/MspInitAssistService;->getSdkInstance()Lcom/alipay/android/app/MspInitAssistService;

    move-result-object v2

    .line 117
    if-eqz v2, :cond_0

    .line 118
    invoke-virtual {v2}, Lcom/alipay/android/app/MspInitAssistService;->getChannelInfo()Lcom/alipay/android/app/pay/channel/ChannelInfo;

    move-result-object v1

    .line 119
    if-eqz v1, :cond_0

    .line 120
    invoke-interface {v1}, Lcom/alipay/android/app/pay/channel/ChannelInfo;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->c:Ljava/lang/String;

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 125
    :try_start_0
    new-instance v3, Lcom/alipay/android/app/json/JSONObject;

    iget-object v1, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->i:Ljava/lang/String;

    invoke-direct {v3, v1}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 126
    const-string/jumbo v1, "namespace"

    invoke-virtual {v3, v1}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    const-string/jumbo v1, "namespace"

    invoke-virtual {v3, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iput-object v1, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->b:Ljava/lang/String;

    .line 131
    :cond_1
    const-string/jumbo v1, "apiVersion"

    invoke-virtual {v3, v1}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 132
    const-string/jumbo v1, "apiVersion"

    invoke-virtual {v3, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iput-object v1, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->f:Ljava/lang/String;

    .line 135
    :cond_2
    const-string/jumbo v1, "name"

    invoke-virtual {v3, v1}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 136
    const-string/jumbo v1, "name"

    invoke-virtual {v3, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 138
    const-string/jumbo v4, "js://"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 139
    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/util/ActionUtil;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 140
    if-eqz v4, :cond_3

    array-length v5, v4

    if-le v5, v0, :cond_3

    .line 141
    const/4 v1, 0x1

    aget-object v1, v4, v1

    .line 145
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 146
    const-string/jumbo v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 147
    array-length v4, v1

    if-le v4, v6, :cond_4

    .line 148
    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-virtual {p0, v4}, Lcom/alipay/android/app/logic/request/RequestConfig;->a(Ljava/lang/String;)V

    .line 149
    const/4 v4, 0x2

    aget-object v1, v1, v4

    invoke-virtual {p0, v1}, Lcom/alipay/android/app/logic/request/RequestConfig;->b(Ljava/lang/String;)V

    .line 154
    :cond_4
    const-string/jumbo v1, "https"

    invoke-virtual {v3, v1}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 155
    const-string/jumbo v1, "https"

    invoke-virtual {v3, v1}, Lcom/alipay/android/app/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    :goto_0
    iput-boolean v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->g:Z

    .line 158
    :cond_5
    const-string/jumbo v0, "apiName"

    invoke-virtual {v3, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 159
    const-string/jumbo v0, "apiName"

    invoke-virtual {v3, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 161
    if-eqz v2, :cond_6

    .line 162
    invoke-virtual {v2}, Lcom/alipay/android/app/MspInitAssistService;->getChannelInfo()Lcom/alipay/android/app/pay/channel/ChannelInfo;

    move-result-object v1

    .line 163
    if-eqz v1, :cond_6

    .line 164
    invoke-interface {v1}, Lcom/alipay/android/app/pay/channel/ChannelInfo;->b()Ljava/lang/String;

    move-result-object v0

    .line 168
    :cond_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    iput-object v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->c:Ljava/lang/String;

    .line 171
    :cond_7
    const-string/jumbo v0, "host"

    invoke-virtual {v3, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 172
    const-string/jumbo v0, "host"

    invoke-virtual {v3, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    iput-object v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->h:Ljava/lang/String;

    .line 174
    :cond_8
    iget-boolean v1, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->g:Z

    iput-boolean v1, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->q:Z

    .line 175
    if-eqz v0, :cond_9

    const-string/jumbo v1, "mobilegw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->g:Z

    if-nez v0, :cond_9

    .line 176
    const-string/jumbo v0, "alipay.security.security.dispatch"

    iput-object v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->r:Ljava/lang/String;

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->q:Z

    .line 181
    :cond_9
    const-string/jumbo v0, "request_param"

    invoke-virtual {v3, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 182
    const-string/jumbo v0, "request_param"

    invoke-virtual {v3, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->l:Ljava/lang/String;

    .line 185
    :cond_a
    const-string/jumbo v0, "enctype"

    invoke-virtual {v3, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 186
    const-string/jumbo v0, "enctype"

    invoke-virtual {v3, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->m:Ljava/lang/String;

    .line 189
    :cond_b
    iget-boolean v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->g:Z

    iput-boolean v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->p:Z
    :try_end_0
    .catch Lcom/alipay/android/app/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :cond_c
    :goto_1
    return-void

    .line 155
    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 191
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->p:Z

    .line 200
    return-void
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 332
    iput p1, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->s:I

    .line 333
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 242
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    iput-object p1, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->d:Ljava/lang/String;

    .line 245
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 211
    iput-boolean p1, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->o:Z

    .line 212
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 252
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    iput-object p1, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->e:Ljava/lang/String;

    .line 255
    :cond_0
    return-void
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 290
    iput-boolean p1, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->j:Z

    .line 291
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->p:Z

    return v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->n:Ljava/lang/String;

    .line 317
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->o:Z

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    const-string/jumbo v0, "com.alipay.mobilecashier"

    iput-object v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->b:Ljava/lang/String;

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 268
    iget-boolean v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->g:Z

    return v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Z
    .locals 1

    .prologue
    .line 286
    iget-boolean v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->j:Z

    return v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->k:Ljava/lang/String;

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    const-string/jumbo v0, "application/octet-stream;binary/octet-stream"

    iput-object v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->m:Ljava/lang/String;

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final p()Z
    .locals 1

    .prologue
    .line 320
    iget-boolean v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->q:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/alipay/android/app/logic/request/RequestConfig;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final q()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 324
    iget v1, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->s:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final r()I
    .locals 1

    .prologue
    .line 328
    iget v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->s:I

    return v0
.end method

.method public final s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/alipay/android/app/logic/request/RequestConfig;->r:Ljava/lang/String;

    return-object v0
.end method
