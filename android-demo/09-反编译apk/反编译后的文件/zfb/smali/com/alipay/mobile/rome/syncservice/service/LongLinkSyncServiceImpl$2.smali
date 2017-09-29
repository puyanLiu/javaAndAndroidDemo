.class Lcom/alipay/mobile/rome/syncservice/service/LongLinkSyncServiceImpl$2;
.super Ljava/lang/Object;
.source "LongLinkSyncServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/rome/syncservice/service/LongLinkSyncServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/rome/syncservice/service/LongLinkSyncServiceImpl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncservice/service/LongLinkSyncServiceImpl$2;->this$0:Lcom/alipay/mobile/rome/syncservice/service/LongLinkSyncServiceImpl;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 78
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/service/LongLinkSyncServiceImpl;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/SyncSDKLifecycle;->getInstance()Lcom/alipay/mobile/rome/syncsdk/SyncSDKLifecycle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/SyncSDKLifecycle;->onFinish()V

    .line 82
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->getInstance()Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->finish()V

    .line 83
    return-void
.end method
