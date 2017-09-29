.class public Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;
.super Lcom/alipay/android/app/ui/quickpay/data/MiniWindowData;


# instance fields
.field private a:I

.field private b:Z

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lcom/alipay/android/app/json/JSONObject;

.field private j:Lcom/alipay/android/app/json/JSONObject;

.field private k:Lcom/alipay/android/app/json/JSONObject;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Landroid/view/View;

.field private o:I

.field private p:I

.field private q:I

.field private r:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 161
    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowData;-><init>()V

    .line 29
    iput-boolean v1, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->b:Z

    .line 32
    iput-boolean v1, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->c:Z

    .line 34
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->d:Ljava/lang/String;

    .line 36
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->e:Ljava/lang/String;

    .line 38
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->f:Ljava/lang/String;

    .line 40
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->g:Ljava/lang/String;

    .line 42
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->h:Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->n:Landroid/view/View;

    .line 57
    iput v1, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->o:I

    .line 59
    iput v1, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->p:I

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->q:I

    .line 63
    iput v1, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->r:I

    .line 163
    return-void
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 280
    new-instance v3, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v3, p0}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 281
    const-string/jumbo v1, ""

    .line 282
    const-string/jumbo v0, ""

    .line 283
    const-string/jumbo v2, ""

    .line 284
    const-string/jumbo v4, "resultStatus"

    invoke-virtual {v3, v4}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 286
    const-string/jumbo v0, "resultStatus"

    invoke-virtual {v3, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 288
    :cond_0
    const-string/jumbo v4, "memo"

    invoke-virtual {v3, v4}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 289
    const-string/jumbo v1, "memo"

    invoke-virtual {v3, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 291
    :cond_1
    const-string/jumbo v4, "result"

    invoke-virtual {v3, v4}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 292
    const-string/jumbo v2, "result"

    invoke-virtual {v3, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 293
    const-string/jumbo v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    .line 294
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 295
    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 299
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resultStatus="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "};"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "memo="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "{"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "};"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "result="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "{"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->a:I

    return v0
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 82
    iput p1, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->p:I

    .line 83
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->n:Landroid/view/View;

    .line 308
    return-void
.end method

.method public final a(Lcom/alipay/android/app/json/JSONObject;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->k:Lcom/alipay/android/app/json/JSONObject;

    .line 95
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->m:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public final b(I)V
    .locals 0

    .prologue
    .line 158
    iput p1, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->r:I

    .line 159
    return-void
.end method

.method public final b(Lcom/alipay/android/app/json/JSONObject;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->i:Lcom/alipay/android/app/json/JSONObject;

    .line 103
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->l:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final c(I)V
    .locals 0

    .prologue
    .line 200
    iput p1, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->a:I

    .line 201
    return-void
.end method

.method public final c(Lcom/alipay/android/app/json/JSONObject;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->j:Lcom/alipay/android/app/json/JSONObject;

    .line 111
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->d:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final d(I)V
    .locals 0

    .prologue
    .line 208
    iput p1, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->o:I

    .line 209
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->e:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public final e(I)V
    .locals 0

    .prologue
    .line 327
    iput p1, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->q:I

    .line 328
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->f:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public final e()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 86
    iget v1, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->p:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Lcom/alipay/android/app/json/JSONObject;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->k:Lcom/alipay/android/app/json/JSONObject;

    return-object v0
.end method

.method public final g()Lcom/alipay/android/app/json/JSONObject;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->i:Lcom/alipay/android/app/json/JSONObject;

    return-object v0
.end method

.method public final h()Lcom/alipay/android/app/json/JSONObject;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->j:Lcom/alipay/android/app/json/JSONObject;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 172
    iget v1, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->a:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final m()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 204
    iget v1, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->o:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final n()V
    .locals 3

    .prologue
    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->m:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->n:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/alipay/android/app/assist/MspAssistUtil;->a(Ljava/lang/String;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :goto_0
    return-void

    .line 218
    :catch_0
    move-exception v0

    .line 219
    const-string/jumbo v1, "ex"

    const-string/jumbo v2, "dispose"

    invoke-static {v1, v2, v0}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final o()Ljava/lang/String;
    .locals 5

    .prologue
    .line 225
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    const-string/jumbo v0, ""

    .line 259
    :cond_0
    :goto_0
    return-object v0

    .line 228
    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "resultStatus={"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "memo={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "result={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 236
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->e:Ljava/lang/String;

    const-string/jumbo v2, "success=\"true\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 237
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->e:Ljava/lang/String;

    const-string/jumbo v2, "call_back_url"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 238
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 239
    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->e:Ljava/lang/String;

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 240
    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->e:Ljava/lang/String;

    const-string/jumbo v3, "\""

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 241
    if-lez v1, :cond_2

    if-le v2, v1, :cond_2

    .line 242
    iget-object v3, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->e:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 243
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ";callBackUrl={"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 248
    :cond_2
    const-wide/16 v1, -0x1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "openTime={-1}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_0

    .line 254
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 255
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->e:Ljava/lang/String;

    .line 256
    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public final p()Landroid/view/View;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->n:Landroid/view/View;

    return-object v0
.end method

.method public final q()Z
    .locals 1

    .prologue
    .line 319
    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->c:Z

    return v0
.end method

.method public final r()V
    .locals 1

    .prologue
    .line 323
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->c:Z

    .line 324
    return-void
.end method

.method public final s()I
    .locals 1

    .prologue
    .line 331
    iget v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->q:I

    return v0
.end method
