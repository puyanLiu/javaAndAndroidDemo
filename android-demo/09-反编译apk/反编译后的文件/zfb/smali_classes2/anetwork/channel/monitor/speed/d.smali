.class final Lanetwork/channel/monitor/speed/d;
.super Ljava/lang/Object;
.source "SpeedModel.java"


# instance fields
.field private a:J

.field private b:J

.field private c:J

.field private d:J

.field private e:J

.field private f:J

.field private g:I

.field private h:F

.field private i:Lanetwork/channel/monitor/speed/NetworkSpeed;

.field private j:Ljava/lang/String;

.field private k:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    const-wide/16 v0, 0x4b0

    const v5, 0x3ecccccd    # 0.4f

    const-wide/16 v3, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-wide v0, p0, Lanetwork/channel/monitor/speed/d;->e:J

    .line 23
    iput-wide v0, p0, Lanetwork/channel/monitor/speed/d;->f:J

    .line 24
    const v0, 0x493e0

    iput v0, p0, Lanetwork/channel/monitor/speed/d;->g:I

    .line 25
    iput v5, p0, Lanetwork/channel/monitor/speed/d;->h:F

    .line 28
    sget-object v0, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;->NONE:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    iput-object v0, p0, Lanetwork/channel/monitor/speed/d;->k:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    .line 29
    const-string/jumbo v0, "http://apoll.m.taobao.com/status.taobao"

    iput-object v0, p0, Lanetwork/channel/monitor/speed/d;->l:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, "http://gw.alicdn.com/status?SERVICE=tengine"

    iput-object v0, p0, Lanetwork/channel/monitor/speed/d;->m:Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lanetwork/channel/monitor/speed/d;->n:Landroid/content/Context;

    .line 38
    iget-object v0, p0, Lanetwork/channel/monitor/speed/d;->n:Landroid/content/Context;

    const-string/jumbo v1, "SpeedModel"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "Monitor_Speed_CDNNetworkTime"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "Monitor_Speed_CDNNetworkTime"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lanetwork/channel/monitor/speed/d;->d:J

    :cond_0
    const-string/jumbo v1, "Monitor_Speed_MtopNetworkTime"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "Monitor_Speed_MtopNetworkTime"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lanetwork/channel/monitor/speed/d;->b:J

    :cond_1
    const-string/jumbo v1, "Monitor_Speed_MtopThreshold"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "Monitor_Speed_MtopThreshold"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lanetwork/channel/monitor/speed/d;->e:J

    :cond_2
    const-string/jumbo v1, "Monitor_Speed_CdnThreshold"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "Monitor_Speed_CdnThreshold"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lanetwork/channel/monitor/speed/d;->f:J

    :cond_3
    const-string/jumbo v1, "Monitor_Speed_MeterDelayTime"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "Monitor_Speed_MeterDelayTime"

    iget v2, p0, Lanetwork/channel/monitor/speed/d;->g:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lanetwork/channel/monitor/speed/d;->g:I

    :cond_4
    const-string/jumbo v1, "Monitor_Speed_a"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "Monitor_Speed_a"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lanetwork/channel/monitor/speed/d;->h:F

    :cond_5
    const-string/jumbo v1, "Monitor_Speed_CDN_Server_Url"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "Monitor_Speed_CDN_Server_Url"

    iget-object v2, p0, Lanetwork/channel/monitor/speed/d;->m:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lanetwork/channel/monitor/speed/d;->m:Ljava/lang/String;

    :cond_6
    const-string/jumbo v1, "Monitor_Speed_Mtop_Server_Url"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string/jumbo v1, "Monitor_Speed_Mtop_Server_Url"

    iget-object v2, p0, Lanetwork/channel/monitor/speed/d;->l:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lanetwork/channel/monitor/speed/d;->l:Ljava/lang/String;

    :cond_7
    const-string/jumbo v1, "Monitor_Speed"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string/jumbo v1, "Monitor_Speed"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lanetwork/channel/monitor/speed/d;->j:Ljava/lang/String;

    :cond_8
    const-string/jumbo v1, "Monitor_Speed_State"

    sget-object v2, Lanetwork/channel/monitor/speed/NetworkSpeed;->Fast:Lanetwork/channel/monitor/speed/NetworkSpeed;

    invoke-virtual {v2}, Lanetwork/channel/monitor/speed/NetworkSpeed;->getCode()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lanetwork/channel/monitor/speed/NetworkSpeed;->valueOfCode(I)Lanetwork/channel/monitor/speed/NetworkSpeed;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/monitor/speed/d;->i:Lanetwork/channel/monitor/speed/NetworkSpeed;

    .line 39
    return-void
.end method

.method private a(Ljava/lang/String;J)V
    .locals 3

    .prologue
    .line 223
    iget-object v0, p0, Lanetwork/channel/monitor/speed/d;->n:Landroid/content/Context;

    const-string/jumbo v1, "SpeedModel"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 224
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 225
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 226
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 227
    return-void
