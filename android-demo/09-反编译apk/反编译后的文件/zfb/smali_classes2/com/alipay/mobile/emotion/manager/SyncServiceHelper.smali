.class public Lcom/alipay/mobile/emotion/manager/SyncServiceHelper;
.super Ljava/lang/Object;
.source "SyncServiceHelper.java"


# instance fields
.field longLinkSyncService:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-class v0, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    invoke-static {v0}, Lcom/alipay/mobile/common/androidannotations/MicroServiceUtil;->getExtServiceByInterface(Ljava/lang/Class;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    iput-object v0, p0, Lcom/alipay/mobile/emotion/manager/SyncServiceHelper;->longLinkSyncService:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    .line 28
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/emotion/manager/SyncServiceHelper;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/manager/SyncServiceHelper;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/alipay/mobile/emotion/manager/SyncServiceHelper;
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/SyncServiceHelper$AdSyncServiceHelperHolder;->access$0()Lcom/alipay/mobile/emotion/manager/SyncServiceHelper;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public register()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/SyncServiceHelper;->longLinkSyncService:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    const-string/jumbo v1, "UCHAT-CRN"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->registerBiz(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public registerSyncCallback(Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;)Z
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/SyncServiceHelper;->longLinkSyncService:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    const-string/jumbo v1, "UCHAT-CRN"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->registerBizCallback(Ljava/lang/String;Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;)V

    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public reportCmdHandled(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/SyncServiceHelper;->longLinkSyncService:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->reportCommandHandled(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public reportCmdReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/SyncServiceHelper;->longLinkSyncService:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->reportCmdReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public reportMsgReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/SyncServiceHelper;->longLinkSyncService:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->reportMsgReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public sendMsg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/SyncServiceHelper;->longLinkSyncService:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->sendSyncMsg(Ljava/lang/String;Ljava/lang/String;)Z

    .line 67
    return-void
.end method

.method public unRegisterSyncCallback()Z
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/SyncServiceHelper;->longLinkSyncService:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    const-string/jumbo v1, "UCHAT-CRN"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->unregisterBizCallback(Ljava/lang/String;)V

    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method public updateBizSyncKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/SyncServiceHelper;->longLinkSyncService:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->updateBizSyncKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method
