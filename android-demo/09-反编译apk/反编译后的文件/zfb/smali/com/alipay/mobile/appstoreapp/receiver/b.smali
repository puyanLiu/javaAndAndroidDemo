.class final Lcom/alipay/mobile/appstoreapp/receiver/b;
.super Ljava/lang/Object;
.source "ClientStartRunnable.java"

# interfaces
.implements Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/appstoreapp/receiver/ClientStartRunnable;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/appstoreapp/receiver/ClientStartRunnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/appstoreapp/receiver/b;->a:Lcom/alipay/mobile/appstoreapp/receiver/ClientStartRunnable;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceiveCommand(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;)V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public final onReceiveMessage(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V
    .locals 4

    .prologue
    .line 107
    if-nez p1, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    const-string/jumbo v0, "ClientStartRunnable"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "syncMessage onReceiveMessage"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->biz:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/receiver/b;->a:Lcom/alipay/mobile/appstoreapp/receiver/ClientStartRunnable;

    invoke-static {p1}, Lcom/alipay/mobile/appstoreapp/receiver/ClientStartRunnable;->a(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/receiver/b;->a:Lcom/alipay/mobile/appstoreapp/receiver/ClientStartRunnable;

    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/receiver/ClientStartRunnable;->a(Lcom/alipay/mobile/appstoreapp/receiver/ClientStartRunnable;)Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    move-result-object v0

    .line 114
    iget-object v1, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->userId:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->biz:Ljava/lang/String;

    .line 115
    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->id:Ljava/lang/String;

    .line 114
    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->reportMsgReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