.end method


# virtual methods
.method public final a()Lanetwork/channel/monitor/speed/NetworkSpeed;
    .locals 9

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const-wide/16 v6, 0x0

    .line 44
    invoke-virtual {p0}, Lanetwork/channel/monitor/speed/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    sget-object v0, Lanetwork/channel/monitor/speed/NetworkSpeed;->Slow:Lanetwork/channel/monitor/speed/NetworkSpeed;

    .line 87
    :goto_0
    return-object v0

    .line 48
    :cond_0
    iget-object v0, p0, Lanetwork/channel/monitor/speed/d;->i:Lanetwork/channel/monitor/speed/NetworkSpeed;

    .line 49
    if-nez v0, :cond_1

    .line 50
    sget-object v0, Lanetwork/channel/monitor/speed/NetworkSpeed;->Fast:Lanetwork/channel/monitor/speed/NetworkSpeed;

    .line 52
    :cond_1
    iget-wide v1, p0, Lanetwork/channel/monitor/speed/d;->d:J

    cmp-long v1, v1, v6

    if-lez v1, :cond_8

    iget-wide v1, p0, Lanetwork/channel/monitor/speed/d;->b:J

    cmp-long v1, v1, v6

    if-lez v1, :cond_8

    .line 53
    iget-wide v0, p0, Lanetwork/channel/monitor/speed/d;->d:J

    .line 54
    iget-wide v2, p0, Lanetwork/channel/monitor/speed/d;->c:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_2

    .line 55
    iget v0, p0, Lanetwork/channel/monitor/speed/d;->h:F

    iget-wide v1, p0, Lanetwork/channel/monitor/speed/d;->c:J

    long-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lanetwork/channel/monitor/speed/d;->h:F

    sub-float v1, v8, v1

    iget-wide v2, p0, Lanetwork/channel/monitor/speed/d;->d:J

    long-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-long v0, v0

    .line 57
    :cond_2
    iget-wide v2, p0, Lanetwork/channel/monitor/speed/d;->b:J

    .line 58
    iget-wide v4, p0, Lanetwork/channel/monitor/speed/d;->a:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 59
    iget v2, p0, Lanetwork/channel/monitor/speed/d;->h:F

    iget-wide v3, p0, Lanetwork/channel/monitor/speed/d;->a:J

    long-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lanetwork/channel/monitor/speed/d;->h:F

    sub-float v3, v8, v3

    iget-wide v4, p0, Lanetwork/channel/monitor/speed/d;->b:J

    long-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-long v2, v2

    .line 62
    :cond_3
    iget-wide v4, p0, Lanetwork/channel/monitor/speed/d;->f:J

    cmp-long v0, v0, v4

    if-gtz v0, :cond_4

    iget-wide v0, p0, Lanetwork/channel/monitor/speed/d;->e:J

    cmp-long v0, v2, v0

    if-lez v0, :cond_7

    .line 63
    :cond_4
    sget-object v0, Lanetwork/channel/monitor/speed/NetworkSpeed;->Slow:Lanetwork/channel/monitor/speed/NetworkSpeed;

    .line 83
    :cond_5
    :goto_1
    invoke-virtual {v0}, Lanetwork/channel/monitor/speed/NetworkSpeed;->getCode()I

    move-result v1

    iget-object v2, p0, Lanetwork/channel/monitor/speed/d;->i:Lanetwork/channel/monitor/speed/NetworkSpeed;

    invoke-virtual {v2}, Lanetwork/channel/monitor/speed/NetworkSpeed;->getCode()I

    move-result v2

    if-eq v1, v2, :cond_6

    .line 84
    const-string/jumbo v1, "Monitor_Speed_State"

    invoke-virtual {v0}, Lanetwork/channel/monitor/speed/NetworkSpeed;->getCode()I

    move-result v2

    iget-object v3, p0, Lanetwork/channel/monitor/speed/d;->n:Landroid/content/Context;

    const-string/jumbo v4, "SpeedModel"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 86
    :cond_6
    iput-object v0, p0, Lanetwork/channel/monitor/speed/d;->i:Lanetwork/channel/monitor/speed/NetworkSpeed;

    goto :goto_0

    .line 65
    :cond_7
    sget-object v0, Lanetwork/channel/monitor/speed/NetworkSpeed;->Fast:Lanetwork/channel/monitor/speed/NetworkSpeed;

    goto :goto_1

    .line 69
    :cond_8
    iget-wide v1, p0, Lanetwork/channel/monitor/speed/d;->d:J

    cmp-long v1, v1, v6

    if-gtz v1, :cond_9

    iget-wide v1, p0, Lanetwork/channel/monitor/speed/d;->b:J

    cmp-long v1, v1, v6

    if-gtz v1, :cond_9

    .line 70
    sget-object v0, Lanetwork/channel/monitor/speed/NetworkSpeed;->Slow:Lanetwork/channel/monitor/speed/NetworkSpeed;

    goto/16 :goto_0

    .line 73
    :cond_9
    iget-object v1, p0, Lanetwork/channel/monitor/speed/d;->k:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    sget-object v2, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;->NONE:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    if-eq v1, v2, :cond_a

    iget-object v1, p0, Lanetwork/channel/monitor/speed/d;->k:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    sget-object v2, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;->NO:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    if-eq v1, v2, :cond_a

    .line 75
    sget-object v0, Lanetwork/channel/monitor/speed/NetworkSpeed;->Slow:Lanetwork/channel/monitor/speed/NetworkSpeed;

    goto :goto_1

    .line 77
    :cond_a
    iget-wide v1, p0, Lanetwork/channel/monitor/speed/d;->d:J

    iget-wide v3, p0, Lanetwork/channel/monitor/speed/d;->b:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iget-wide v3, p0, Lanetwork/channel/monitor/speed/d;->e:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_5

    .line 78
    sget-object v0, Lanetwork/channel/monitor/speed/NetworkSpeed;->Slow:Lanetwork/channel/monitor/speed/NetworkSpeed;

    goto :goto_1
