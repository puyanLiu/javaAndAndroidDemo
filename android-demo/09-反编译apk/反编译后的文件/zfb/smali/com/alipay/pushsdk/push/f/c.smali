.class public Lcom/alipay/pushsdk/push/f/c;
.super Ljava/lang/Object;
.source "NotificationPacketListenerImpl.java"

# interfaces
.implements Lcom/alipay/pushsdk/push/f/d;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/alipay/pushsdk/push/m;


# instance fields
.field private c:Lcom/alipay/pushsdk/data/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/alipay/pushsdk/push/f/c;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 31
    sput-object v0, Lcom/alipay/pushsdk/push/f/c;->a:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/alipay/pushsdk/push/m;)V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sput-object p1, Lcom/alipay/pushsdk/push/f/c;->b:Lcom/alipay/pushsdk/push/m;

    .line 39
    new-instance v0, Lcom/alipay/pushsdk/data/d;

    sget-object v1, Lcom/alipay/pushsdk/push/f/c;->b:Lcom/alipay/pushsdk/push/m;

    iget-object v1, v1, Lcom/alipay/pushsdk/push/m;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/data/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/pushsdk/push/f/c;->c:Lcom/alipay/pushsdk/data/b;

    .line 40
    return-void
.end method

.method public static a(Lcom/alipay/pushsdk/data/NotifierInfo;Lcom/alipay/pushsdk/push/b;Lcom/alipay/pushsdk/push/s;Z)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 140
    invoke-virtual {p2}, Lcom/alipay/pushsdk/push/s;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 141
    const-string/jumbo v0, "notifiy state is off"

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    const-string/jumbo v0, "ack response"

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 147
    :try_start_0
    invoke-static {}, Lcom/alipay/pushsdk/push/m;->i()I

    move-result v0

    invoke-static {v0}, Lcom/alipay/pushsdk/push/e/c;->a(I)Lcom/alipay/pushsdk/push/e/a;

    move-result-object v0

    .line 148
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/push/e/a;->a(I)V

    .line 149
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/push/e/a;->b(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 162
    invoke-virtual {p0}, Lcom/alipay/pushsdk/data/NotifierInfo;->getMsgInfo()Lcom/alipay/pushsdk/data/MsgInfo;

    move-result-object v2

    .line 164
    sget-object v3, Lcom/alipay/pushsdk/push/f/c;->b:Lcom/alipay/pushsdk/push/m;

    invoke-virtual {v3}, Lcom/alipay/pushsdk/push/m;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 165
    const-string/jumbo v3, "userId"

    .line 166
    sget-object v4, Lcom/alipay/pushsdk/push/f/c;->b:Lcom/alipay/pushsdk/push/m;

    invoke-virtual {v4}, Lcom/alipay/pushsdk/push/m;->d()Ljava/lang/String;

    move-result-object v4

    .line 165
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    :goto_1
    const-string/jumbo v3, "k"

    invoke-virtual {v2}, Lcom/alipay/pushsdk/data/MsgInfo;->getMsgKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 173
    invoke-static {}, Lcom/alipay/pushsdk/push/k;->a()Lcom/alipay/pushsdk/push/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/pushsdk/push/k;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "commandType"

    const/16 v3, 0x68

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v2, "commandVersion"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 175
    :cond_2
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/pushsdk/push/e/a;->a(Ljava/lang/String;)V

    .line 177
    const/4 v2, 0x3

    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 178
    const/4 v2, 0x3

    sget-object v3, Lcom/alipay/pushsdk/push/f/c;->a:Ljava/lang/String;

    .line 179
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "processPacket() respPacket will be sent. dataResp:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 179
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 178
    invoke-static {v2, v3, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_3
    sget-object v1, Lcom/alipay/pushsdk/push/f/c;->b:Lcom/alipay/pushsdk/push/m;

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/m;->c()Lcom/alipay/pushsdk/push/connection/i;

    move-result-object v1

    invoke-virtual {v1, v0, p3}, Lcom/alipay/pushsdk/push/connection/i;->a(Lcom/alipay/pushsdk/push/e/a;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 190
    :cond_4
    :goto_2
    invoke-virtual {p1}, Lcom/alipay/pushsdk/push/b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    invoke-virtual {p1}, Lcom/alipay/pushsdk/push/b;->d()V

    goto/16 :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    invoke-static {v6}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    sget-object v1, Lcom/alipay/pushsdk/push/f/c;->a:Ljava/lang/String;

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "processPacket() got Exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-static {v6, v1, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 168
    :cond_5
    :try_start_2
    const-string/jumbo v3, "userId"

    const-string/jumbo v4, ""

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 183
    :catch_1
    move-exception v0

    .line 184
    invoke-static {v6}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 185
    sget-object v1, Lcom/alipay/pushsdk/push/f/c;->a:Ljava/lang/String;

    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "processPacket() resp Exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-static {v6, v1, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public final a(Lcom/alipay/pushsdk/push/e/a;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 43
    if-nez p1, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    invoke-virtual {p1}, Lcom/alipay/pushsdk/push/e/a;->h()Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    const/16 v0, 0x8

    invoke-virtual {p1}, Lcom/alipay/pushsdk/push/e/a;->a()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 58
    new-instance v0, Lcom/alipay/pushsdk/push/g;

    .line 59
    const/4 v1, 0x4

    .line 60
    const/16 v2, 0xd

    .line 58
    invoke-direct {v0, v1, v2}, Lcom/alipay/pushsdk/push/g;-><init>(II)V

    .line 61
    invoke-virtual {v0, p1}, Lcom/alipay/pushsdk/push/g;->a(Lcom/alipay/pushsdk/push/e/a;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/g;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 66
    if-nez v0, :cond_2

    .line 67
    const-string/jumbo v0, "json is null"

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/alipay/pushsdk/push/connection/k;->a(J)V

    .line 73
    sget-object v1, Lcom/alipay/pushsdk/push/f/c;->b:Lcom/alipay/pushsdk/push/m;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/alipay/pushsdk/push/m;->b(J)V

    .line 75
    new-instance v1, Lcom/alipay/pushsdk/util/d;

    sget-object v2, Lcom/alipay/pushsdk/push/f/c;->b:Lcom/alipay/pushsdk/push/m;

    iget-object v2, v2, Lcom/alipay/pushsdk/push/m;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/alipay/pushsdk/util/d;-><init>(Landroid/content/Context;)V

    .line 78
    sget-object v2, Lcom/alipay/pushsdk/push/f/c;->b:Lcom/alipay/pushsdk/push/m;

    iget-object v2, v2, Lcom/alipay/pushsdk/push/m;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/pushsdk/push/b;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/push/b;

    move-result-object v2

    .line 80
    invoke-static {v0, v7}, Lcom/alipay/pushsdk/util/d;->a(Lorg/json/JSONObject;Z)Lcom/alipay/pushsdk/data/NotifierInfo;

    move-result-object v0

    .line 81
    if-nez v0, :cond_3

    .line 82
    const-string/jumbo v0, "noteInfo is null"

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :cond_3
    invoke-virtual {v0}, Lcom/alipay/pushsdk/data/NotifierInfo;->getDelayToTime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_6

    iget-object v3, p0, Lcom/alipay/pushsdk/push/f/c;->c:Lcom/alipay/pushsdk/data/b;

    invoke-virtual {v3, v0}, Lcom/alipay/pushsdk/data/b;->a(Lcom/alipay/pushsdk/data/NotifierInfo;)Z

    move-result v3

    if-nez v3, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "NotifierInfo received, msgId="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/pushsdk/data/NotifierInfo;->getMsgInfo()Lcom/alipay/pushsdk/data/MsgInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/pushsdk/data/MsgInfo;->getMsgKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " delayTime="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/pushsdk/data/NotifierInfo;->getDelayToTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/alipay/pushsdk/util/o;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/alipay/pushsdk/push/b;->a(Lcom/alipay/pushsdk/data/NotifierInfo;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    invoke-virtual {v0}, Lcom/alipay/pushsdk/data/NotifierInfo;->getDelayOffset()J

    move-result-wide v3

    invoke-virtual {v2, v1, v3, v4, v0}, Lcom/alipay/pushsdk/push/b;->a(IJLcom/alipay/pushsdk/data/NotifierInfo;)V

    .line 88
    :cond_4
    :goto_1
    new-instance v1, Lcom/alipay/pushsdk/push/s;

    sget-object v3, Lcom/alipay/pushsdk/push/f/c;->b:Lcom/alipay/pushsdk/push/m;

    iget-object v3, v3, Lcom/alipay/pushsdk/push/m;->a:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/alipay/pushsdk/push/s;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/alipay/pushsdk/data/NotifierInfo;->getMsgInfo()Lcom/alipay/pushsdk/data/MsgInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/pushsdk/data/MsgInfo;->getMsgKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v0}, Lcom/alipay/pushsdk/data/NotifierInfo;->getSyncData()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static {}, Lcom/alipay/pushsdk/util/log/LogUtil;->isCanLog()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string/jumbo v3, "push2sync have sync msg send to sync"

    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    :cond_5
    sget-object v3, Lcom/alipay/pushsdk/push/f/c;->b:Lcom/alipay/pushsdk/push/m;

    iget-object v3, v3, Lcom/alipay/pushsdk/push/m;->a:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/data/NotifierInfo;->getMsgInfo()Lcom/alipay/pushsdk/data/MsgInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/pushsdk/data/MsgInfo;->getMsgKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/alipay/pushsdk/data/NotifierInfo;->getSyncData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/alipay/pushsdk/sync/SyncMsgReceiver;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/s;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lcom/alipay/pushsdk/push/b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2}, Lcom/alipay/pushsdk/push/b;->d()V

    goto/16 :goto_0

    .line 86
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/alipay/pushsdk/push/f/c;->b:Lcom/alipay/pushsdk/push/m;

    iget-object v4, v4, Lcom/alipay/pushsdk/push/m;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, ".push.action.SHOW_NOTIFICATION"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/alipay/pushsdk/util/d;->a(Lcom/alipay/pushsdk/data/NotifierInfo;Ljava/lang/String;)V

    goto :goto_1

    .line 88
    :cond_7
    invoke-static {v0, v2, v1, v7}, Lcom/alipay/pushsdk/push/f/c;->a(Lcom/alipay/pushsdk/data/NotifierInfo;Lcom/alipay/pushsdk/push/b;Lcom/alipay/pushsdk/push/s;Z)V

    goto/16 :goto_0
.end method
