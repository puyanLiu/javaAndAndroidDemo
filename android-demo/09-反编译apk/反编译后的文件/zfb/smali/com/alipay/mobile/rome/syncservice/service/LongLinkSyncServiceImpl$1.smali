.class Lcom/alipay/mobile/rome/syncservice/service/LongLinkSyncServiceImpl$1;
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
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncservice/service/LongLinkSyncServiceImpl$1;->this$0:Lcom/alipay/mobile/rome/syncservice/service/LongLinkSyncServiceImpl;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 60
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/service/LongLinkSyncServiceImpl;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/service/LongLinkSyncServiceImpl$1;->this$0:Lcom/alipay/mobile/rome/syncservice/service/LongLinkSyncServiceImpl;

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/AppContextHelper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/service/LongLinkSyncServiceImpl;->access$1(Lcom/alipay/mobile/rome/syncservice/service/LongLinkSyncServiceImpl;Landroid/content/Context;)V

    .line 63
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/SyncSDKLifecycle;->getInstance()Lcom/alipay/mobile/rome/syncsdk/SyncSDKLifecycle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/SyncSDKLifecycle;->onInitialize()V

    .line 65
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->getInstance()Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->init()V

    .line 66
    return-void
.end method
