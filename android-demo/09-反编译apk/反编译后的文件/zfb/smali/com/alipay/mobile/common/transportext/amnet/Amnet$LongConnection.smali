.class Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;
.super Lcom/alipay/mobile/common/transportext/amnet/LongLink;
.source "Amnet.java"

# interfaces
.implements Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;


# instance fields
.field private group:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

.field private ipLcl:Ljava/lang/String;

.field private ipRmt:Ljava/lang/String;

.field private mark:Z

.field private peer:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;

.field private portLcl:Ljava/lang/String;

.field private portRmt:Ljava/lang/String;

.field private rptSeparate:Lcom/alipay/mobile/common/transportext/amnet/Linkage$Separating;

.field private rptTouch:Lcom/alipay/mobile/common/transportext/amnet/Linkage$Touching;

.field private safe:Z

.field private sent:Z

.field private stampAct:J

.field private stampDns:J

.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

.field private tmrIhInterval:Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection$IhIntervalTmr;

.field private tmrIhSilence:Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection$IhSilenceTmr;

.field private verSsl:I


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2479
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/LongLink;-><init>()V

    .line 3343
    iput-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->group:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    .line 3344
    iput-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->peer:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;

    .line 3346
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->verSsl:I

    .line 3348
    iput-wide v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->stampAct:J

    .line 3349
    iput-wide v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->stampDns:J

    .line 3351
    iput-boolean v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->safe:Z

    .line 3352
    iput-boolean v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->sent:Z

    .line 3353
    iput-boolean v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->mark:Z

    .line 3360
    new-instance v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection$IhIntervalTmr;

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection$IhIntervalTmr;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;Lcom/alipay/mobile/common/transportext/amnet/Amnet$1;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->tmrIhInterval:Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection$IhIntervalTmr;

    .line 3361
    new-instance v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection$IhSilenceTmr;

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection$IhSilenceTmr;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;Lcom/alipay/mobile/common/transportext/amnet/Amnet$1;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->tmrIhSilence:Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection$IhSilenceTmr;

    .line 3363
    new-instance v0, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Touching;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Touching;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->rptTouch:Lcom/alipay/mobile/common/transportext/amnet/Linkage$Touching;

    .line 3364
    new-instance v0, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Separating;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Separating;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->rptSeparate:Lcom/alipay/mobile/common/transportext/amnet/Linkage$Separating;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$1;)V
    .locals 0

    .prologue
    .line 2479
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)V

    return-void
.end method

