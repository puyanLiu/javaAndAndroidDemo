.class final Lcom/alipay/android/phone/home/ui/g;
.super Ljava/lang/Object;
.source "AbstractHomeFrameLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/g;->a:Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 227
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/g;->a:Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;

    iget-object v0, v0, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->e:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    if-eqz v0, :cond_0

    .line 228
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->c:Ljava/lang/String;

    const-string/jumbo v2, "refreshHomeAppsData()"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/g;->a:Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;

    iget-object v0, v0, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->e:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->getHomeUrgentAppsFromRemote()V

    .line 231
    :cond_0
    return-void
.end method
