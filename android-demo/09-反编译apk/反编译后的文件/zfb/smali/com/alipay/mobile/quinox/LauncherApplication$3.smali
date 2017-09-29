.class Lcom/alipay/mobile/quinox/LauncherApplication$3;
.super Ljava/lang/ClassLoader;
.source "LauncherApplication.java"


# instance fields
.field private startupSafeguard:Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

.field final synthetic this$0:Lcom/alipay/mobile/quinox/LauncherApplication;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/LauncherApplication;Ljava/lang/ClassLoader;)V
    .locals 1

    .prologue
    .line 889
    iput-object p1, p0, Lcom/alipay/mobile/quinox/LauncherApplication$3;->this$0:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-direct {p0, p2}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 890
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication$3;->startupSafeguard:Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    return-void
.end method


# virtual methods
.method public findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    .prologue
    .line 895
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication$3;->startupSafeguard:Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication$3;->this$0:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v1}, Lcom/alipay/mobile/quinox/LauncherApplication;->access$500(Lcom/alipay/mobile/quinox/LauncherApplication;)Z

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->trackStartup(ZLjava/lang/String;)V

    .line 896
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication$3;->this$0:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/quinox/LauncherApplication;->pattern(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication$3;->this$0:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/quinox/LauncherApplication;->patternHost(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 904
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/ClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 913
    :goto_0
    return-object v0

    .line 906
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication$3;->this$0:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->access$500(Lcom/alipay/mobile/quinox/LauncherApplication;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 908
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 909
    :catch_0
    move-exception v0

    .line 910
    const-string/jumbo v1, "LauncherApplication"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 913
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication$3;->this$0:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->access$600(Lcom/alipay/mobile/quinox/LauncherApplication;)Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method
