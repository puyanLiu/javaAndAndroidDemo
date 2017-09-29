.class public Lcom/alipay/mobile/monitor/api/ClientMonitorAgent;
.super Ljava/lang/Object;
.source "ClientMonitorAgent.java"


# static fields
.field private static a:Lcom/alipay/android/phone/mobilesdk/apm/api/APMAgent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/apm/api/NullAPMAgent;

    invoke-direct {v0}, Lcom/alipay/android/phone/mobilesdk/apm/api/NullAPMAgent;-><init>()V

    sput-object v0, Lcom/alipay/mobile/monitor/api/ClientMonitorAgent;->a:Lcom/alipay/android/phone/mobilesdk/apm/api/APMAgent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAPMAgent()Lcom/alipay/android/phone/mobilesdk/apm/api/APMAgent;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/alipay/mobile/monitor/api/ClientMonitorAgent;->a:Lcom/alipay/android/phone/mobilesdk/apm/api/APMAgent;

    return-object v0
.end method

.method public static noteMemoryLeak(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    sget-object v0, Lcom/alipay/mobile/monitor/api/ClientMonitorAgent;->a:Lcom/alipay/android/phone/mobilesdk/apm/api/APMAgent;

    invoke-interface {v0, p0}, Lcom/alipay/android/phone/mobilesdk/apm/api/APMAgent;->noteMemoryLeak(Ljava/util/List;)V

    .line 28
    return-void
.end method

.method public static setAPMAgent(Lcom/alipay/android/phone/mobilesdk/apm/api/APMAgent;)V
    .locals 0

    .prologue
    .line 13
    sput-object p0, Lcom/alipay/mobile/monitor/api/ClientMonitorAgent;->a:Lcom/alipay/android/phone/mobilesdk/apm/api/APMAgent;

    .line 14
    return-void
.end method
