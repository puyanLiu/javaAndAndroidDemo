.class public Lcom/alipay/android/app/data/ValidatedFrameData;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/alipay/android/app/net/Response;

.field private b:Lcom/alipay/android/app/json/JSONObject;

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/alipay/android/app/data/BizData;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Lcom/alipay/android/app/net/Request;

.field private f:Lcom/alipay/android/app/json/JSONObject;

.field private g:J

.field private h:Lcom/alipay/android/lib/plusin/protocol/FrameData;


# direct methods
.method protected constructor <init>(Lcom/alipay/android/app/data/BizData;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->e:Lcom/alipay/android/app/net/Request;

    .line 48
    iput-object v0, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->h:Lcom/alipay/android/lib/plusin/protocol/FrameData;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->d:Z

    .line 52
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->c:Ljava/lang/ref/WeakReference;

    .line 53
    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->f:Lcom/alipay/android/app/json/JSONObject;

    .line 54
    return-void
.end method


# virtual methods
.method protected final a()Lcom/alipay/android/app/net/Request;
    .locals 6

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->e:Lcom/alipay/android/app/net/Request;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->a:Lcom/alipay/android/app/net/Response;

    if-eqz v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->a:Lcom/alipay/android/app/net/Response;

    invoke-virtual {v0}, Lcom/alipay/android/app/net/Response;->f()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v3

    .line 107
    const/4 v2, 0x0

    .line 108
    iget-object v0, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->b:Lcom/alipay/android/app/json/JSONObject;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->d:Z

    if-eqz v0, :cond_0

    .line 110
    iget-object v2, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->b:Lcom/alipay/android/app/json/JSONObject;

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/data/BizData;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/BizData;->k()Lcom/alipay/android/app/data/InteractionData;

    move-result-object v4

    .line 113
    invoke-static {}, Lcom/alipay/android/app/tid/TidInfo;->f()Lcom/alipay/android/app/tid/TidInfo;

    move-result-object v0

    .line 115
    if-eqz v2, :cond_1

    .line 117
    if-eqz v0, :cond_1

    .line 118
    :try_start_0
    const-string/jumbo v1, "tid"

    invoke-virtual {v0}, Lcom/alipay/android/app/tid/TidInfo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/android/app/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :cond_1
    :goto_0
    new-instance v0, Lcom/alipay/android/app/net/Request;

    iget-object v1, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->a:Lcom/alipay/android/app/net/Response;

    invoke-virtual {v1}, Lcom/alipay/android/app/net/Response;->a()Lcom/alipay/android/app/net/Envelope;

    move-result-object v1

    iget-object v5, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->a:Lcom/alipay/android/app/net/Response;

    invoke-virtual {v5}, Lcom/alipay/android/app/net/Response;->m()Lcom/alipay/android/app/helper/ProtocolType;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/app/net/Request;-><init>(Lcom/alipay/android/app/net/Envelope;Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/data/InteractionData;Lcom/alipay/android/app/helper/ProtocolType;)V

    .line 127
    iget-object v1, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->a:Lcom/alipay/android/app/net/Response;

    invoke-virtual {v1}, Lcom/alipay/android/app/net/Response;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/net/Request;->b(Z)V

    .line 128
    iget-object v1, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->a:Lcom/alipay/android/app/net/Response;

    invoke-virtual {v1}, Lcom/alipay/android/app/net/Response;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/net/Request;->a(Z)V

    .line 131
    :goto_1
    return-object v0

    .line 121
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 131
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->e:Lcom/alipay/android/app/net/Request;

    goto :goto_1
.end method

.method public final a(Lcom/alipay/android/app/json/JSONObject;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->f:Lcom/alipay/android/app/json/JSONObject;

    .line 58
    return-void
.end method

.method protected final a(Lcom/alipay/android/app/net/Request;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->e:Lcom/alipay/android/app/net/Request;

    .line 102
    return-void
.end method

.method protected final a(Lcom/alipay/android/lib/plusin/protocol/FrameData;)V
    .locals 1

    .prologue
    .line 71
    instance-of v0, p1, Lcom/alipay/android/lib/plusin/ui/WindowData;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 73
    check-cast v0, Lcom/alipay/android/lib/plusin/ui/WindowData;

    .line 74
    invoke-virtual {v0}, Lcom/alipay/android/lib/plusin/ui/WindowData;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/alipay/android/app/data/ValidatedFrameData;->b()V

    .line 78
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alipay/android/app/data/ValidatedFrameData;->b(Lcom/alipay/android/lib/plusin/protocol/FrameData;)V

    .line 79
    return-void
.end method

.method public final a(Lcom/alipay/android/lib/plusin/script/IScriptEventable;)V
    .locals 1

    .prologue
    .line 192
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/data/BizData;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/BizData;->f()Lcom/alipay/android/lib/plusin/script/IScriptExcutor;

    move-result-object v0

    if-nez v0, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/data/BizData;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/BizData;->f()Lcom/alipay/android/lib/plusin/script/IScriptExcutor;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/android/lib/plusin/script/IScriptExcutor;->a(Lcom/alipay/android/lib/plusin/script/IScriptEventable;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/data/BizData;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/BizData;->f()Lcom/alipay/android/lib/plusin/script/IScriptExcutor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/data/BizData;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/BizData;->f()Lcom/alipay/android/lib/plusin/script/IScriptExcutor;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/android/lib/plusin/script/IScriptExcutor;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/data/BizData;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/BizData;->f()Lcom/alipay/android/lib/plusin/script/IScriptExcutor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/data/BizData;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/BizData;->f()Lcom/alipay/android/lib/plusin/script/IScriptExcutor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/alipay/android/lib/plusin/script/IScriptExcutor;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected final b()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/data/BizData;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/BizData;->f()Lcom/alipay/android/lib/plusin/script/IScriptExcutor;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_0

    .line 137
    invoke-interface {v0}, Lcom/alipay/android/lib/plusin/script/IScriptExcutor;->dispose()V

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/app/data/ValidatedFrameData;->c()V

    .line 140
    return-void
.end method

.method public final b(Lcom/alipay/android/app/json/JSONObject;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->b:Lcom/alipay/android/app/json/JSONObject;

    .line 211
    return-void
.end method

.method protected final b(Lcom/alipay/android/lib/plusin/protocol/FrameData;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 87
    iput-object p1, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->h:Lcom/alipay/android/lib/plusin/protocol/FrameData;

    .line 89
    invoke-virtual {p1}, Lcom/alipay/android/lib/plusin/protocol/FrameData;->i()Lcom/alipay/android/app/net/Response;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->a:Lcom/alipay/android/app/net/Response;

    .line 90
    instance-of v0, p1, Lcom/alipay/android/lib/plusin/ui/WindowData;

    iput-boolean v0, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->d:Z

    .line 92
    iput-object v1, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->e:Lcom/alipay/android/app/net/Request;

    .line 97
    iput-object v1, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->b:Lcom/alipay/android/app/json/JSONObject;

    .line 98
    return-void
.end method

.method protected final c()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 146
    iput-object v0, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->a:Lcom/alipay/android/app/net/Response;

    .line 147
    iput-object v0, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->b:Lcom/alipay/android/app/json/JSONObject;

    .line 148
    iput-object v0, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->e:Lcom/alipay/android/app/net/Request;

    .line 149
    iget-object v0, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/data/BizData;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/BizData;->k()Lcom/alipay/android/app/data/InteractionData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/data/InteractionData;->d()V

    .line 150
    return-void
.end method

.method public final d()Lcom/alipay/android/app/json/JSONObject;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->f:Lcom/alipay/android/app/json/JSONObject;

    return-object v0
.end method

.method public final e()Lcom/alipay/android/app/net/Response;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->a:Lcom/alipay/android/app/net/Response;

    return-object v0
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->g:J

    .line 229
    return-void
.end method

.method public final g()J
    .locals 2

    .prologue
    .line 235
    iget-wide v0, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->g:J

    return-wide v0
.end method
