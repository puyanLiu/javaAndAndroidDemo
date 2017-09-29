.class public Lcom/alipay/pushsdk/push/f/j;
.super Ljava/lang/Object;
.source "SyncPacketListenerImpl.java"

# interfaces
.implements Lcom/alipay/pushsdk/push/f/d;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/alipay/pushsdk/push/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/alipay/pushsdk/push/f/j;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 27
    sput-object v0, Lcom/alipay/pushsdk/push/f/j;->a:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/alipay/pushsdk/push/m;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/alipay/pushsdk/push/f/j;->b:Lcom/alipay/pushsdk/push/m;

    .line 34
    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/pushsdk/push/e/a;)V
    .locals 13

    .prologue
    const-wide/16 v11, 0x0

    const/4 v10, 0x2

    const/4 v0, 0x0

    const/4 v3, 0x3

    .line 44
    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    sget-object v1, Lcom/alipay/pushsdk/push/f/j;->a:Ljava/lang/String;

    .line 46
    const-string/jumbo v2, "SyncPacketListenerImpl.processPacket()..."

    .line 45
    invoke-static {v3, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_0
    new-instance v1, Lcom/alipay/pushsdk/util/d;

    iget-object v2, p0, Lcom/alipay/pushsdk/push/f/j;->b:Lcom/alipay/pushsdk/push/m;

    iget-object v2, v2, Lcom/alipay/pushsdk/push/m;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/alipay/pushsdk/util/d;-><init>(Landroid/content/Context;)V

    .line 50
    iget-object v2, p0, Lcom/alipay/pushsdk/push/f/j;->b:Lcom/alipay/pushsdk/push/m;

    iget-object v2, v2, Lcom/alipay/pushsdk/push/m;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/pushsdk/push/b;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/push/b;

    move-result-object v2

    .line 51
    invoke-virtual {p1}, Lcom/alipay/pushsdk/push/e/a;->h()Ljava/lang/String;

    move-result-object v3

    .line 52
    const/16 v4, 0x8

    invoke-virtual {p1}, Lcom/alipay/pushsdk/push/e/a;->a()I

    move-result v5

    if-ne v4, v5, :cond_6

    .line 53
    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_1

    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v0, v3, :cond_2

    .line 84
    :cond_1
    :goto_1
    return-void

    .line 53
    :cond_2
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_4

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/alipay/pushsdk/util/d;->a(Lorg/json/JSONObject;Z)Lcom/alipay/pushsdk/data/NotifierInfo;

    move-result-object v3

    new-instance v5, Lcom/alipay/pushsdk/data/d;

    iget-object v6, p0, Lcom/alipay/pushsdk/push/f/j;->b:Lcom/alipay/pushsdk/push/m;

    iget-object v6, v6, Lcom/alipay/pushsdk/push/m;->a:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/alipay/pushsdk/data/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/alipay/pushsdk/data/NotifierInfo;->getDelayToTime()J

    move-result-wide v6

    cmp-long v6, v6, v11

    if-lez v6, :cond_5

    invoke-virtual {v5, v3}, Lcom/alipay/pushsdk/data/b;->a(Lcom/alipay/pushsdk/data/NotifierInfo;)Z

    move-result v5

    if-nez v5, :cond_5

    const/4 v5, 0x3

    invoke-static {v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x3

    sget-object v6, Lcom/alipay/pushsdk/push/f/j;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "NotifierInfo received, msgId="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/alipay/pushsdk/data/NotifierInfo;->getMsgInfo()Lcom/alipay/pushsdk/data/MsgInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alipay/pushsdk/data/MsgInfo;->getMsgKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " delayTime="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/alipay/pushsdk/data/NotifierInfo;->getDelayToTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/alipay/pushsdk/util/o;->a(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v2, v3}, Lcom/alipay/pushsdk/push/b;->a(Lcom/alipay/pushsdk/data/NotifierInfo;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    invoke-virtual {v3}, Lcom/alipay/pushsdk/data/NotifierInfo;->getDelayOffset()J

    move-result-wide v6

    invoke-virtual {v2, v5, v6, v7, v3}, Lcom/alipay/pushsdk/push/b;->a(IJLcom/alipay/pushsdk/data/NotifierInfo;)V

    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/alipay/pushsdk/push/f/j;->b:Lcom/alipay/pushsdk/push/m;

    iget-object v6, v6, Lcom/alipay/pushsdk/push/m;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, ".push.action.SHOW_NOTIFICATION"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lcom/alipay/pushsdk/util/d;->a(Lcom/alipay/pushsdk/data/NotifierInfo;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {v10}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/alipay/pushsdk/push/f/j;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "processPacket() got JSONException="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v1, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 56
    :cond_6
    invoke-static {}, Lcom/alipay/pushsdk/push/k;->a()Lcom/alipay/pushsdk/push/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/k;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    invoke-static {v3}, Lcom/alipay/pushsdk/util/h;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 62
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "packet data "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 63
    if-eqz v0, :cond_1

    .line 67
    const-string/jumbo v4, "commandType"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 68
    const/4 v4, 0x4

    if-ne v4, v0, :cond_1

    .line 69
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/alipay/pushsdk/util/d;->a(Lorg/json/JSONObject;Z)Lcom/alipay/pushsdk/data/NotifierInfo;

    move-result-object v0

    new-instance v3, Lcom/alipay/pushsdk/data/d;

    iget-object v4, p0, Lcom/alipay/pushsdk/push/f/j;->b:Lcom/alipay/pushsdk/push/m;

    iget-object v4, v4, Lcom/alipay/pushsdk/push/m;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/alipay/pushsdk/data/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/alipay/pushsdk/data/NotifierInfo;->getDelayToTime()J

    move-result-wide v4

    cmp-long v4, v4, v11

    if-lez v4, :cond_8

    invoke-virtual {v3, v0}, Lcom/alipay/pushsdk/data/b;->a(Lcom/alipay/pushsdk/data/NotifierInfo;)Z

    move-result v3

    if-nez v3, :cond_8

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x3

    sget-object v3, Lcom/alipay/pushsdk/push/f/j;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "NotifierInfo received, msgId="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/pushsdk/data/NotifierInfo;->getMsgInfo()Lcom/alipay/pushsdk/data/MsgInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/pushsdk/data/MsgInfo;->getMsgKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " delayTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/alipay/pushsdk/data/NotifierInfo;->getDelayToTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/alipay/pushsdk/util/o;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v2, v0}, Lcom/alipay/pushsdk/push/b;->a(Lcom/alipay/pushsdk/data/NotifierInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0}, Lcom/alipay/pushsdk/data/NotifierInfo;->getDelayOffset()J

    move-result-wide v3

    invoke-virtual {v2, v1, v3, v4, v0}, Lcom/alipay/pushsdk/push/b;->a(IJLcom/alipay/pushsdk/data/NotifierInfo;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->printErr(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_8
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/pushsdk/push/f/j;->b:Lcom/alipay/pushsdk/push/m;

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

    new-instance v1, Lcom/alipay/pushsdk/push/s;

    iget-object v3, p0, Lcom/alipay/pushsdk/push/f/j;->b:Lcom/alipay/pushsdk/push/m;

    iget-object v3, v3, Lcom/alipay/pushsdk/push/m;->a:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/alipay/pushsdk/push/s;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-static {v0, v2, v1, v3}, Lcom/alipay/pushsdk/push/f/c;->a(Lcom/alipay/pushsdk/data/NotifierInfo;Lcom/alipay/pushsdk/push/b;Lcom/alipay/pushsdk/push/s;Z)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1
.end method
