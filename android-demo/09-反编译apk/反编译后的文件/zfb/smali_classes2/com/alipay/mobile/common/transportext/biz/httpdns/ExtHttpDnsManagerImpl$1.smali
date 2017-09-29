.class Lcom/alipay/mobile/common/transportext/biz/httpdns/ExtHttpDnsManagerImpl$1;
.super Ljava/lang/Object;
.source "ExtHttpDnsManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/biz/httpdns/ExtHttpDnsManagerImpl;

.field final synthetic val$firstUpdate:Z


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transportext/biz/httpdns/ExtHttpDnsManagerImpl;Z)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/httpdns/ExtHttpDnsManagerImpl$1;->this$0:Lcom/alipay/mobile/common/transportext/biz/httpdns/ExtHttpDnsManagerImpl;

    iput-boolean p2, p0, Lcom/alipay/mobile/common/transportext/biz/httpdns/ExtHttpDnsManagerImpl$1;->val$firstUpdate:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 28
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/ipc/api/IPCApiFactory;->getSingletonIPCContextManager()Lcom/alipay/mobile/common/ipc/api/IPCContextManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/ipc/api/IPCContextManager;->getIpcCallManager()Lcom/alipay/mobile/common/ipc/api/IPCCallManager;

    move-result-object v0

    .line 29
    const-class v1, Lcom/alipay/mobile/common/transport/httpdns/ipc/UpdateDnsService;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/ipc/api/IPCCallManager;->getIpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/httpdns/ipc/UpdateDnsService;

    .line 30
    iget-boolean v1, p0, Lcom/alipay/mobile/common/transportext/biz/httpdns/ExtHttpDnsManagerImpl$1;->val$firstUpdate:Z

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transport/httpdns/ipc/UpdateDnsService;->notifyUpdateDns(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :goto_0
    return-void

    .line 31
    :catch_0
    move-exception v0

    .line 32
    const-string/jumbo v1, "ExtHttpDnsManager"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
