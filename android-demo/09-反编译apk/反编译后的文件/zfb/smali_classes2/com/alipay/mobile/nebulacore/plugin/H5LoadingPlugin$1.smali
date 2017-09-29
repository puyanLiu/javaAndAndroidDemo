.class Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin$1;
.super Ljava/lang/Object;
.source "H5LoadingPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin$1;->a:Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 135
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin$1;->a:Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->a(Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin$1;->a:Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->a(Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin$1;->a:Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->b(Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;)Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin$LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin$LoadingDialog;->show()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 140
    const-string/jumbo v1, "H5LoadingPlugin"

    const-string/jumbo v2, "exception detail"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
