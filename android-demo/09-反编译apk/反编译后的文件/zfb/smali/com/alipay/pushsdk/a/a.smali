.class public final Lcom/alipay/pushsdk/a/a;
.super Ljava/lang/Object;
.source "ConfigPolicy.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:I

.field public e:J

.field public f:Z

.field private final g:I

.field private final h:I

.field private final i:I

.field private j:Landroid/content/Context;

.field private k:Lcom/alipay/pushsdk/util/d;

.field private l:Lcom/alipay/pushsdk/push/s;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/16 v2, 0x12c

    const/4 v1, 0x1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput v2, p0, Lcom/alipay/pushsdk/a/a;->g:I

    .line 18
    iput v1, p0, Lcom/alipay/pushsdk/a/a;->h:I

    .line 19
    const/16 v0, 0xf

    iput v0, p0, Lcom/alipay/pushsdk/a/a;->i:I

    .line 36
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/a/a;->a:Ljava/lang/String;

    .line 37
    iput v2, p0, Lcom/alipay/pushsdk/a/a;->b:I

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/pushsdk/a/a;->c:I

    .line 39
    iput v1, p0, Lcom/alipay/pushsdk/a/a;->d:I

    .line 40
    iput-boolean v1, p0, Lcom/alipay/pushsdk/a/a;->f:Z

    .line 42
    iput-object p1, p0, Lcom/alipay/pushsdk/a/a;->j:Landroid/content/Context;

    .line 43
    new-instance v0, Lcom/alipay/pushsdk/util/d;

    iget-object v1, p0, Lcom/alipay/pushsdk/a/a;->j:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/util/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/pushsdk/a/a;->k:Lcom/alipay/pushsdk/util/d;

    .line 44
    new-instance v0, Lcom/alipay/pushsdk/push/s;

    invoke-direct {v0, p1}, Lcom/alipay/pushsdk/push/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/pushsdk/a/a;->l:Lcom/alipay/pushsdk/push/s;

    .line 46
    iget-object v0, p0, Lcom/alipay/pushsdk/a/a;->k:Lcom/alipay/pushsdk/util/d;

    const-string/jumbo v1, "consumeCount"

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/util/d;->a(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    if-lez v0, :cond_0

    iput v0, p0, Lcom/alipay/pushsdk/a/a;->c:I

    :cond_0
    iget-object v0, p0, Lcom/alipay/pushsdk/a/a;->k:Lcom/alipay/pushsdk/util/d;

    const-string/jumbo v1, "successCount"

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/util/d;->a(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    if-lez v0, :cond_1

    iput v0, p0, Lcom/alipay/pushsdk/a/a;->d:I

    :cond_1
    iget-object v0, p0, Lcom/alipay/pushsdk/a/a;->k:Lcom/alipay/pushsdk/util/d;

    const-string/jumbo v1, "intervalTime"

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/util/d;->a(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/alipay/pushsdk/a/a;->b:I

    iget-object v0, p0, Lcom/alipay/pushsdk/a/a;->k:Lcom/alipay/pushsdk/util/d;

    const-string/jumbo v1, "LAST_CONFIG_TIME"

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/util/d;->a(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    iput-wide v0, p0, Lcom/alipay/pushsdk/a/a;->e:J

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "init() lastRunTime="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/alipay/pushsdk/a/a;->e:J

    invoke-static {v1, v2}, Lcom/alipay/pushsdk/util/o;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", curCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/pushsdk/a/a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", maxCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/pushsdk/a/a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", minTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/pushsdk/a/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 47
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 16

    .prologue
    .line 82
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/pushsdk/a/a;->l:Lcom/alipay/pushsdk/push/s;

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/s;->a()Z

    move-result v1

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "toStart() trigger="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", settingStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 84
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 83
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 86
    if-eqz v1, :cond_1

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/pushsdk/a/a;->j:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/pushsdk/util/g;->c(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/pushsdk/a/a;->j:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/pushsdk/util/g;->b(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Network_Type="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", Network_State = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", net="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    :goto_0
    if-nez v1, :cond_3

    .line 106
    :cond_1
    :goto_1
    return-void

    .line 86
    :cond_2
    const-string/jumbo v2, "checkNetState networkInfo is null."

    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :cond_3
    const-string/jumbo v1, "0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 93
    const-string/jumbo v1, "13"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 94
    const-string/jumbo v1, "14"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    :cond_4
    const/4 v3, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/pushsdk/a/a;->k:Lcom/alipay/pushsdk/util/d;

    const-string/jumbo v2, "DELAY_CONFIG_TIME"

    invoke-virtual {v1, v2}, Lcom/alipay/pushsdk/util/d;->a(Ljava/lang/String;)J

    move-result-wide v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/pushsdk/a/a;->k:Lcom/alipay/pushsdk/util/d;

    const-string/jumbo v7, "CREATE_CONFIG_TIME"

    invoke-virtual {v6, v7}, Lcom/alipay/pushsdk/util/d;->a(Ljava/lang/String;)J

    move-result-wide v6

    sub-long v8, v4, v1

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    move-object/from16 v0, p0

    iget v10, v0, Lcom/alipay/pushsdk/a/a;->d:I

    mul-int/lit8 v10, v10, 0xf

    mul-int/lit8 v10, v10, 0x3c

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-ltz v8, :cond_6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alipay/pushsdk/a/a;->l:Lcom/alipay/pushsdk/push/s;

    invoke-virtual {v8}, Lcom/alipay/pushsdk/push/s;->b()Z

    move-result v8

    if-eqz v8, :cond_6

    move-object/from16 v0, p0

    iget v1, v0, Lcom/alipay/pushsdk/a/a;->d:I

    mul-int/lit8 v1, v1, 0xf

    int-to-long v8, v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    const/16 v1, 0xb

    invoke-virtual {v10, v1}, Ljava/util/Calendar;->get(I)I

    move-result v11

    const/16 v1, 0xc

    invoke-virtual {v10, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    mul-int/lit8 v2, v11, 0x3c

    add-int/2addr v2, v1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alipay/pushsdk/a/a;->l:Lcom/alipay/pushsdk/push/s;

    invoke-virtual {v12}, Lcom/alipay/pushsdk/push/s;->d()I

    move-result v12

    mul-int/lit8 v12, v12, 0x3c

    sub-int/2addr v2, v12

    int-to-long v12, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "checkDelayTime delay="

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v14, "; hour="

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v14, " min="

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; eslapsedMin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/pushsdk/a/a;->l:Lcom/alipay/pushsdk/push/s;

    invoke-virtual {v14}, Lcom/alipay/pushsdk/push/s;->d()I

    move-result v14

    if-lt v11, v14, :cond_5

    cmp-long v11, v12, v8

    if-gez v11, :cond_5

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    long-to-double v14, v8

    mul-double/2addr v1, v14

    const-wide/high16 v14, 0x404e000000000000L    # 60.0

    mul-double/2addr v1, v14

    double-to-long v1, v1

    const-wide/16 v14, 0x3e8

    mul-long/2addr v1, v14

    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    add-long/2addr v10, v1

    const-wide/16 v14, 0x1e

    sub-long/2addr v12, v14

    const-wide/16 v14, 0x3c

    mul-long/2addr v12, v14

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    sub-long/2addr v10, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alipay/pushsdk/a/a;->k:Lcom/alipay/pushsdk/util/d;

    const-string/jumbo v13, "DELAY_CONFIG_TIME"

    invoke-virtual {v12, v13, v10, v11}, Lcom/alipay/pushsdk/util/d;->a(Ljava/lang/String;J)V

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "checkDelayTime rand="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", expectedTime="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v10, v11}, Lcom/alipay/pushsdk/util/o;->a(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "checkDelayTime delay="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", rand="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/pushsdk/a/a;->k:Lcom/alipay/pushsdk/util/d;

    const-string/jumbo v2, "DELAY_CONFIG_TIME"

    invoke-virtual {v1, v2}, Lcom/alipay/pushsdk/util/d;->a(Ljava/lang/String;)J

    move-result-wide v1

    :cond_6
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alipay/pushsdk/a/a;->k:Lcom/alipay/pushsdk/util/d;

    const-string/jumbo v9, "LAST_CONFIG_TIME"

    invoke-virtual {v8, v9}, Lcom/alipay/pushsdk/util/d;->a(Ljava/lang/String;)J

    move-result-wide v8

    sub-long v10, v4, v8

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    cmp-long v12, v4, v1

    if-gez v12, :cond_9

    const/4 v3, 0x0

    :cond_7
    :goto_2
    sub-long v12, v4, v6

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    const-wide/16 v14, 0x708

    cmp-long v12, v12, v14

    if-gez v12, :cond_8

    const/4 v3, 0x0

    :cond_8
    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "ConfigPolicy_getPolicy() delayPollTime="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/alipay/pushsdk/util/o;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", lastPollTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v8, v9}, Lcom/alipay/pushsdk/util/o;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", createPollTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v6, v7}, Lcom/alipay/pushsdk/util/o;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", curTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4, v5}, Lcom/alipay/pushsdk/util/o;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", waitedTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "s, ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    if-eqz v3, :cond_1

    .line 98
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/pushsdk/a/a;->k:Lcom/alipay/pushsdk/util/d;

    const-string/jumbo v2, "CREATE_CONFIG_TIME"

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 98
    invoke-virtual {v1, v2, v3, v4}, Lcom/alipay/pushsdk/util/d;->a(Ljava/lang/String;J)V

    .line 101
    new-instance v1, Lcom/alipay/pushsdk/a/b;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/pushsdk/a/a;->j:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/alipay/pushsdk/a/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/alipay/pushsdk/a/b;->a()V

    goto/16 :goto_1

    .line 96
    :cond_9
    const-wide/16 v12, 0x3c

    div-long v12, v10, v12

    move-object/from16 v0, p0

    iget v14, v0, Lcom/alipay/pushsdk/a/a;->b:I

    int-to-long v14, v14

    cmp-long v12, v12, v14

    if-gez v12, :cond_7

    const/4 v3, 0x0

    goto/16 :goto_2
.end method
