.class Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl$1;
.super Ljava/lang/Object;
.source "ApplicationManagerImpl.java"

# interfaces
.implements Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;

.field final synthetic val$params:Landroid/os/Bundle;

.field final synthetic val$sourceAppId:Ljava/lang/String;

.field final synthetic val$targetAppId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl$1;->this$0:Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;

    iput-object p2, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl$1;->val$targetAppId:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl$1;->val$sourceAppId:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl$1;->val$params:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public installed(Z)V
    .locals 5

    .prologue
    .line 138
    if-eqz p1, :cond_3

    .line 139
    sget-object v0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Success to install ExternalBundle\'s Applicaiton for [targetAppId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl$1;->val$targetAppId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "], call startApp() again."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl$1;->this$0:Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;

    iget-object v1, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl$1;->val$targetAppId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->findDescriptionByAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;

    move-result-object v0

    if-nez v0, :cond_0

    .line 142
    sget-object v0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "What?!! Still failed to find ApplicationDescription by [targetAppId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl$1;->val$targetAppId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :goto_0
    return-void

    .line 145
    :cond_0
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl$1;->val$sourceAppId:Ljava/lang/String;

    aput-object v2, v1, v0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl$1;->val$targetAppId:Ljava/lang/String;

    aput-object v2, v1, v0

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl$1;->val$params:Landroid/os/Bundle;

    aput-object v2, v1, v0

    .line 146
    const-string/jumbo v0, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.startApp(String, String, Bundle)"

    iget-object v2, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl$1;->this$0:Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;

    invoke-static {v2}, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->access$000(Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutCall;->onCallBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 147
    const-string/jumbo v0, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.startApp(String, String, Bundle)"

    iget-object v2, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl$1;->this$0:Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;

    invoke-static {v2}, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->access$000(Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutCall;->onCallAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 148
    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl$1;->this$0:Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;

    invoke-static {v0}, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->access$000(Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl$1;->val$sourceAppId:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl$1;->val$targetAppId:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl$1;->val$params:Landroid/os/Bundle;

    invoke-interface {v0, v2, v3, v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 151
    :cond_2
    const-string/jumbo v0, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.startApp(String, String, Bundle)"

    iget-object v2, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl$1;->this$0:Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;

    invoke-static {v2}, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->access$000(Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutCall;->onCallAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0

    .line 154
    :cond_3
    sget-object v0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Failed to install ExternalBundle\'s Applicaiton for [targetAppId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl$1;->val$targetAppId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