.end method

.method public final a(J)V
    .locals 2

    .prologue
    .line 116
    iget-wide v0, p0, Lanetwork/channel/monitor/speed/d;->b:J

    iput-wide v0, p0, Lanetwork/channel/monitor/speed/d;->a:J

    .line 117
    iput-wide p1, p0, Lanetwork/channel/monitor/speed/d;->b:J

    .line 118
    const-string/jumbo v0, "Monitor_Speed_MtopNetworkTime"

    invoke-direct {p0, v0, p1, p2}, Lanetwork/channel/monitor/speed/d;->a(Ljava/lang/String;J)V

    .line 119
    return-void
.end method

.method public final a(Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;)V
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lanetwork/channel/monitor/speed/d;->k:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    .line 332
    return-void
.end method

.method public final b(J)V
    .locals 2

    .prologue
    .line 123
    iget-wide v0, p0, Lanetwork/channel/monitor/speed/d;->d:J

    iput-wide v0, p0, Lanetwork/channel/monitor/speed/d;->c:J

    .line 124
    iput-wide p1, p0, Lanetwork/channel/monitor/speed/d;->d:J

    .line 125
    const-string/jumbo v0, "Monitor_Speed_CDNNetworkTime"

    invoke-direct {p0, v0, p1, p2}, Lanetwork/channel/monitor/speed/d;->a(Ljava/lang/String;J)V

    .line 126
    return-void
.end method

.method public final b()Z
    .locals 2

    .prologue
    .line 91
    sget-object v0, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;->CDMA:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    iget-object v1, p0, Lanetwork/channel/monitor/speed/d;->k:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    if-eq v0, v1, :cond_0

    sget-object v0, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;->GPRS:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    iget-object v1, p0, Lanetwork/channel/monitor/speed/d;->k:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    if-eq v0, v1, :cond_0

    sget-object v0, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;->EDGE:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    iget-object v1, p0, Lanetwork/channel/monitor/speed/d;->k:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 98
    iget-wide v0, p0, Lanetwork/channel/monitor/speed/d;->d:J

    return-wide v0
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 102
    iget-wide v0, p0, Lanetwork/channel/monitor/speed/d;->b:J

    return-wide v0
.end method

.method public final e()I
    .locals 2

    .prologue
    const v1, 0x493e0

    .line 107
    iget v0, p0, Lanetwork/channel/monitor/speed/d;->g:I

    if-gt v0, v1, :cond_0

    .line 108
    iput v1, p0, Lanetwork/channel/monitor/speed/d;->g:I

    .line 110
    :cond_0
    iget v0, p0, Lanetwork/channel/monitor/speed/d;->g:I

    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lanetwork/channel/monitor/speed/d;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lanetwork/channel/monitor/speed/d;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Z
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lanetwork/channel/monitor/speed/d;->j:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 208
    const/4 v0, 0x0

    .line 210
    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "off"

    iget-object v1, p0, Lanetwork/channel/monitor/speed/d;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final i()Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lanetwork/channel/monitor/speed/d;->k:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    return-object v0
.end method

.method public final j()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 359
    iput-wide v0, p0, Lanetwork/channel/monitor/speed/d;->c:J

    .line 360
    iput-wide v0, p0, Lanetwork/channel/monitor/speed/d;->a:J

    .line 361
    iput-wide v0, p0, Lanetwork/channel/monitor/speed/d;->b:J

    .line 362
    iput-wide v0, p0, Lanetwork/channel/monitor/speed/d;->d:J

    .line 363
    return-void
.end method
