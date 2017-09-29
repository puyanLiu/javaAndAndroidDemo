.class public Lcom/alipay/android/app/net/Response;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/alipay/android/app/net/Envelope;

.field b:[Lorg/apache/http/Header;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:J

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lcom/alipay/android/app/json/JSONObject;

.field private j:Ljava/lang/String;

.field private k:Lcom/alipay/android/app/helper/ProtocolType;

.field private l:Z

.field private m:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/net/Response;->c:I

    .line 30
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/net/Response;->d:Ljava/lang/String;

    .line 31
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/android/app/net/Response;->e:J

    .line 32
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/net/Response;->f:Ljava/lang/String;

    .line 33
    iput-object v2, p0, Lcom/alipay/android/app/net/Response;->g:Ljava/lang/String;

    .line 34
    iput-object v2, p0, Lcom/alipay/android/app/net/Response;->h:Ljava/lang/String;

    .line 36
    iput-object v2, p0, Lcom/alipay/android/app/net/Response;->i:Lcom/alipay/android/app/json/JSONObject;

    .line 40
    iput-boolean v3, p0, Lcom/alipay/android/app/net/Response;->l:Z

    .line 42
    iput-boolean v3, p0, Lcom/alipay/android/app/net/Response;->m:Z

    .line 47
    iput-object v2, p0, Lcom/alipay/android/app/net/Response;->a:Lcom/alipay/android/app/net/Envelope;

    .line 52
    iput-object v2, p0, Lcom/alipay/android/app/net/Response;->b:[Lorg/apache/http/Header;

    .line 55
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/GlobalContext;->c()Lcom/alipay/android/app/IAppConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/app/IAppConfig;->m()Lcom/alipay/android/app/helper/ProtocolType;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/net/Response;->k:Lcom/alipay/android/app/helper/ProtocolType;

    .line 57
    return-void
.end method

.method private n()Ljava/lang/String;
    .locals 5

    .prologue
    .line 179
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "resultStatus={"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/app/net/Response;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "memo={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/net/Response;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "result={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/net/Response;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 188
    iget-object v1, p0, Lcom/alipay/android/app/net/Response;->g:Ljava/lang/String;

    const-string/jumbo v2, "success=\"true\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/alipay/android/app/net/Response;->g:Ljava/lang/String;

    const-string/jumbo v2, "call_back_url"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 190
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 191
    iget-object v2, p0, Lcom/alipay/android/app/net/Response;->g:Ljava/lang/String;

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 192
    iget-object v2, p0, Lcom/alipay/android/app/net/Response;->g:Ljava/lang/String;

    const-string/jumbo v3, "\""

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 193
    if-lez v1, :cond_0

    if-le v2, v1, :cond_0

    .line 194
    iget-object v3, p0, Lcom/alipay/android/app/net/Response;->g:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 195
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

    .line 200
    :cond_0
    const-wide/16 v1, -0x1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 203
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

    .line 211
    :cond_1
    :goto_0
    return-object v0

    .line 206
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 207
    iget-object v0, p0, Lcom/alipay/android/app/net/Response;->g:Ljava/lang/String;

    .line 208
    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/alipay/android/app/net/Envelope;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alipay/android/app/net/Response;->a:Lcom/alipay/android/app/net/Envelope;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 119
    iput p1, p0, Lcom/alipay/android/app/net/Response;->c:I

    .line 120
    return-void
.end method

.method public final a(J)V
    .locals 0

    .prologue
    .line 163
    iput-wide p1, p0, Lcom/alipay/android/app/net/Response;->e:J

    .line 164
    return-void
.end method

.method public final a(Lcom/alipay/android/app/helper/ProtocolType;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/alipay/android/app/net/Response;->k:Lcom/alipay/android/app/helper/ProtocolType;

    .line 236
    return-void
.end method

.method public final a(Lcom/alipay/android/app/json/JSONObject;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/alipay/android/app/net/Response;->i:Lcom/alipay/android/app/json/JSONObject;

    .line 168
    return-void
.end method

.method public final a(Lcom/alipay/android/app/net/Envelope;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/alipay/android/app/net/Response;->a:Lcom/alipay/android/app/net/Envelope;

    .line 176
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/alipay/android/app/net/Response;->d:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/net/Response;->m:Z

    .line 68
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/alipay/android/app/net/Response;->f:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/alipay/android/app/net/Response;->g:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/alipay/android/app/net/Response;->m:Z

    return v0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/net/Response;->l:Z

    .line 77
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/alipay/android/app/net/Response;->h:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/alipay/android/app/net/Response;->j:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/alipay/android/app/net/Response;->l:Z

    return v0
.end method

.method public final f()Lcom/alipay/android/app/json/JSONObject;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alipay/android/app/net/Response;->i:Lcom/alipay/android/app/json/JSONObject;

    return-object v0
.end method

.method public final g()J
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/alipay/android/app/net/Response;->e:J

    return-wide v0
.end method

.method public final h()Z
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/alipay/android/app/net/Response;->f:Ljava/lang/String;

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/alipay/android/app/net/Response;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/alipay/android/app/net/Response;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final k()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/alipay/android/app/net/Response;->c:I

    return v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/alipay/android/app/net/Response;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final m()Lcom/alipay/android/app/helper/ProtocolType;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/alipay/android/app/net/Response;->k:Lcom/alipay/android/app/helper/ProtocolType;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/android/app/net/Response;->a:Lcom/alipay/android/app/net/Envelope;

    invoke-virtual {v1}, Lcom/alipay/android/app/net/Envelope;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/app/net/Response;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", errorMsg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/net/Response;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", timeStamp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/alipay/android/app/net/Response;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", endCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/net/Response;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    iget-object v1, p0, Lcom/alipay/android/app/net/Response;->i:Lcom/alipay/android/app/json/JSONObject;

    if-eqz v1, :cond_0

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", reflectedData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/net/Response;->i:Lcom/alipay/android/app/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 227
    :cond_0
    return-object v0
.end method
