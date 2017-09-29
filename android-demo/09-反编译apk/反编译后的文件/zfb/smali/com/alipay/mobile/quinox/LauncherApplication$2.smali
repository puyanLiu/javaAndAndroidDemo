.class Lcom/alipay/mobile/quinox/LauncherApplication$2;
.super Ljava/lang/Object;
.source "LauncherApplication.java"

# interfaces
.implements Lcom/alipay/mobile/quinox/bundle/BundleLoadObserver;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/quinox/LauncherApplication;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/LauncherApplication;)V
    .locals 0

    .prologue
    .line 705
    iput-object p1, p0, Lcom/alipay/mobile/quinox/LauncherApplication$2;->this$0:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBundleLoad(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 5

    .prologue
    .line 715
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication$2;->this$0:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->access$200(Lcom/alipay/mobile/quinox/LauncherApplication;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "loadBundlePatch"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 716
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 717
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 723
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication$2;->this$0:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->access$300(Lcom/alipay/mobile/quinox/LauncherApplication;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication$2;->this$0:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->access$400(Lcom/alipay/mobile/quinox/LauncherApplication;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 724
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication$2;->this$0:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->access$400(Lcom/alipay/mobile/quinox/LauncherApplication;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication$2;->this$0:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v1}, Lcom/alipay/mobile/quinox/LauncherApplication;->access$300(Lcom/alipay/mobile/quinox/LauncherApplication;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 729
    :cond_0
    :goto_1
    return-void

    .line 718
    :catch_0
    move-exception v0

    .line 719
    const-string/jumbo v1, "LauncherApplication"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 726
    :catch_1
    move-exception v0

    .line 727
    const-string/jumbo v1, "LauncherApplication"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public onBundleUnload(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 710
    return-void
.end method
