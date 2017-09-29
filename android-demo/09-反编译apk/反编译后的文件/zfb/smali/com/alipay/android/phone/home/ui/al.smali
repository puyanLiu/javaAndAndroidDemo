.class final Lcom/alipay/android/phone/home/ui/al;
.super Ljava/lang/Thread;
.source "HomeFrameLayout.java"


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/ui/HomeFrameLayout;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/ui/HomeFrameLayout;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/al;->a:Lcom/alipay/android/phone/home/ui/HomeFrameLayout;

    .line 393
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/home/ui/al;)Lcom/alipay/android/phone/home/ui/HomeFrameLayout;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/al;->a:Lcom/alipay/android/phone/home/ui/HomeFrameLayout;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 396
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/al;->a:Lcom/alipay/android/phone/home/ui/HomeFrameLayout;

    iget-object v0, v0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->e:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->getStrategyAppsFromLocal()Ljava/util/List;

    move-result-object v1

    .line 397
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->c:Ljava/lang/String;

    .line 398
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "strategyApp\'s list = "

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 397
    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/al;->a:Lcom/alipay/android/phone/home/ui/HomeFrameLayout;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->access$2(Lcom/alipay/android/phone/home/ui/HomeFrameLayout;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/alipay/android/phone/home/ui/am;

    invoke-direct {v2, p0, v1}, Lcom/alipay/android/phone/home/ui/am;-><init>(Lcom/alipay/android/phone/home/ui/al;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 406
    return-void

    .line 398
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method
