.class Lcom/alipay/android/launcher/TitleSearchButton$1;
.super Ljava/lang/Object;
.source "TitleSearchButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/launcher/TitleSearchButton;


# direct methods
.method constructor <init>(Lcom/alipay/android/launcher/TitleSearchButton;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/launcher/TitleSearchButton$1;->a:Lcom/alipay/android/launcher/TitleSearchButton;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alipay/android/launcher/TitleSearchButton$1;->a:Lcom/alipay/android/launcher/TitleSearchButton;

    invoke-virtual {v0}, Lcom/alipay/android/launcher/TitleSearchButton;->getCurrentTab()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 54
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 56
    const-class v1, Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/SchemeService;

    .line 54
    const-string/jumbo v1, "alipays://platformapi/startApp?appId=20000238&target=searchHome&showSwitch=YES"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/SchemeService;->process(Landroid/net/Uri;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "TitleSearchButton"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 62
    :cond_0
    const-string/jumbo v0, "20001003"

    iget-object v1, p0, Lcom/alipay/android/launcher/TitleSearchButton$1;->a:Lcom/alipay/android/launcher/TitleSearchButton;

    invoke-virtual {v1}, Lcom/alipay/android/launcher/TitleSearchButton;->getCurrentTab()I

    move-result v1

    invoke-static {v0, v1}, Lcom/alipay/android/launcher/TitleSearchButton;->goTargetApp(Ljava/lang/String;I)V

    goto :goto_0
.end method
