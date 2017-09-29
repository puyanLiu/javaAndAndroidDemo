.class public Lcom/alipay/mobile/rome/syncservice/sync/recv/RecvMsg;
.super Ljava/lang/Object;
.source "RecvMsg.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;

.field public static futureMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Future",
            "<*>;>;"
        }
    .end annotation
.end field

.field public static retryTimeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/alipay/mobile/rome/syncservice/sync/recv/RecvMsg;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/syncservice/sync/recv/RecvMsg;->LOGTAG:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/rome/syncservice/sync/recv/RecvMsg;->futureMap:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/rome/syncservice/sync/recv/RecvMsg;->retryTimeMap:Ljava/util/Map;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static insertMsgToDb(ILcom/alipay/mobile/rome/syncservice/sync/model/a;)I
    .locals 4

    .prologue
    .line 116
    :goto_0
    add-int/lit8 p0, p0, 0x1

    .line 117
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->a()Lcom/alipay/mobile/rome/syncservice/sync/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->a(Lcom/alipay/mobile/rome/syncservice/sync/model/a;)J

    move-result-wide v0

    .line 118
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 119
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "insertMsg failed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :catch_0
    move-exception v0

    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/recv/RecvMsg;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/alipay/mobile/rome/syncservice/sync/model/a;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "=>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/alipay/mobile/rome/syncservice/sync/model/a;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " insert to db failed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    packed-switch p0, :pswitch_data_0

    .line 135
    :cond_0
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 127
    :pswitch_0
    const-wide/16 v0, 0xc8

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 130
    :catch_1
    move-exception v0

    goto :goto_0

    .line 132
    :pswitch_1
    const/4 v0, -0x1

    goto :goto_1

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static isNeedDispatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 139
    invoke-static {p1}, Lcom/alipay/mobile/rome/syncservice/sync/recv/RecvMsg;->isPFCmdNeedDispatch(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    :cond_0
    :goto_0
    return v0

    .line 142
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isPFCmdNeedDispatch(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 149
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 151
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 152
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lez v1, :cond_0

    .line 153
    const/4 v0, 0x1

    .line 160
    :cond_0
    :goto_0
    return v0

    .line 156
    :catch_0
    move-exception v1

    sget-object v1, Lcom/alipay/mobile/rome/syncservice/sync/recv/RecvMsg;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v2, "isPFCmdNeedDispatch Integer.parseInt exception thrown."

    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static recvMsg(Lcom/alipay/mobile/rome/syncservice/sync/c;)I
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 36
    sget-object v1, Lcom/alipay/mobile/rome/syncservice/sync/recv/RecvMsg;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "recvMsg biz:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/rome/syncservice/sync/c;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " sKey:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/alipay/mobile/rome/syncservice/sync/c;->b:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    new-instance v2, Lcom/alipay/mobile/rome/syncservice/sync/model/a;

    invoke-direct {v2}, Lcom/alipay/mobile/rome/syncservice/sync/model/a;-><init>()V

    .line 40
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncservice/sync/c;->a:Ljava/lang/String;

    iput-object v1, v2, Lcom/alipay/mobile/rome/syncservice/sync/model/a;->a:Ljava/lang/String;

    .line 41
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncservice/sync/c;->c:Ljava/lang/String;

    iput-object v1, v2, Lcom/alipay/mobile/rome/syncservice/sync/model/a;->b:Ljava/lang/String;

    .line 42
    iget-wide v3, p0, Lcom/alipay/mobile/rome/syncservice/sync/c;->b:J

    iput-wide v3, v2, Lcom/alipay/mobile/rome/syncservice/sync/model/a;->c:J

    .line 43
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncservice/sync/c;->f:Ljava/lang/String;

    iput-object v1, v2, Lcom/alipay/mobile/rome/syncservice/sync/model/a;->d:Ljava/lang/String;

    .line 44
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncservice/sync/c;->g:Ljava/lang/String;

    iput-object v1, v2, Lcom/alipay/mobile/rome/syncservice/sync/model/a;->e:Ljava/lang/String;

    .line 45
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncservice/sync/c;->d:Ljava/lang/String;

    iput-object v1, v2, Lcom/alipay/mobile/rome/syncservice/sync/model/a;->f:Ljava/lang/String;

    .line 46
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncservice/sync/c;->e:Ljava/lang/String;

    iput-object v1, v2, Lcom/alipay/mobile/rome/syncservice/sync/model/a;->j:Ljava/lang/String;

    .line 47
    iput v0, v2, Lcom/alipay/mobile/rome/syncservice/sync/model/a;->g:I

    .line 51
    :try_start_0
    iget-object v1, v2, Lcom/alipay/mobile/rome/syncservice/sync/model/a;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/rome/syncservice/sync/recv/RecvMsg;->isPFCmdNeedDispatch(Ljava/lang/String;)Z

    move-result v3

    .line 52
    if-eqz v3, :cond_1

    .line 53
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->a()Lcom/alipay/mobile/rome/syncservice/sync/b/a;

    move-result-object v1

    .line 54
    iget-object v4, v2, Lcom/alipay/mobile/rome/syncservice/sync/model/a;->a:Ljava/lang/String;

    iget-object v5, v2, Lcom/alipay/mobile/rome/syncservice/sync/model/a;->b:Ljava/lang/String;

    .line 53
    invoke-virtual {v1, v4, v5}, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/rome/syncservice/sync/model/a;

    move-result-object v1

    .line 55
    if-eqz v1, :cond_1

    iget-wide v4, v1, Lcom/alipay/mobile/rome/syncservice/sync/model/a;->c:J

    iget-wide v6, v2, Lcom/alipay/mobile/rome/syncservice/sync/model/a;->c:J

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    .line 56
    sget-object v1, Lcom/alipay/mobile/rome/syncservice/sync/recv/RecvMsg;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "recvMsg: already has this command: [ sKey="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    iget-wide v4, v2, Lcom/alipay/mobile/rome/syncservice/sync/model/a;->c:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ][ biz="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, v2, Lcom/alipay/mobile/rome/syncservice/sync/model/a;->b:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncservice/sync/c;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/rome/syncservice/sync/c/a;->a(Ljava/lang/String;)V

    .line 110
    :cond_0
    :goto_0
    return v0

    .line 65
    :cond_1
    iget-object v1, v2, Lcom/alipay/mobile/rome/syncservice/sync/model/a;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v3, :cond_3

    .line 66
    :cond_2
    const/4 v1, 0x0

    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncservice/sync/recv/RecvMsg;->insertMsgToDb(ILcom/alipay/mobile/rome/syncservice/sync/model/a;)I

    move-result v1

    .line 67
    const/4 v4, -0x1

    if-ne v1, v4, :cond_4

    .line 68
    const-string/jumbo v0, "SYNC_EXP_DB"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 69
    iget-object v4, v2, Lcom/alipay/mobile/rome/syncservice/sync/model/a;->b:Ljava/lang/String;

    iget-wide v5, v2, Lcom/alipay/mobile/rome/syncservice/sync/model/a;->c:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    .line 68
    invoke-static {v0, v3, v4, v2, v5}, Lcom/alipay/mobile/rome/syncservice/e/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    move v0, v1

    .line 70
    goto :goto_0

    .line 73
    :cond_3
    sget-object v1, Lcom/alipay/mobile/rome/syncservice/sync/recv/RecvMsg;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v2, "syncPacket.md  is null or syncPacket.pf <= 0, msg will not insert to db."

    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_4
    if-nez v3, :cond_5

    .line 78
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/a;->a()Lcom/alipay/mobile/rome/syncservice/sync/a;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/rome/syncservice/sync/c;->c:Ljava/lang/String;

    .line 79
    iget-object v3, p0, Lcom/alipay/mobile/rome/syncservice/sync/c;->a:Ljava/lang/String;

    .line 78
    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/rome/syncservice/sync/a;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    .line 82
    iget-wide v3, p0, Lcom/alipay/mobile/rome/syncservice/sync/c;->b:J

    cmp-long v1, v3, v1

    if-lez v1, :cond_5

    .line 83
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/a;->a()Lcom/alipay/mobile/rome/syncservice/sync/a;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/rome/syncservice/sync/c;->c:Ljava/lang/String;

    iget-wide v3, p0, Lcom/alipay/mobile/rome/syncservice/sync/c;->b:J

    .line 84
    iget-object v5, p0, Lcom/alipay/mobile/rome/syncservice/sync/c;->a:Ljava/lang/String;

    .line 83
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/rome/syncservice/sync/a;->a(Ljava/lang/String;JLjava/lang/String;)J

    .line 89
    :cond_5
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncservice/sync/c;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/rome/syncservice/sync/c;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncservice/sync/recv/RecvMsg;->isNeedDispatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncservice/sync/c;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 91
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncservice/sync/c;->c:Ljava/lang/String;

    new-instance v1, Lcom/alipay/mobile/rome/syncservice/sync/recv/RecvMsg$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/rome/syncservice/sync/recv/RecvMsg$1;-><init>(Lcom/alipay/mobile/rome/syncservice/sync/c;)V

    invoke-static {v1}, Lcom/alipay/mobile/rome/syncservice/e/a;->c(Ljava/lang/Runnable;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    .line 102
    sget-object v2, Lcom/alipay/mobile/rome/syncservice/sync/recv/RecvMsg;->futureMap:Ljava/util/Map;

    iget-wide v3, p0, Lcom/alipay/mobile/rome/syncservice/sync/c;->b:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :cond_6
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncservice/sync/c;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/rome/syncservice/sync/c/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    sget-object v1, Lcom/alipay/mobile/rome/syncservice/sync/recv/RecvMsg;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "recvMsg: insertMsg: [ Exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const/4 v0, -0x2

    goto/16 :goto_0
.end method
