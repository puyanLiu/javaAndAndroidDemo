.class Lcom/alipay/mobile/common/transportext/biz/shared/config/SharedSwitchChangedListener$1;
.super Ljava/lang/Object;
.source "SharedSwitchChangedListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/biz/shared/config/SharedSwitchChangedListener;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transportext/biz/shared/config/SharedSwitchChangedListener;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/config/SharedSwitchChangedListener$1;->this$0:Lcom/alipay/mobile/common/transportext/biz/shared/config/SharedSwitchChangedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 24
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/ipc/api/IPCApiFactory;->getSingletonIPCContextManager()Lcom/alipay/mobile/common/ipc/api/IPCContextManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/ipc/api/IPCContextManager;->getIpcCallManager()Lcom/alipay/mobile/common/ipc/api/IPCCallManager;

    move-result-object v0

    .line 25
    const-class v1, Lcom/alipay/mobile/common/transport/config/CtrlNormalConfigChangedEvent;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/ipc/api/IPCCallManager;->getIpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/config/CtrlNormalConfigChangedEvent;

    .line 26
    invoke-interface {v0}, Lcom/alipay/mobile/common/transport/config/CtrlNormalConfigChangedEvent;->notifyChanged()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :goto_0
    return-void

    .line 27
    :catch_0
    move-exception v0

    .line 28
    const-string/jumbo v1, "SharedSwitchChangedListener"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
