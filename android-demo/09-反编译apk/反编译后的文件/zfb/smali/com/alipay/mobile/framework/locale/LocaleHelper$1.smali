.class Lcom/alipay/mobile/framework/locale/LocaleHelper$1;
.super Ljava/lang/Object;
.source "LocaleHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/framework/locale/LocaleHelper;

.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$bundle:Landroid/os/Bundle;

.field final synthetic val$context:Lcom/alipay/mobile/framework/MicroApplicationContext;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/locale/LocaleHelper;Lcom/alipay/mobile/framework/MicroApplicationContext;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 465
    iput-object p1, p0, Lcom/alipay/mobile/framework/locale/LocaleHelper$1;->this$0:Lcom/alipay/mobile/framework/locale/LocaleHelper;

    iput-object p2, p0, Lcom/alipay/mobile/framework/locale/LocaleHelper$1;->val$context:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iput-object p3, p0, Lcom/alipay/mobile/framework/locale/LocaleHelper$1;->val$appId:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/framework/locale/LocaleHelper$1;->val$bundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 470
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/locale/LocaleHelper$1;->val$context:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const/4 v1, 0x0

    const-string/jumbo v2, "20000001"

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 472
    iget-object v0, p0, Lcom/alipay/mobile/framework/locale/LocaleHelper$1;->val$appId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/alipay/mobile/framework/locale/LocaleHelper$1;->val$context:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/mobile/framework/locale/LocaleHelper$1;->val$appId:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/framework/locale/LocaleHelper$1;->val$bundle:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    :cond_0
    :goto_0
    return-void

    .line 476
    :catch_0
    move-exception v0

    .line 477
    invoke-static {}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "refreshHomeActivity"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
