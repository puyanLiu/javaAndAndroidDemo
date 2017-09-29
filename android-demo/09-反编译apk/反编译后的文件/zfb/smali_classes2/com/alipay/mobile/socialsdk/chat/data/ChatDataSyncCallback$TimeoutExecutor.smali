.class public Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback$TimeoutExecutor;
.super Ljava/lang/Object;
.source "ChatDataSyncCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback$TimeoutExecutor;->a:Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 99
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback$TimeoutExecutor;->a:Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback;->a(Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback;)Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "\u63a5\u6536\u4e2d\u8d85\u65f6,\u6539\u56de\u7a7a\u95f2\u72b6\u6001"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback$TimeoutExecutor;->a:Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback;->b(Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback;)V

    .line 101
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback$TimeoutExecutor;->a:Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback$TimeoutExecutor;->a:Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback;->c(Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback;)Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->querySyncState()Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback;->onSyncState(Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;)V

    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback$TimeoutExecutor;->a:Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback;->d(Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback;)Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    move-result-object v0

    const-string/jumbo v1, "chatsyncstate"

    const-string/jumbo v2, "timeout"

    const/4 v5, 0x1

    move-object v4, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->notifyChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 103
    return-void
.end method
