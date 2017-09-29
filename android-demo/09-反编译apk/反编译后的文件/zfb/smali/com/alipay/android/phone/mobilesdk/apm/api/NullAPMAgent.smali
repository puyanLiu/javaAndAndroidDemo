.class public Lcom/alipay/android/phone/mobilesdk/apm/api/NullAPMAgent;
.super Ljava/lang/Object;
.source "NullAPMAgent.java"

# interfaces
.implements Lcom/alipay/android/phone/mobilesdk/apm/api/APMAgent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public disconnect()V
    .locals 2

    .prologue
    .line 70
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/apm/api/NullAPMAgent;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "APMAgent need set before used"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public noteMemoryLeak(Ljava/util/List;)V
    .locals 2
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
    .line 12
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/apm/api/NullAPMAgent;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "APMAgent need set before used"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public obtainFluencyUsage()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 34
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/apm/api/NullAPMAgent;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "APMAgent need set before used"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public obtainMemoryUsage()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 28
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/apm/api/NullAPMAgent;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "APMAgent need set before used"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public obtainStorageStructure()Ljava/lang/String;
    .locals 2

    .prologue
    .line 22
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/apm/api/NullAPMAgent;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "APMAgent need set before used"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 23
    const/4 v0, 0x0

    return-object v0
.end method

.method public obtainStorageUsage()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 17
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/apm/api/NullAPMAgent;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "APMAgent need set before used"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 18
    const/4 v0, 0x0

    return-object v0
.end method

.method public startAnrWatch()V
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/apm/api/NullAPMAgent;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "APMAgent need set before used"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public startMemoryWatch()V
    .locals 2

    .prologue
    .line 60
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/apm/api/NullAPMAgent;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "APMAgent need set before used"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public startSmoothnessWatch(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 50
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/apm/api/NullAPMAgent;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "APMAgent need set before used"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public stopAnrWatch()V
    .locals 2

    .prologue
    .line 45
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/apm/api/NullAPMAgent;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "APMAgent need set before used"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public stopMemoryWatch()V
    .locals 2

    .prologue
    .line 65
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/apm/api/NullAPMAgent;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "APMAgent need set before used"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public stopSmoothnessWatch()V
    .locals 2

    .prologue
    .line 55
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/apm/api/NullAPMAgent;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "APMAgent need set before used"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 56
    return-void
.end method
