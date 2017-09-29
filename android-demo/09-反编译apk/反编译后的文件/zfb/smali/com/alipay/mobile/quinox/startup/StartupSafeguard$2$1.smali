.class Lcom/alipay/mobile/quinox/startup/StartupSafeguard$2$1;
.super Ljava/lang/Object;
.source "StartupSafeguard.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/quinox/startup/StartupSafeguard$2;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/startup/StartupSafeguard$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$2$1;->this$1:Lcom/alipay/mobile/quinox/startup/StartupSafeguard$2;

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 167
    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$2$1;->this$1:Lcom/alipay/mobile/quinox/startup/StartupSafeguard$2;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$2;->access$0(Lcom/alipay/mobile/quinox/startup/StartupSafeguard$2;)Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->access$2(Lcom/alipay/mobile/quinox/startup/StartupSafeguard;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "framework_preferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 168
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "key_startup_record_times"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 172
    return-void
.end method
