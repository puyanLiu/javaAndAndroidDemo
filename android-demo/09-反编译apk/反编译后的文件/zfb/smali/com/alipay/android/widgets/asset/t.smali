.class final Lcom/alipay/android/widgets/asset/t;
.super Ljava/lang/Object;
.source "WealthHomeBroadcastReceiver.java"

# interfaces
.implements Lcom/alipay/mobile/h5container/api/H5Listener;


# instance fields
.field final synthetic a:Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/t;->a:Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageCreated(Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 0

    .prologue
    .line 389
    return-void
.end method

.method public final onPageDestroyed(Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 3

    .prologue
    .line 393
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/t;->a:Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;

    invoke-static {}, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onPageDestroyed"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/t;->a:Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;

    invoke-static {v0}, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->g(Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 395
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 396
    const-class v1, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    .line 395
    iget-object v1, p0, Lcom/alipay/android/widgets/asset/t;->a:Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;

    invoke-static {v1}, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->g(Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;->removeTransaction(Ljava/lang/String;)V

    .line 399
    :cond_0
    return-void
.end method

.method public final onSessionCreated(Lcom/alipay/mobile/h5container/api/H5Session;)V
    .locals 0

    .prologue
    .line 379
    return-void
.end method

.method public final onSessionDestroyed(Lcom/alipay/mobile/h5container/api/H5Session;)V
    .locals 0

    .prologue
    .line 384
    return-void
.end method
