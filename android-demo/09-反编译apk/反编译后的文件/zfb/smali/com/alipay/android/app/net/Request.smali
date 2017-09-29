.class public Lcom/alipay/android/app/net/Request;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/alipay/android/app/net/Envelope;

.field private b:Lcom/alipay/android/app/json/JSONObject;

.field private c:Lcom/alipay/android/app/json/JSONObject;

.field private d:J

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/alipay/android/app/data/InteractionData;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/alipay/android/app/helper/ProtocolType;

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/net/Envelope;Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/data/InteractionData;Lcom/alipay/android/app/helper/ProtocolType;)V
    .locals 6

    .prologue
    .line 55
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/app/net/Request;-><init>(Lcom/alipay/android/app/net/Envelope;Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/data/InteractionData;Lcom/alipay/android/app/helper/ProtocolType;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/app/net/Envelope;Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/data/InteractionData;Lcom/alipay/android/app/helper/ProtocolType;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/net/Request;->e:Ljava/lang/ref/WeakReference;

    .line 31
    iput-boolean v1, p0, Lcom/alipay/android/app/net/Request;->g:Z

    .line 34
    iput-boolean v1, p0, Lcom/alipay/android/app/net/Request;->h:Z

    .line 61
    iput-object p1, p0, Lcom/alipay/android/app/net/Request;->a:Lcom/alipay/android/app/net/Envelope;

    .line 62
    iput-object p2, p0, Lcom/alipay/android/app/net/Request;->b:Lcom/alipay/android/app/json/JSONObject;

    .line 63
    iput-object p3, p0, Lcom/alipay/android/app/net/Request;->c:Lcom/alipay/android/app/json/JSONObject;

    .line 64
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/android/app/net/Request;->e:Ljava/lang/ref/WeakReference;

    .line 65
    iput-object p5, p0, Lcom/alipay/android/app/net/Request;->f:Lcom/alipay/android/app/helper/ProtocolType;

    .line 66
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 115
    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v1}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    .line 117
    :try_start_0
    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    .line 118
    const-string/jumbo v2, "device"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    .line 120
    iget-object v2, p0, Lcom/alipay/android/app/net/Request;->f:Lcom/alipay/android/app/helper/ProtocolType;

    sget-object v3, Lcom/alipay/android/app/helper/ProtocolType;->Msp:Lcom/alipay/android/app/helper/ProtocolType;

    if-ne v2, v3, :cond_0

    .line 121
    new-instance v2, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v2}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    .line 122
    const-string/jumbo v3, "params"

    invoke-virtual {v0, v3, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;)V

    .line 123
    const-string/jumbo v3, "namespace"

    iget-object v4, p0, Lcom/alipay/android/app/net/Request;->a:Lcom/alipay/android/app/net/Envelope;

    invoke-virtual {v4}, Lcom/alipay/android/app/net/Envelope;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string/jumbo v3, "api_name"

    iget-object v4, p0, Lcom/alipay/android/app/net/Request;->a:Lcom/alipay/android/app/net/Envelope;

    invoke-virtual {v4}, Lcom/alipay/android/app/net/Envelope;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string/jumbo v3, "api_version"

    iget-object v4, p0, Lcom/alipay/android/app/net/Request;->a:Lcom/alipay/android/app/net/Envelope;

    invoke-virtual {v4}, Lcom/alipay/android/app/net/Envelope;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v3, p0, Lcom/alipay/android/app/net/Request;->b:Lcom/alipay/android/app/json/JSONObject;

    iget-object v4, p0, Lcom/alipay/android/app/net/Request;->c:Lcom/alipay/android/app/json/JSONObject;

    invoke-static {v3, v4}, Lcom/alipay/android/app/util/JsonUtils;->a(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/android/app/net/Request;->b:Lcom/alipay/android/app/json/JSONObject;

    .line 127
    const-string/jumbo v3, "req_data"

    iget-object v4, p0, Lcom/alipay/android/app/net/Request;->b:Lcom/alipay/android/app/json/JSONObject;

    invoke-virtual {v4}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/alipay/android/app/util/JsonUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :goto_0
    const-string/jumbo v2, "data"

    invoke-virtual {v1, v2, v0}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;)V

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "requestData after encrypt : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->f()V

    .line 162
    :goto_1
    return-object v1

    .line 130
    :cond_0
    new-instance v2, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v2}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    .line 131
    const-string/jumbo v3, "namespace"

    iget-object v4, p0, Lcom/alipay/android/app/net/Request;->a:Lcom/alipay/android/app/net/Envelope;

    invoke-virtual {v4}, Lcom/alipay/android/app/net/Envelope;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string/jumbo v3, "api_name"

    iget-object v4, p0, Lcom/alipay/android/app/net/Request;->a:Lcom/alipay/android/app/net/Envelope;

    invoke-virtual {v4}, Lcom/alipay/android/app/net/Envelope;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string/jumbo v3, "api_version"

    iget-object v4, p0, Lcom/alipay/android/app/net/Request;->a:Lcom/alipay/android/app/net/Envelope;

    invoke-virtual {v4}, Lcom/alipay/android/app/net/Envelope;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v3, p0, Lcom/alipay/android/app/net/Request;->b:Lcom/alipay/android/app/json/JSONObject;

    if-nez v3, :cond_1

    .line 135
    new-instance v3, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v3}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    iput-object v3, p0, Lcom/alipay/android/app/net/Request;->b:Lcom/alipay/android/app/json/JSONObject;

    .line 137
    :cond_1
    iget-object v3, p0, Lcom/alipay/android/app/net/Request;->b:Lcom/alipay/android/app/json/JSONObject;

    iget-object v4, p0, Lcom/alipay/android/app/net/Request;->c:Lcom/alipay/android/app/json/JSONObject;

    invoke-static {v3, v4}, Lcom/alipay/android/app/util/JsonUtils;->a(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/android/app/net/Request;->b:Lcom/alipay/android/app/json/JSONObject;

    .line 139
    iget-object v3, p0, Lcom/alipay/android/app/net/Request;->b:Lcom/alipay/android/app/json/JSONObject;

    const-string/jumbo v4, "action"

    invoke-virtual {v3, v4, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;)V

    .line 140
    iget-object v3, p0, Lcom/alipay/android/app/net/Request;->a:Lcom/alipay/android/app/net/Envelope;

    invoke-virtual {v3}, Lcom/alipay/android/app/net/Envelope;->d()Ljava/lang/String;

    move-result-object v3

    .line 141
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 142
    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 143
    const-string/jumbo v4, "type"

    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-virtual {v2, v4, v5}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    array-length v4, v3

    if-le v4, v6, :cond_2

    .line 145
    const-string/jumbo v4, "method"

    const/4 v5, 0x2

    aget-object v3, v3, v5

    invoke-virtual {v2, v4, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_2
    iget-object v2, p0, Lcom/alipay/android/app/net/Request;->b:Lcom/alipay/android/app/json/JSONObject;

    const-string/jumbo v3, "gzip"

    iget-boolean v4, p0, Lcom/alipay/android/app/net/Request;->h:Z

    invoke-virtual {v2, v3, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Z)V

    .line 149
    iget-boolean v2, p0, Lcom/alipay/android/app/net/Request;->g:Z

    if-eqz v2, :cond_3

    .line 150
    new-instance v2, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v2}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    .line 151
    const-string/jumbo v3, "req_data"

    iget-object v4, p0, Lcom/alipay/android/app/net/Request;->b:Lcom/alipay/android/app/json/JSONObject;

    invoke-virtual {v4}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/alipay/android/app/util/JsonUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string/jumbo v3, "params"

    invoke-virtual {v0, v3, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 159
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 154
    :cond_3
    :try_start_1
    const-string/jumbo v2, "params"

    iget-object v3, p0, Lcom/alipay/android/app/net/Request;->b:Lcom/alipay/android/app/json/JSONObject;

    invoke-virtual {v0, v2, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alipay/android/app/net/Request;->a:Lcom/alipay/android/app/net/Envelope;

    invoke-virtual {v0}, Lcom/alipay/android/app/net/Envelope;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/alipay/android/app/data/InteractionData;)V
    .locals 1

    .prologue
    .line 100
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/android/app/net/Request;->e:Ljava/lang/ref/WeakReference;

    .line 101
    return-void
.end method

.method public final a(Lcom/alipay/android/app/json/JSONObject;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/alipay/android/app/net/Request;->c:Lcom/alipay/android/app/json/JSONObject;

    .line 105
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/alipay/android/app/net/Request;->h:Z

    .line 39
    return-void
.end method

.method public final b()Lcom/alipay/android/app/data/InteractionData;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/alipay/android/app/net/Request;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/data/InteractionData;

    return-object v0
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/alipay/android/app/net/Request;->g:Z

    .line 78
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/alipay/android/app/net/Request;->g:Z

    return v0
.end method

.method public final d()Lcom/alipay/android/app/helper/ProtocolType;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/alipay/android/app/net/Request;->f:Lcom/alipay/android/app/helper/ProtocolType;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/android/app/net/Request;->a:Lcom/alipay/android/app/net/Envelope;

    invoke-virtual {v1}, Lcom/alipay/android/app/net/Envelope;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", requestData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/net/Request;->b:Lcom/alipay/android/app/json/JSONObject;

    iget-object v2, p0, Lcom/alipay/android/app/net/Request;->c:Lcom/alipay/android/app/json/JSONObject;

    invoke-static {v1, v2}, Lcom/alipay/android/app/util/JsonUtils;->a(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", timeStamp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/alipay/android/app/net/Request;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
