.class Lcom/alipay/android/phone/mobilesdk/apm/service/APMInnerService$1;
.super Lcom/alipay/android/phone/mobilesdk/apm/service/IAPMInnerService$Stub;
.source "APMInnerService.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/mobilesdk/apm/service/APMInnerService;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mobilesdk/apm/service/APMInnerService;)V
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/service/APMInnerService$1;->this$0:Lcom/alipay/android/phone/mobilesdk/apm/service/APMInnerService;

    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/service/IAPMInnerService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public obtainFluencyUsage()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 37
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 38
    const-string/jumbo v1, "fluencyUsage"

    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/service/APMInnerService$1;->this$0:Lcom/alipay/android/phone/mobilesdk/apm/service/APMInnerService;

    invoke-virtual {v2}, Lcom/alipay/android/phone/mobilesdk/apm/service/APMInnerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->a(Landroid/content/Context;)Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public obtainMemoryUsage()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->b()Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->f()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public obtainStorageStructure()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/service/APMInnerService$1;->this$0:Lcom/alipay/android/phone/mobilesdk/apm/service/APMInnerService;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/apm/service/APMInnerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public obtainStorageUsage()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/service/APMInnerService$1;->this$0:Lcom/alipay/android/phone/mobilesdk/apm/service/APMInnerService;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/apm/service/APMInnerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->a(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
