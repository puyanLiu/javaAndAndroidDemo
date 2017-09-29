.class public Lcom/alipay/mobile/common/transportext/biz/mmtp/amnetadapt/AmnetAppEventListener;
.super Lcom/alipay/mobile/common/transportext/biz/appevent/EventInterfaceAdapter;
.source "AmnetAppEventListener.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AmnetAppEventListener"


# instance fields
.field private eventNotifyService:Lcom/alipay/mobile/common/amnet/ipcapi/pushproc/OutEventNotifyService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/appevent/EventInterfaceAdapter;-><init>()V

    return-void
.end method

.method private getIpcContextManager()Lcom/alipay/mobile/common/ipc/api/IPCContextManager;
    .locals 2

    .prologue
    .line 91
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/ipc/api/IPCApiFactory;->getSingletonIPCContextManager()Lcom/alipay/mobile/common/ipc/api/IPCContextManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 95
    :goto_0
    return-object v0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    const-string/jumbo v1, "AmnetAppEventListener"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCallManager()Lcom/alipay/mobile/common/ipc/api/IPCCallManager;
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/mmtp/amnetadapt/AmnetAppEventListener;->getIpcContextManager()Lcom/alipay/mobile/common/ipc/api/IPCContextManager;

    move-result-object v0

    .line 77
    invoke-interface {v0}, Lcom/alipay/mobile/common/ipc/api/IPCContextManager;->getIpcCallManager()Lcom/alipay/mobile/common/ipc/api/IPCCallManager;

    move-result-object v0

    return-object v0
.end method

.method public getOutEventNotifyService()Lcom/alipay/mobile/common/amnet/ipcapi/pushproc/OutEventNotifyService;
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/amnetadapt/AmnetAppEventListener;->eventNotifyService:Lcom/alipay/mobile/common/amnet/ipcapi/pushproc/OutEventNotifyService;

    if-nez v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/mmtp/amnetadapt/AmnetAppEventListener;->getCallManager()Lcom/alipay/mobile/common/ipc/api/IPCCallManager;

    move-result-object v0

    .line 83
    const-class v1, Lcom/alipay/mobile/common/amnet/ipcapi/pushproc/OutEventNotifyService;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/ipc/api/IPCCallManager;->getIpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/amnet/ipcapi/pushproc/OutEventNotifyService;

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/amnetadapt/AmnetAppEventListener;->eventNotifyService:Lcom/alipay/mobile/common/amnet/ipcapi/pushproc/OutEventNotifyService;

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/amnetadapt/AmnetAppEventListener;->eventNotifyService:Lcom/alipay/mobile/common/amnet/ipcapi/pushproc/OutEventNotifyService;

    return-object v0
.end method

.method public onAppLeaveEvent()V
    .locals 3

    .prologue
    .line 47
    invoke-static {}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->getInstance()Lcom/alipay/mobile/common/task/AsyncTaskExecutor;

    move-result-object v0

    .line 48
    new-instance v1, Lcom/alipay/mobile/common/transportext/biz/mmtp/amnetadapt/AmnetAppEventListener$3;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/transportext/biz/mmtp/amnetadapt/AmnetAppEventListener$3;-><init>(Lcom/alipay/mobile/common/transportext/biz/mmtp/amnetadapt/AmnetAppEventListener;)V

    const-string/jumbo v2, "AmnetAppEventListener"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->executeSerially(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public onAppResumeEvent()V
    .locals 3

    .prologue
    .line 57
    invoke-static {}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->getInstance()Lcom/alipay/mobile/common/task/AsyncTaskExecutor;

    move-result-object v0

    .line 58
    new-instance v1, Lcom/alipay/mobile/common/transportext/biz/mmtp/amnetadapt/AmnetAppEventListener$4;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/transportext/biz/mmtp/amnetadapt/AmnetAppEventListener$4;-><init>(Lcom/alipay/mobile/common/transportext/biz/mmtp/amnetadapt/AmnetAppEventListener;)V

    const-string/jumbo v2, "AmnetAppEventListener"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->executeSerially(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public onSeceenOffEvent()V
    .locals 3

    .prologue
    .line 37
    invoke-static {}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->getInstance()Lcom/alipay/mobile/common/task/AsyncTaskExecutor;

    move-result-object v0

    .line 38
    new-instance v1, Lcom/alipay/mobile/common/transportext/biz/mmtp/amnetadapt/AmnetAppEventListener$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/transportext/biz/mmtp/amnetadapt/AmnetAppEventListener$2;-><init>(Lcom/alipay/mobile/common/transportext/biz/mmtp/amnetadapt/AmnetAppEventListener;)V

    const-string/jumbo v2, "AmnetAppEventListener"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->executeSerially(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public onSeceenOnEvent()V
    .locals 3

    .prologue
    .line 27
    invoke-static {}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->getInstance()Lcom/alipay/mobile/common/task/AsyncTaskExecutor;

    move-result-object v0

    .line 28
    new-instance v1, Lcom/alipay/mobile/common/transportext/biz/mmtp/amnetadapt/AmnetAppEventListener$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/transportext/biz/mmtp/amnetadapt/AmnetAppEventListener$1;-><init>(Lcom/alipay/mobile/common/transportext/biz/mmtp/amnetadapt/AmnetAppEventListener;)V

    const-string/jumbo v2, "AmnetAppEventListener"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->executeSerially(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public onSyncInitChanged(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    invoke-static {}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->getInstance()Lcom/alipay/mobile/common/task/AsyncTaskExecutor;

    move-result-object v0

    .line 68
    new-instance v1, Lcom/alipay/mobile/common/transportext/biz/mmtp/amnetadapt/AmnetAppEventListener$5;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/common/transportext/biz/mmtp/amnetadapt/AmnetAppEventListener$5;-><init>(Lcom/alipay/mobile/common/transportext/biz/mmtp/amnetadapt/AmnetAppEventListener;Ljava/util/Map;)V

    const-string/jumbo v2, "AmnetAppEventListener"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->executeSerially(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 73
    return-void
.end method
