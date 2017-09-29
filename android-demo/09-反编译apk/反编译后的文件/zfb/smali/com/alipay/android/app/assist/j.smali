.class final Lcom/alipay/android/app/assist/j;
.super Ljava/lang/Object;
.source "MspAssistUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 718
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 722
    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->H()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 724
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 725
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 727
    const-class v2, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 726
    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistService;

    .line 723
    invoke-virtual {v0}, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistService;->getUserInfo()Ljava/util/Map;

    move-result-object v2

    .line 729
    if-eqz v2, :cond_0

    .line 730
    const-string/jumbo v0, "userId"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/app/assist/MspAssistUtil;->e(Ljava/lang/String;)V

    .line 731
    const-string/jumbo v0, "extern_token"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/app/assist/MspAssistUtil;->f(Ljava/lang/String;)V

    .line 722
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
