.class public Lcom/alipay/pushsdk/push/f/i;
.super Ljava/lang/Object;
.source "RegisterPacketListenerImpl.java"

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
    .line 26
    const-class v0, Lcom/alipay/pushsdk/push/f/i;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 25
    sput-object v0, Lcom/alipay/pushsdk/push/f/i;->a:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/alipay/pushsdk/push/m;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/alipay/pushsdk/push/f/i;->b:Lcom/alipay/pushsdk/push/m;

    .line 32
    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/pushsdk/push/e/a;)V
    .locals 8

    .prologue
    const/4 v6, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 36
    if-nez p1, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    invoke-virtual {p1}, Lcom/alipay/pushsdk/push/e/a;->h()Ljava/lang/String;

    move-result-object v2

    .line 42
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 47
    const/16 v2, 0x8

    invoke-virtual {p1}, Lcom/alipay/pushsdk/push/e/a;->a()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 51
    new-instance v2, Lcom/alipay/pushsdk/push/g;

    .line 53
    const/16 v3, 0x64

    .line 51
    invoke-direct {v2, v0, v3}, Lcom/alipay/pushsdk/push/g;-><init>(II)V

    .line 54
    invoke-virtual {v2, p1}, Lcom/alipay/pushsdk/push/g;->a(Lcom/alipay/pushsdk/push/e/a;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 57
    const-string/jumbo v3, "on register package received"

    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 58
    iget-object v3, p0, Lcom/alipay/pushsdk/push/f/i;->b:Lcom/alipay/pushsdk/push/m;

    invoke-virtual {v3, v0}, Lcom/alipay/pushsdk/push/m;->a(Z)V

    .line 60
    const-string/jumbo v3, "1.5.0"

    .line 61
    invoke-virtual {v2}, Lcom/alipay/pushsdk/push/g;->a()Lorg/json/JSONObject;

    move-result-object v2

    .line 62
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "registerJson:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 63
    invoke-static {}, Lcom/alipay/pushsdk/push/connection/k;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_3

    .line 66
    const-string/jumbo v3, "result"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 67
    if-eqz v2, :cond_2

    const-string/jumbo v3, "100"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 68
    invoke-static {v6}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 69
    sget-object v0, Lcom/alipay/pushsdk/push/f/i;->a:Ljava/lang/String;

    const-string/jumbo v2, "processPacket result=100"

    invoke-static {v6, v0, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 83
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/alipay/pushsdk/push/f/i;->b:Lcom/alipay/pushsdk/push/m;

    invoke-static {}, Lcom/alipay/pushsdk/push/m;->n()V

    .line 84
    new-instance v2, Lcom/alipay/mobile/common/logging/api/monitor/Performance;

    invoke-direct {v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;-><init>()V

    const-string/jumbo v3, "push"

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setSubType(Ljava/lang/String;)V

    const-string/jumbo v3, "register"

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam1(Ljava/lang/String;)V

    const-string/jumbo v3, "conStart"

    invoke-static {}, Lcom/alipay/pushsdk/push/m;->e()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "registerTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Lcom/alipay/pushsdk/push/m;->e()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v3

    sget-object v4, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_NETWORK:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    invoke-interface {v3, v4, v2}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->performance(Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V

    .line 85
    iget-object v2, p0, Lcom/alipay/pushsdk/push/f/i;->b:Lcom/alipay/pushsdk/push/m;

    invoke-virtual {v2, v1}, Lcom/alipay/pushsdk/push/m;->a(Z)V

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/alipay/pushsdk/push/connection/k;->a(J)V

    .line 87
    iget-object v1, p0, Lcom/alipay/pushsdk/push/f/i;->b:Lcom/alipay/pushsdk/push/m;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/alipay/pushsdk/push/m;->b(J)V

    .line 89
    if-eqz v0, :cond_0

    .line 90
    invoke-static {}, Lcom/alipay/pushsdk/push/k;->a()Lcom/alipay/pushsdk/push/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/k;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/alipay/pushsdk/push/f/i;->b:Lcom/alipay/pushsdk/push/m;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Lcom/alipay/pushsdk/push/m;->e(J)V

    goto/16 :goto_0

    .line 78
    :cond_3
    const-string/jumbo v3, "keepLiveTime"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/alipay/pushsdk/push/connection/k;->c(I)V

    const-string/jumbo v3, "reconnectTime"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/alipay/pushsdk/push/connection/k;->b(I)V

    invoke-static {}, Lcom/alipay/pushsdk/push/connection/k;->j()V

    const-string/jumbo v3, "heartTimeout"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/alipay/pushsdk/push/connection/k;->a(I)V

    :cond_4
    const-string/jumbo v3, "ctrlSelf"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    const-string/jumbo v4, "false"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v0}, Lcom/alipay/pushsdk/push/connection/k;->a(Z)V

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "processPacket ctrlSelf="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/pushsdk/push/connection/k;->g()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    const-string/jumbo v3, "ctrlAlways"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    const-string/jumbo v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {v0}, Lcom/alipay/pushsdk/push/connection/k;->b(Z)V

    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "processPacket ctrlAlways="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/pushsdk/push/connection/k;->h()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "processPacket() reconnectTime="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/pushsdk/push/connection/k;->c()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "s, keepLiveTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/alipay/pushsdk/push/connection/k;->m()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "s, ctrlLBSInfo="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/alipay/pushsdk/push/connection/k;->k()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    :cond_5
    move v0, v1

    goto/16 :goto_1

    :cond_6
    invoke-static {v1}, Lcom/alipay/pushsdk/push/connection/k;->a(Z)V

    goto :goto_2

    :cond_7
    invoke-static {v1}, Lcom/alipay/pushsdk/push/connection/k;->b(Z)V

    goto :goto_3
.end method
