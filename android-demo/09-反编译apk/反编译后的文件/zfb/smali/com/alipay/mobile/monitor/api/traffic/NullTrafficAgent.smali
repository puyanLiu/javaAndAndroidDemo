.class public Lcom/alipay/mobile/monitor/api/traffic/NullTrafficAgent;
.super Ljava/lang/Object;
.source "NullTrafficAgent.java"

# interfaces
.implements Lcom/alipay/mobile/monitor/api/traffic/TrafficAgent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public flushTraficConsume()V
    .locals 2

    .prologue
    .line 27
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/apm/api/APMAgent;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "TrafficAgent need set before use"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public isTraficConsumeAccept(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 16
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/apm/api/APMAgent;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "TrafficAgent need set before use"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public noteTraficConsume(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 2

    .prologue
    .line 22
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/apm/api/APMAgent;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "TrafficAgent need set before use"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public updateTraficCfg(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 11
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/apm/api/APMAgent;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "TrafficAgent need set before use"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 12
    return-void
.end method
