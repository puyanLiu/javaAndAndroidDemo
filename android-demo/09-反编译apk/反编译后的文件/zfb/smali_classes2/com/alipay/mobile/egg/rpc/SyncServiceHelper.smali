.class public Lcom/alipay/mobile/egg/rpc/SyncServiceHelper;
.super Ljava/lang/Object;
.source "SyncServiceHelper.java"


# static fields
.field private static final BIZ_TYPE:Ljava/lang/String; = "UCHAT-EGG"


# instance fields
.field longLinkSyncService:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 29
    const-class v1, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    .line 28
    iput-object v0, p0, Lcom/alipay/mobile/egg/rpc/SyncServiceHelper;->longLinkSyncService:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    .line 30
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/egg/rpc/SyncServiceHelper;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/alipay/mobile/egg/rpc/SyncServiceHelper;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/alipay/mobile/egg/rpc/SyncServiceHelper;
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lcom/alipay/mobile/egg/rpc/SyncServiceHelper$AdSyncServiceHelperHolder;->access$0()Lcom/alipay/mobile/egg/rpc/SyncServiceHelper;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public register()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alipay/mobile/egg/rpc/SyncServiceHelper;->longLinkSyncService:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    const-string/jumbo v1, "UCHAT-EGG"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->registerBiz(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public registerSyncCallback(Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;)Z
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/egg/rpc/SyncServiceHelper;->longLinkSyncService:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    const-string/jumbo v1, "UCHAT-EGG"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->registerBizCallback(Ljava/lang/String;Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;)V

    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method public reportCmdHandled(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/egg/rpc/SyncServiceHelper;->longLinkSyncService:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->reportCommandHandled(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public reportCmdReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/egg/rpc/SyncServiceHelper;->longLinkSyncService:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->reportCmdReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public reportMsgReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/egg/rpc/SyncServiceHelper;->longLinkSyncService:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->reportMsgReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public sendMsg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/egg/rpc/SyncServiceHelper;->longLinkSyncService:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->sendSyncMsg(Ljava/lang/String;Ljava/lang/String;)Z

    .line 67
    return-void
.end method

.method public unRegisterSyncCallback()Z
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/egg/rpc/SyncServiceHelper;->longLinkSyncService:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    const-string/jumbo v1, "UCHAT-EGG"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->unregisterBizCallback(Ljava/lang/String;)V

    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public updateBizSyncKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/egg/rpc/SyncServiceHelper;->longLinkSyncService:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->updateBizSyncKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method