.method private hibernate(ILjava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 3244
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const-string/jumbo v2, "-AMNET-IH"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "The "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " heartbeat will be sent after "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-le p1, v4, :cond_0

    const-string/jumbo v0, " seconds."

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v4, v2, v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$100(Lcom/alipay/mobile/common/transportext/amnet/Amnet;ILjava/lang/String;Ljava/lang/String;)V

    .line 3248
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->tmrIhInterval:Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection$IhIntervalTmr;

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->tmrIhInterval:Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection$IhIntervalTmr;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection$IhIntervalTmr;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$2900(I)J

    move-result-wide v3

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$3000(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/mnet/Plan;Ljava/lang/String;JLcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;)Z

    move-result v0

    return v0

    .line 3244
    :cond_0
    const-string/jumbo v0, " second."

    goto :goto_0
.end method

.method private judge(ILjava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    .line 3225
    if-nez p1, :cond_0

    .line 3226
    const/4 v0, 0x1

    .line 3239
    :goto_0
    return v0

    .line 3229
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Can not "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " long-connection."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3230
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const-string/jumbo v2, "-AMNET-LINK"

    invoke-static {v1, v3, v2, p2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$100(Lcom/alipay/mobile/common/transportext/amnet/Amnet;ILjava/lang/String;Ljava/lang/String;)V

    .line 3231
    if-ne p1, v3, :cond_1

    .line 3232
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const/4 v2, 0x5

    invoke-static {v1, p0, v2, v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$400(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;ILjava/lang/String;)V

    .line 3239
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 3233
    :cond_1
    if-ne p1, v4, :cond_2

    .line 3234
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const/4 v2, 0x6

    invoke-static {v1, p0, v2, v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$400(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;ILjava/lang/String;)V

    goto :goto_1

    .line 3236
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1, p0, v4, v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$400(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;ILjava/lang/String;)V

    goto :goto_1
.end method

.method private pulse(Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;)Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3256
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->postHeartbeatReq()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v6

    .line 3278
    :goto_0
    return v0

    .line 3260
    :cond_0
    iget v0, p1, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;->nKeep:I

    if-lez v0, :cond_1

    .line 3261
    iget v0, p1, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;->nKeep:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;->nKeep:I

    .line 3264
    :cond_1
    iget v0, p1, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;->nKeep:I

    if-lez v0, :cond_2

    const/16 v0, 0x14

    :goto_1
    const-string/jumbo v1, "next"

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->hibernate(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v6

    .line 3265
    goto :goto_0

    .line 3264
    :cond_2
    iget v0, p1, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;->trying:I

    goto :goto_1

    .line 3268
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$6600(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;

    move-result-object v3

    .line 3269
    iput-boolean v7, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->sent:Z

    .line 3270
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->tmrIhSilence:Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection$IhSilenceTmr;

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->tmrIhSilence:Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection$IhSilenceTmr;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection$IhSilenceTmr;->name()Ljava/lang/String;

    move-result-object v2

    iget v3, v3, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;->silence:I

    invoke-static {v3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$2900(I)J

    move-result-wide v3

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$3000(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/mnet/Plan;Ljava/lang/String;JLcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v6

    .line 3275
    goto :goto_0

    :cond_4
    move v0, v7

    .line 3278
    goto :goto_0
.end method

.method private reduce()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/16 v5, 0x14

    .line 3283
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$6500(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;

    move-result-object v0

    .line 3284
    iget v1, v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;->nKeep:I

    if-gez v1, :cond_7

    .line 3285
    iget v1, v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;->nFail:I

    if-lez v1, :cond_0

    .line 3286
    iget v1, v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;->nFail:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;->nFail:I

    .line 3289
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const-string/jumbo v2, "-AMNET-IH"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;->nFail:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " heartbeat-failure is left."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v8, v2, v3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$100(Lcom/alipay/mobile/common/transportext/amnet/Amnet;ILjava/lang/String;Ljava/lang/String;)V

    .line 3293
    iget v1, v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;->nFail:I

    if-nez v1, :cond_2

    .line 3294
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 3295
    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$5700(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3296
    iget v3, v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;->using:I

    add-int/lit8 v3, v3, -0x14

    iput v3, v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;->using:I

    .line 3297
    iget v3, v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;->using:I

    if-ge v3, v5, :cond_1

    .line 3298
    iput v5, v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;->using:I

    .line 3301
    :cond_1
    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v3, v6}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$6800(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Z)Ljava/lang/String;

    move-result-object v3

    .line 3302
    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v4, v0, v1, v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$6700(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;J)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3303
    iput-wide v1, v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;->stamp:J

    .line 3304
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1, v3, v0, v6}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$6900(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Ljava/lang/String;Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;Z)V

    .line 3330
    :cond_2
    :goto_0
    return-void

    .line 3306
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1, v3, v0, v7}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$6900(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Ljava/lang/String;Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;Z)V

    goto :goto_0

    .line 3309
    :cond_4
    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v3, v0, v1, v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$6700(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;J)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3310
    iget v3, v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;->using:I

    add-int/lit8 v3, v3, -0x3c

    iput v3, v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;->using:I

    .line 3311
    iget v3, v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;->using:I

    if-ge v3, v5, :cond_5

    .line 3312
    iput v5, v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;->using:I

    .line 3315
    :cond_5
    iput-wide v1, v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;->stamp:J

    .line 3316
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v2, v7}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$6800(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0, v6}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$6900(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Ljava/lang/String;Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;Z)V

    goto :goto_0

    .line 3318
    :cond_6
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$6600(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;

    move-result-object v1

    .line 3319
    iget v1, v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;->interval:I

    iput v1, v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;->using:I

    .line 3320
    const-wide/32 v1, -0x240c8400

    iput-wide v1, v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;->stamp:J

    goto :goto_0

    .line 3325
    :cond_7
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const-string/jumbo v2, "-AMNET-IH"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "The No."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;->nKeep:I

    rsub-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " short heartbeat is lost."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v8, v2, v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$100(Lcom/alipay/mobile/common/transportext/amnet/Amnet;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private reset()V
    .locals 3

    .prologue
    .line 3334
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$300(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    move-result-object v0

    if-ne p0, v0, :cond_1

    .line 3335
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const-string/jumbo v1, "2"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$502(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Ljava/lang/String;)Ljava/lang/String;

    .line 3336
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$700(Lcom/alipay/mobile/common/transportext/amnet/Amnet;ZZ)V

    .line 3341
    :cond_0
    :goto_0
    return-void

    .line 3337
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$800(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    move-result-object v0

    if-ne p0, v0, :cond_0

    .line 3338
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->stop()V

    .line 3339
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$802(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    goto :goto_0
.end method


# virtual methods
.method protected asyncErrorAddress(JILjava/lang/String;)V
    .locals 8

    .prologue
    .line 3006
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$200(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Mercury;

    move-result-object v7

    new-instance v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorAddressEvent;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorAddressEvent;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;JILjava/lang/String;)V

    invoke-interface {v7, v0}, Lcom/alipay/mobile/common/transportext/amnet/Mercury;->post(Ljava/lang/Runnable;)V

    .line 3007
    return-void
.end method

.method protected asyncErrorHandshake(JLjava/lang/String;)V
    .locals 7

    .prologue
    .line 3056
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$200(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Mercury;

    move-result-object v6

    new-instance v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorHandshakeEvent;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorHandshakeEvent;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;JLjava/lang/String;)V

    invoke-interface {v6, v0}, Lcom/alipay/mobile/common/transportext/amnet/Mercury;->post(Ljava/lang/Runnable;)V

    .line 3057
    return-void
.end method

.method protected asyncErrorHeartbeat(J)V
    .locals 7

    .prologue
    .line 3185
    const-string/jumbo v5, "The heart of the remote does not beat."

    .line 3186
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$200(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Mercury;

    move-result-object v6

    new-instance v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorMmtpEvent;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    move-object v2, p0

    move-wide v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorMmtpEvent;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;JLjava/lang/String;)V

    invoke-interface {v6, v0}, Lcom/alipay/mobile/common/transportext/amnet/Mercury;->post(Ljava/lang/Runnable;)V

    .line 3187
    return-void
.end method

.method protected asyncErrorIo(JLjava/lang/String;)V
    .locals 7

    .prologue
    .line 3062
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$200(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Mercury;

    move-result-object v6

    new-instance v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorIoEvent;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorIoEvent;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;JLjava/lang/String;)V

    invoke-interface {v6, v0}, Lcom/alipay/mobile/common/transportext/amnet/Mercury;->post(Ljava/lang/Runnable;)V

    .line 3063
    return-void
.end method

.method protected asyncErrorLink(JILjava/lang/String;)V
    .locals 8

    .prologue
    .line 3012
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$200(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Mercury;

    move-result-object v7

    new-instance v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorLinkEvent;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorLinkEvent;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;JILjava/lang/String;)V

    invoke-interface {v7, v0}, Lcom/alipay/mobile/common/transportext/amnet/Mercury;->post(Ljava/lang/Runnable;)V

    .line 3013
    return-void
.end method

.method protected asyncErrorMemory(JLjava/lang/String;)V
    .locals 7

    .prologue
    .line 2954
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$200(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Mercury;

    move-result-object v6

    new-instance v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorMemoryEvent;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorMemoryEvent;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;JLjava/lang/String;)V

    invoke-interface {v6, v0}, Lcom/alipay/mobile/common/transportext/amnet/Mercury;->post(Ljava/lang/Runnable;)V

    .line 2955
    return-void
.end method

.method protected asyncErrorMmtp(JLjava/lang/String;)V
    .locals 7

    .prologue
    .line 3192
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$200(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Mercury;

    move-result-object v6

    new-instance v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorMmtpEvent;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorMmtpEvent;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;JLjava/lang/String;)V

    invoke-interface {v6, v0}, Lcom/alipay/mobile/common/transportext/amnet/Mercury;->post(Ljava/lang/Runnable;)V

    .line 3193
    return-void
.end method

.method protected asyncErrorProxy(J)V
    .locals 3

    .prologue
    .line 3179
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$200(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Mercury;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorProxyEvent;

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-direct {v1, v2, p0, p1, p2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorProxyEvent;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;J)V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Mercury;->post(Ljava/lang/Runnable;)V

    .line 3180
    return-void
.end method

.method protected asyncErrorReceive(JILjava/lang/String;)V
    .locals 8

    .prologue
    .line 3018
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$200(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Mercury;

    move-result-object v7

    new-instance v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorReceiveEvent;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorReceiveEvent;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;JILjava/lang/String;)V

    invoke-interface {v7, v0}, Lcom/alipay/mobile/common/transportext/amnet/Mercury;->post(Ljava/lang/Runnable;)V

    .line 3019
    return-void
.end method

.method protected asyncErrorSend(JILjava/lang/String;)V
    .locals 8

    .prologue
    .line 3024
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$200(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Mercury;

    move-result-object v7

    new-instance v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorSendEvent;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorSendEvent;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;JILjava/lang/String;)V

    invoke-interface {v7, v0}, Lcom/alipay/mobile/common/transportext/amnet/Mercury;->post(Ljava/lang/Runnable;)V

    .line 3025
    return-void
.end method

.method protected asyncErrorShutdown(JLjava/lang/String;)V
    .locals 7

    .prologue
    .line 3068
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$200(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Mercury;

    move-result-object v6

    new-instance v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorShutdownEvent;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorShutdownEvent;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;JLjava/lang/String;)V

    invoke-interface {v6, v0}, Lcom/alipay/mobile/common/transportext/amnet/Mercury;->post(Ljava/lang/Runnable;)V

    .line 3069
    return-void
.end method

.method protected asyncErrorSystem(JILjava/lang/String;)V
    .locals 8

    .prologue
    .line 2948
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$200(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Mercury;

    move-result-object v7

    new-instance v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorSystemEvent;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorSystemEvent;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;JILjava/lang/String;)V

    invoke-interface {v7, v0}, Lcom/alipay/mobile/common/transportext/amnet/Mercury;->post(Ljava/lang/Runnable;)V

    .line 2949
    return-void
.end method

.method protected asyncNoticeAck(JJ)V
    .locals 8

    .prologue
    .line 3101
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$200(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Mercury;

    move-result-object v7

    new-instance v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeAckEvent;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeAckEvent;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;JJ)V

    invoke-interface {v7, v0}, Lcom/alipay/mobile/common/transportext/amnet/Mercury;->post(Ljava/lang/Runnable;)V

    .line 3102
    return-void
.end method

.method protected asyncNoticeActivity(J)V
    .locals 3

    .prologue
    .line 2987
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$200(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Mercury;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeActivityEvent;

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-direct {v1, v2, p0, p1, p2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeActivityEvent;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;J)V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Mercury;->post(Ljava/lang/Runnable;)V

    .line 2988
    return-void
.end method

.method protected asyncNoticeAddr(JLjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 2960
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$200(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Mercury;

    move-result-object v7

    new-instance v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeAddrEvent;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeAddrEvent;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v0}, Lcom/alipay/mobile/common/transportext/amnet/Mercury;->post(Ljava/lang/Runnable;)V

    .line 2961
    return-void
.end method

.method protected asyncNoticeBroken(J)V
    .locals 3

    .prologue
    .line 2981
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$200(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Mercury;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeBrokenEvent;

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-direct {v1, v2, p0, p1, p2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeBrokenEvent;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;J)V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Mercury;->post(Ljava/lang/Runnable;)V

    .line 2982
    return-void
.end method

.method protected asyncNoticeData(J[B)V
    .locals 0

    .prologue
    .line 2994
    return-void
.end method

.method protected asyncNoticeHandshaked(JZ[B[B)V
    .locals 9

    .prologue
    .line 3033
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$200(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Mercury;

    move-result-object v8

    new-instance v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeHandshakedEvent;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeHandshakedEvent;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;JZ[B[B)V

    invoke-interface {v8, v0}, Lcom/alipay/mobile/common/transportext/amnet/Mercury;->post(Ljava/lang/Runnable;)V

    .line 3038
    return-void
.end method

.method protected asyncNoticeLinked(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 2970
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$200(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Mercury;

    move-result-object v9

    new-instance v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeLinkedEvent;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeLinkedEvent;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v0}, Lcom/alipay/mobile/common/transportext/amnet/Mercury;->post(Ljava/lang/Runnable;)V

    .line 2976
    return-void
.end method

.method protected asyncNoticePosted(JI)V
    .locals 0

    .prologue
    .line 3051
    return-void
.end method

.method protected asyncNoticeProxy(J)V
    .locals 3

    .prologue
    .line 3074
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$200(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Mercury;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeProxyEvent;

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-direct {v1, v2, p0, p1, p2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeProxyEvent;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;J)V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Mercury;->post(Ljava/lang/Runnable;)V

    .line 3075
    return-void
.end method

.method protected asyncNoticeRequestCmd(JILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/transportext/amnet/Linkage$Cmd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3173
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$200(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Mercury;

    move-result-object v7

    new-instance v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeRequestCmdEvent;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeRequestCmdEvent;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;JILjava/util/List;)V

    invoke-interface {v7, v0}, Lcom/alipay/mobile/common/transportext/amnet/Mercury;->post(Ljava/lang/Runnable;)V

    .line 3174
    return-void
.end method

.method protected asyncNoticeRequestReconnect(J)V
    .locals 3

    .prologue
    .line 3165
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$200(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Mercury;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeRequestReconnectEvent;

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-direct {v1, v2, p0, p1, p2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeRequestReconnectEvent;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;J)V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Mercury;->post(Ljava/lang/Runnable;)V

    .line 3166
    return-void
.end method

.method protected asyncNoticeRequestSetting(JLcom/alipay/mobile/common/transportext/amnet/Configuration;)V
    .locals 7

    .prologue
    .line 3159
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$200(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Mercury;

    move-result-object v6

    new-instance v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeRequestSettingEvent;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeRequestSettingEvent;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;JLcom/alipay/mobile/common/transportext/amnet/Configuration;)V

    invoke-interface {v6, v0}, Lcom/alipay/mobile/common/transportext/amnet/Mercury;->post(Ljava/lang/Runnable;)V

    .line 3160
    return-void
.end method

.method protected asyncNoticeRequestStatus(JI)V
    .locals 7

    .prologue
    .line 3147
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$200(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Mercury;

    move-result-object v6

    new-instance v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeRequestStatusEvent;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeRequestStatusEvent;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;JI)V

    invoke-interface {v6, v0}, Lcom/alipay/mobile/common/transportext/amnet/Mercury;->post(Ljava/lang/Runnable;)V

    .line 3148
    return-void
.end method

.method protected asyncNoticeResponseData(JBLjava/util/Map;[BJII)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JB",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[BJII)V"
        }
    .end annotation

    .prologue
    .line 3134
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$200(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Mercury;

    move-result-object v12

    new-instance v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseDataEvent;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    move-object v2, p0

    move-wide v3, p1

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-direct/range {v0 .. v11}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseDataEvent;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;JBLjava/util/Map;[BJII)V

    invoke-interface {v12, v0}, Lcom/alipay/mobile/common/transportext/amnet/Mercury;->post(Ljava/lang/Runnable;)V

    .line 3142
    return-void
.end method

.method protected asyncNoticeResponseInit(JIIILjava/lang/String;)V
    .locals 10

    .prologue
    .line 3117
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$200(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Mercury;

    move-result-object v9

    new-instance v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseInitEvent;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move v6, p4

    move v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseInitEvent;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;JIIILjava/lang/String;)V

    invoke-interface {v9, v0}, Lcom/alipay/mobile/common/transportext/amnet/Mercury;->post(Ljava/lang/Runnable;)V

    .line 3123
    return-void
.end method

.method protected asyncNoticeResponseStatus(JI)V
    .locals 7

    .prologue
    .line 3153
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$200(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Mercury;

    move-result-object v6

    new-instance v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseStatusEvent;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeResponseStatusEvent;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;JI)V

    invoke-interface {v6, v0}, Lcom/alipay/mobile/common/transportext/amnet/Mercury;->post(Ljava/lang/Runnable;)V

    .line 3154
    return-void
.end method

.method protected asyncNoticeRtt(JJ)V
    .locals 8

    .prologue
    .line 3080
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$200(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Mercury;

    move-result-object v7

    new-instance v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeRttEvent;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeRttEvent;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;JJ)V

    invoke-interface {v7, v0}, Lcom/alipay/mobile/common/transportext/amnet/Mercury;->post(Ljava/lang/Runnable;)V

    .line 3081
    return-void
.end method

.method protected asyncNoticeSecret(J)V
    .locals 3

    .prologue
    .line 3107
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$200(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Mercury;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeSecretEvent;

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-direct {v1, v2, p0, p1, p2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeSecretEvent;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;J)V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Mercury;->post(Ljava/lang/Runnable;)V

    .line 3108
    return-void
.end method

.method protected asyncNoticeSent(JI)V
    .locals 0

    .prologue
    .line 3001
    return-void
.end method

.method protected asyncNoticeShutdown(J)V
    .locals 3

    .prologue
    .line 3043
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$200(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Mercury;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeShutdownEvent;

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-direct {v1, v2, p0, p1, p2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeShutdownEvent;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;J)V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Mercury;->post(Ljava/lang/Runnable;)V

    .line 3044
    return-void
.end method

.method protected asyncNoticeSize(JJBII)V
    .locals 11

    .prologue
    .line 3090
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$200(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Mercury;

    move-result-object v10

    new-instance v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeSizeEvent;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NoticeSizeEvent;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;JJBII)V

    invoke-interface {v10, v0}, Lcom/alipay/mobile/common/transportext/amnet/Mercury;->post(Ljava/lang/Runnable;)V

    .line 3096
    return-void
.end method

.method public changeCompressMethod(I)Z
    .locals 2

    .prologue
    .line 2717
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->changeBodyCode(I)I

    move-result v0

    const-string/jumbo v1, "change compress-method on"

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->judge(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public closeHeartbeat()Z
    .locals 2

    .prologue
    .line 2782
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->stopHeartbeat()I

    move-result v0

    const-string/jumbo v1, "stop heartbeat through"

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->judge(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public closeIntelligentHb()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2797
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->tmrIhSilence:Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection$IhSilenceTmr;

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->tmrIhSilence:Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection$IhSilenceTmr;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection$IhSilenceTmr;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$1300(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/mnet/Plan;Ljava/lang/String;)V

    .line 2798
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->tmrIhInterval:Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection$IhIntervalTmr;

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->tmrIhInterval:Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection$IhIntervalTmr;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection$IhIntervalTmr;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$1300(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/mnet/Plan;Ljava/lang/String;)V

    .line 2799
    iput-boolean v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->mark:Z

    .line 2800
    iput-boolean v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->sent:Z

    .line 2801
    const/4 v0, 0x1

    return v0
.end method

.method public delayIntelligentHb()Z
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 2807
    const/4 v7, 0x1

    .line 2808
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->tmrIhSilence:Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection$IhSilenceTmr;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection$IhSilenceTmr;->closed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2809
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$6600(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;

    move-result-object v3

    .line 2810
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->tmrIhSilence:Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection$IhSilenceTmr;

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->tmrIhSilence:Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection$IhSilenceTmr;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection$IhSilenceTmr;->name()Ljava/lang/String;

    move-result-object v2

    iget v3, v3, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;->silence:I

    invoke-static {v3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$2900(I)J

    move-result-wide v3

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$3000(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/mnet/Plan;Ljava/lang/String;JLcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;)Z

    move-result v0

    if-nez v0, :cond_3

    move v1, v6

    .line 2819
    :goto_0
    if-eqz v1, :cond_2

    .line 2820
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->tmrIhInterval:Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection$IhIntervalTmr;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection$IhIntervalTmr;->closed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2821
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$6500(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;

    move-result-object v0

    .line 2822
    iget v2, v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;->nKeep:I

    if-lez v2, :cond_0

    const/16 v0, 0x14

    :goto_1
    const-string/jumbo v2, "delayed"

    invoke-direct {p0, v0, v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->hibernate(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v6

    .line 2832
    :goto_2
    return v0

    .line 2822
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->tmrIhSilence:Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection$IhSilenceTmr;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection$IhSilenceTmr;->closed()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v0, v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;->using:I

    goto :goto_1

    :cond_1
    iget v0, v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;->trying:I

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    move v1, v7

    goto :goto_0
.end method

.method public downIntelligentHb()Z
    .locals 1

    .prologue
    .line 2905
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->sent:Z

    if-eqz v0, :cond_0

    .line 2906
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->reduce()V

    .line 2909
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getActStamp()J
    .locals 2

    .prologue
    .line 2636
    iget-wide v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->stampAct:J

    return-wide v0
.end method

.method public getAddr()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 2513
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 2514
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->ipLcl:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 2515
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->ipRmt:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 2516
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->portLcl:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 2517
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->portRmt:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 2518
    return-object v0
.end method

.method public getDnsStamp()J
    .locals 2

    .prologue
    .line 2642
    iget-wide v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->stampDns:J

    return-wide v0
.end method

.method public getGroup()[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;
    .locals 1

    .prologue
    .line 2489
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->group:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    return-object v0
.end method

.method public getPeer()Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;
    .locals 1

    .prologue
    .line 2501
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->peer:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;

    return-object v0
.end method

.method public getSeparatingRpt()Lcom/alipay/mobile/common/transportext/amnet/Linkage$Separating;
    .locals 1

    .prologue
    .line 2624
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->rptSeparate:Lcom/alipay/mobile/common/transportext/amnet/Linkage$Separating;

    return-object v0
.end method

.method public getSsl()I
    .locals 1

    .prologue
    .line 2536
    iget v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->verSsl:I

    return v0
.end method

.method public getTouchingRpt()Lcom/alipay/mobile/common/transportext/amnet/Linkage$Touching;
    .locals 1

    .prologue
    .line 2618
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->rptTouch:Lcom/alipay/mobile/common/transportext/amnet/Linkage$Touching;

    return-object v0
.end method

.method public licence()J
    .locals 2

    .prologue
    .line 2483
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->identification()J

    move-result-wide v0

    return-wide v0
.end method

.method public openHeartbeat(II)Z
    .locals 2

    .prologue
    .line 2775
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->startHeartbeat(II)I

    move-result v0

    const-string/jumbo v1, "start heartbeat through"

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->judge(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public openIntelligentHb()Z
    .locals 2

    .prologue
    .line 2788
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$6500(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;

    move-result-object v0

    .line 2789
    const/4 v1, 0x3

    iput v1, v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;->nKeep:I

    .line 2790
    iget v1, v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;->using:I

    iput v1, v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;->trying:I

    .line 2791
    const/16 v0, 0x14

    const-string/jumbo v1, "first"

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->hibernate(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public postCmdRsp(I)Z
    .locals 2

    .prologue
    .line 2769
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->responseCmd(I)I

    move-result v0

    const-string/jumbo v1, "send command-response through"

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->judge(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public postDataReq(JJZBLjava/util/Map;[B)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJZB",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)Z"
        }
    .end annotation

    .prologue
    .line 2741
    invoke-virtual/range {p0 .. p8}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->requestData(JJZBLjava/util/Map;[B)I

    move-result v0

    const-string/jumbo v1, "send data-request through"

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->judge(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public postGroundStatusReq(Z)Z
    .locals 2

    .prologue
    .line 2753
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->requestGroundStatus(Z)I

    move-result v0

    const-string/jumbo v1, "send ground-status-request through"

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->judge(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public postHeartbeatReq()Z
    .locals 4

    .prologue
    .line 2723
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const/4 v1, 0x1

    const-string/jumbo v2, "-AMNET-IH"

    const-string/jumbo v3, "A heartbeat will be sent."

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$100(Lcom/alipay/mobile/common/transportext/amnet/Amnet;ILjava/lang/String;Ljava/lang/String;)V

    .line 2724
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->requestHeartbeat()I

    move-result v0

    const-string/jumbo v1, "send heartbeat-request through"

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->judge(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public postInitReq()Z
    .locals 2

    .prologue
    .line 2730
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$6400(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->requestInit(Ljava/util/Map;)I

    move-result v0

    const-string/jumbo v1, "send init-request through"

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->judge(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public postUserStatusReq(ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 2762
    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->requestUserStatus(ZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "send user-status-request through"

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->judge(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public protect()Z
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2654
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->safe:Z

    if-eqz v0, :cond_0

    .line 2711
    :goto_0
    return v6

    .line 2658
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$2102(Lcom/alipay/mobile/common/transportext/amnet/Amnet;J)J

    .line 2659
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$3700(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->verSsl:I

    .line 2660
    iget v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->verSsl:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 2661
    iput-boolean v6, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->safe:Z

    goto :goto_0

    .line 2665
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->rptSeparate:Lcom/alipay/mobile/common/transportext/amnet/Linkage$Separating;

    iput-boolean v6, v0, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Separating;->yesSsl:Z

    .line 2666
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->rptSeparate:Lcom/alipay/mobile/common/transportext/amnet/Linkage$Separating;

    iget v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->verSsl:I

    if-eq v0, v6, :cond_3

    move v0, v6

    :goto_1
    iput-boolean v0, v1, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Separating;->standard:Z

    .line 2668
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$3100(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$6000(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Ljava/lang/String;

    move-result-object v2

    .line 2669
    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$3100(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$6200(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Ljava/lang/String;

    move-result-object v3

    .line 2670
    :goto_3
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$2000(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Storage;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->rptSeparate:Lcom/alipay/mobile/common/transportext/amnet/Linkage$Separating;

    iget-boolean v0, v0, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Separating;->standard:Z

    if-eqz v0, :cond_6

    const-string/jumbo v0, "/std-session"

    :goto_4
    invoke-interface {v1, v0}, Lcom/alipay/mobile/common/transportext/amnet/Storage;->getSecure(Ljava/lang/String;)[B

    move-result-object v4

    .line 2673
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->rptSeparate:Lcom/alipay/mobile/common/transportext/amnet/Linkage$Separating;

    iget-boolean v0, v0, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Separating;->standard:Z

    if-eqz v0, :cond_7

    const/4 v5, 0x0

    .line 2676
    :goto_5
    if-nez v4, :cond_8

    .line 2677
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->rptSeparate:Lcom/alipay/mobile/common/transportext/amnet/Linkage$Separating;

    iput-boolean v7, v0, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Separating;->ticket:Z

    .line 2678
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$2300(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Linkage;

    move-result-object v0

    const-string/jumbo v1, "ticket"

    const-wide/16 v8, 0x0

    invoke-interface {v0, v1, v8, v9}, Lcom/alipay/mobile/common/transportext/amnet/Linkage;->report(Ljava/lang/String;D)V

    .line 2679
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const-string/jumbo v1, "-AMNET-SSL"

    const-string/jumbo v8, "Can not fetch saved session ticket."

    invoke-static {v0, v10, v1, v8}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$100(Lcom/alipay/mobile/common/transportext/amnet/Amnet;ILjava/lang/String;Ljava/lang/String;)V

    .line 2690
    :goto_6
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->rptSeparate:Lcom/alipay/mobile/common/transportext/amnet/Linkage$Separating;

    iget-boolean v0, v0, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Separating;->standard:Z

    if-nez v0, :cond_2

    .line 2691
    if-nez v5, :cond_9

    .line 2692
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const-string/jumbo v1, "-AMNET-SSL"

    const-string/jumbo v8, "Can not fetch saved MTLS cache."

    invoke-static {v0, v10, v1, v8}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$100(Lcom/alipay/mobile/common/transportext/amnet/Amnet;ILjava/lang/String;Ljava/lang/String;)V

    .line 2702
    :cond_2
    :goto_7
    iget v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->verSsl:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->handshake(ILjava/lang/String;Ljava/lang/String;[B[B)I

    move-result v0

    const-string/jumbo v1, "open SSL of the"

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->judge(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2705
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$1200(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$LinkTmr;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LinkTmr;->reset(Z)Z

    .line 2706
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$1400(Lcom/alipay/mobile/common/transportext/amnet/Amnet;I)V

    .line 2707
    iput-boolean v6, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->safe:Z

    goto/16 :goto_0

    :cond_3
    move v0, v7

    .line 2666
    goto/16 :goto_1

    .line 2668
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$6100(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 2669
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$6300(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 2670
    :cond_6
    const-string/jumbo v0, "/mtls-session"

    goto :goto_4

    .line 2673
    :cond_7
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$2000(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Storage;

    move-result-object v0

    const-string/jumbo v1, "/mtls-cache"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Storage;->getCommon(Ljava/lang/String;)[B

    move-result-object v5

    goto :goto_5

    .line 2683
    :cond_8
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->rptSeparate:Lcom/alipay/mobile/common/transportext/amnet/Linkage$Separating;

    iput-boolean v6, v0, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Separating;->ticket:Z

    .line 2684
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$2300(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Linkage;

    move-result-object v0

    const-string/jumbo v1, "ticket"

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-interface {v0, v1, v8, v9}, Lcom/alipay/mobile/common/transportext/amnet/Linkage;->report(Ljava/lang/String;D)V

    .line 2685
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const-string/jumbo v1, "-AMNET-SSL"

    const-string/jumbo v8, "The saved session ticket is fetched."

    invoke-static {v0, v6, v1, v8}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$100(Lcom/alipay/mobile/common/transportext/amnet/Amnet;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 2696
    :cond_9
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const-string/jumbo v1, "-AMNET-SSL"

    const-string/jumbo v8, "The saved MTLS cache is fetched."

    invoke-static {v0, v6, v1, v8}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$100(Lcom/alipay/mobile/common/transportext/amnet/Amnet;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_a
    move v6, v7

    .line 2711
    goto/16 :goto_0
.end method

.method public putAddr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2527
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->ipLcl:Ljava/lang/String;

    .line 2528
    iput-object p2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->ipRmt:Ljava/lang/String;

    .line 2529
    iput-object p3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->portLcl:Ljava/lang/String;

    .line 2530
    iput-object p4, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->portRmt:Ljava/lang/String;

    .line 2531
    return-void
.end method

.method public putDnsStamp(J)V
    .locals 0

    .prologue
    .line 2630
    iput-wide p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->stampDns:J

    .line 2631
    return-void
.end method

.method public putGroup([Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;)V
    .locals 0

    .prologue
    .line 2495
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->group:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    .line 2496
    return-void
.end method

.method public putPeer(Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;)V
    .locals 0

    .prologue
    .line 2507
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->peer:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;

    .line 2508
    return-void
.end method

.method public start(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 2542
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->stampAct:J

    .line 2543
    iget-wide v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->stampAct:J

    iput-wide v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->stampDns:J

    .line 2544
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->rptTouch:Lcom/alipay/mobile/common/transportext/amnet/Linkage$Touching;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$5700(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Touching;->foreground:Z

    .line 2545
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$5800(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2546
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$5900(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2561
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->rptTouch:Lcom/alipay/mobile/common/transportext/amnet/Linkage$Touching;

    const-string/jumbo v1, "unknown"

    iput-object v1, v0, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Touching;->network:Ljava/lang/String;

    .line 2566
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->open(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2567
    if-eqz v0, :cond_2

    .line 2568
    const-string/jumbo v1, "Can not open the long-connection."

    .line 2569
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const-string/jumbo v3, "-AMNET-LINK"

    invoke-static {v2, v4, v3, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$100(Lcom/alipay/mobile/common/transportext/amnet/Amnet;ILjava/lang/String;Ljava/lang/String;)V

    .line 2570
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    if-ne v0, v4, :cond_1

    const/4 v0, 0x5

    :goto_1
    invoke-static {v2, p0, v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$400(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;ILjava/lang/String;)V

    .line 2574
    const/4 v0, 0x0

    .line 2577
    :goto_2
    return v0

    .line 2548
    :pswitch_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->rptTouch:Lcom/alipay/mobile/common/transportext/amnet/Linkage$Touching;

    const-string/jumbo v1, "wifi"

    iput-object v1, v0, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Touching;->network:Ljava/lang/String;

    goto :goto_0

    .line 2552
    :pswitch_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->rptTouch:Lcom/alipay/mobile/common/transportext/amnet/Linkage$Touching;

    const-string/jumbo v1, "2g"

    iput-object v1, v0, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Touching;->network:Ljava/lang/String;

    goto :goto_0

    .line 2555
    :pswitch_2
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->rptTouch:Lcom/alipay/mobile/common/transportext/amnet/Linkage$Touching;

    const-string/jumbo v1, "3g"

    iput-object v1, v0, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Touching;->network:Ljava/lang/String;

    goto :goto_0

    .line 2558
    :pswitch_3
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->rptTouch:Lcom/alipay/mobile/common/transportext/amnet/Linkage$Touching;

    const-string/jumbo v1, "4g"

    iput-object v1, v0, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Touching;->network:Ljava/lang/String;

    goto :goto_0

    .line 2570
    :cond_1
    const/4 v0, 0x4

    goto :goto_1

    .line 2577
    :cond_2
    const/4 v0, 0x1

    goto :goto_2

    .line 2546
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public stop()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2583
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->closeIntelligentHb()Z

    .line 2585
    const/16 v2, 0x64

    move v3, v2

    move v2, v0

    .line 2589
    :goto_0
    add-int/lit8 v4, v3, -0x1

    if-eqz v3, :cond_1

    .line 2590
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->close()I

    move-result v3

    .line 2591
    if-eqz v3, :cond_1

    .line 2592
    if-ne v3, v5, :cond_0

    move v2, v1

    move v3, v4

    .line 2594
    goto :goto_0

    :cond_0
    move v0, v1

    move v3, v4

    .line 2598
    goto :goto_0

    .line 2600
    :cond_1
    if-gez v4, :cond_3

    .line 2601
    const-string/jumbo v1, "Can not close the long-connection."

    .line 2602
    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const-string/jumbo v4, "-AMNET-LINK"

    invoke-static {v3, v5, v4, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$100(Lcom/alipay/mobile/common/transportext/amnet/Amnet;ILjava/lang/String;Ljava/lang/String;)V

    .line 2603
    if-eqz v2, :cond_2

    .line 2604
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const/4 v3, 0x5

    invoke-static {v2, p0, v3, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$400(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;ILjava/lang/String;)V

    .line 2607
    :cond_2
    if-eqz v0, :cond_3

    .line 2608
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const/4 v2, 0x4

    invoke-static {v0, p0, v2, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$400(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;ILjava/lang/String;)V

    .line 2612
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$2300(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Linkage;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->rptTouch:Lcom/alipay/mobile/common/transportext/amnet/Linkage$Touching;

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->rptSeparate:Lcom/alipay/mobile/common/transportext/amnet/Linkage$Separating;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/transportext/amnet/Linkage;->separate(Lcom/alipay/mobile/common/transportext/amnet/Linkage$Touching;Lcom/alipay/mobile/common/transportext/amnet/Linkage$Separating;)V

    .line 2613
    return-void
.end method

.method public treatIhInterval(J)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2915
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->tmrIhInterval:Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection$IhIntervalTmr;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection$IhIntervalTmr;->identification()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 2916
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const-string/jumbo v1, "-AMNET-TMR-IH"

    const-string/jumbo v2, "I\'m the timer for sending heartbeat."

    invoke-static {v0, v3, v1, v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$100(Lcom/alipay/mobile/common/transportext/amnet/Amnet;ILjava/lang/String;Ljava/lang/String;)V

    .line 2919
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->tmrIhSilence:Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection$IhSilenceTmr;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection$IhSilenceTmr;->closed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2920
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$6500(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->pulse(Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2921
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->reset()V

    .line 2928
    :cond_0
    :goto_0
    return-void

    .line 2924
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->tmrIhInterval:Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection$IhIntervalTmr;

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->tmrIhInterval:Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection$IhIntervalTmr;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection$IhIntervalTmr;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$1300(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/mnet/Plan;Ljava/lang/String;)V

    .line 2925
    iput-boolean v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->mark:Z

    goto :goto_0
.end method

.method public treatIhSilence(J)V
    .locals 4

    .prologue
    .line 2933
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->tmrIhSilence:Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection$IhSilenceTmr;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection$IhSilenceTmr;->identification()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 2934
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const/4 v1, 0x2

    const-string/jumbo v2, "-AMNET-TMR-IH"

    const-string/jumbo v3, "I\'m the timer for receiving heartbeat."

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$100(Lcom/alipay/mobile/common/transportext/amnet/Amnet;ILjava/lang/String;Ljava/lang/String;)V

    .line 2937
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const/16 v1, 0xb

    const-string/jumbo v2, "An intelligent heartbeat is lost."

    invoke-static {v0, p0, v1, v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$400(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;ILjava/lang/String;)V

    .line 2940
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->reduce()V

    .line 2941
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->reset()V

    .line 2943
    :cond_0
    return-void
.end method

.method public upIntelligentHb()Z
    .locals 11

    .prologue
    const/4 v1, -0x2

    const/16 v10, 0x4b0

    const/4 v0, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2838
    iget-boolean v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->sent:Z

    if-eqz v2, :cond_a

    .line 2839
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    const-string/jumbo v5, "-AMNET-IH"

    const-string/jumbo v6, "The heart is healthy."

    invoke-static {v2, v4, v5, v6}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$100(Lcom/alipay/mobile/common/transportext/amnet/Amnet;ILjava/lang/String;Ljava/lang/String;)V

    .line 2841
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$6500(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;

    move-result-object v6

    .line 2842
    iget v2, v6, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;->nKeep:I

    if-gtz v2, :cond_0

    .line 2843
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 2844
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v2, v6, v7, v8}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$6700(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;J)Z

    move-result v5

    .line 2845
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$5700(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Z

    move-result v9

    .line 2847
    iget v2, v6, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;->nKeep:I

    if-nez v2, :cond_3

    .line 2848
    if-eqz v5, :cond_1

    :goto_0
    iput v0, v6, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;->nKeep:I

    .line 2849
    iget v0, v6, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;->nFail:I

    if-nez v0, :cond_7

    .line 2850
    if-eqz v9, :cond_2

    const/4 v0, 0x5

    :goto_1
    iput v0, v6, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;->nFail:I

    move v0, v5

    .line 2871
    :goto_2
    if-eqz v0, :cond_0

    .line 2872
    if-eqz v9, :cond_8

    .line 2873
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$6600(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;

    move-result-object v0

    .line 2874
    iget v1, v6, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;->trying:I

    iget v2, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;->interval:I

    if-ge v1, v2, :cond_0

    .line 2875
    iget v1, v6, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;->trying:I

    add-int/lit8 v1, v1, 0x14

    iput v1, v6, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;->trying:I

    .line 2876
    iget v1, v6, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;->trying:I

    iget v2, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;->interval:I

    if-le v1, v2, :cond_0

    .line 2877
    iget v0, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;->interval:I

    iput v0, v6, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;->trying:I

    .line 2889
    :cond_0
    :goto_3
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->mark:Z

    if-eqz v0, :cond_9

    .line 2890
    iput-boolean v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->mark:Z

    .line 2891
    invoke-direct {p0, v6}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->pulse(Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;)Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v3

    .line 2899
    :goto_4
    return v0

    :cond_1
    move v0, v1

    .line 2848
    goto :goto_0

    .line 2850
    :cond_2
    const/4 v0, 0x3

    goto :goto_1

    .line 2853
    :cond_3
    if-eqz v9, :cond_4

    const/4 v2, 0x5

    :goto_5
    iput v2, v6, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;->nFail:I

    .line 2854
    iget v2, v6, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;->nKeep:I

    if-ne v2, v0, :cond_6

    .line 2855
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v0, v9}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$6800(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Z)Ljava/lang/String;

    move-result-object v0

    .line 2856
    iget v2, v6, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;->using:I

    iget v5, v6, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;->trying:I

    if-ne v2, v5, :cond_5

    .line 2857
    iput-wide v7, v6, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;->stamp:J

    .line 2858
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v2, v0, v6, v4}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$6900(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Ljava/lang/String;Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;Z)V

    .line 2860
    iput v1, v6, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;->nKeep:I

    move v0, v3

    goto :goto_2

    .line 2853
    :cond_4
    const/4 v2, 0x3

    goto :goto_5

    .line 2862
    :cond_5
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    invoke-static {v1, v0, v6, v3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$6900(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Ljava/lang/String;Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;Z)V

    .line 2863
    iget v0, v6, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;->trying:I

    iput v0, v6, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;->using:I

    move v0, v4

    .line 2866
    goto :goto_2

    :cond_6
    if-eqz v5, :cond_7

    .line 2867
    iput v0, v6, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;->nKeep:I

    :cond_7
    move v0, v5

    goto :goto_2

    .line 2880
    :cond_8
    iget v0, v6, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;->trying:I

    if-ge v0, v10, :cond_0

    .line 2881
    iget v0, v6, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;->trying:I

    add-int/lit8 v0, v0, 0x3c

    iput v0, v6, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;->trying:I

    .line 2882
    iget v0, v6, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;->trying:I

    if-le v0, v10, :cond_0

    .line 2883
    iput v10, v6, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;->trying:I

    goto :goto_3

    .line 2895
    :cond_9
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->tmrIhSilence:Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection$IhSilenceTmr;

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->tmrIhSilence:Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection$IhSilenceTmr;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection$IhSilenceTmr;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->access$1300(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/mnet/Plan;Ljava/lang/String;)V

    :cond_a
    move v0, v4

    .line 2899
    goto :goto_4
.end method

.method public useProxy(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 2648
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->proxy(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "operate proxy on"

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;->judge(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method
