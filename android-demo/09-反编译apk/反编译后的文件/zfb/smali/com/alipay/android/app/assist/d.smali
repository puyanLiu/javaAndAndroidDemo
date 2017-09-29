.class final Lcom/alipay/android/app/assist/d;
.super Ljava/lang/Object;
.source "MspAssistUtil.java"

# interfaces
.implements Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 885
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final onReceiveCommand(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;)V
    .locals 4

    .prologue
    .line 901
    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->F()Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    move-result-object v0

    iget-object v1, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->userId:Ljava/lang/String;

    const-string/jumbo v2, "CASHIER-GSW"

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->reportCmdReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->F()Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    move-result-object v0

    iget-object v1, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->userId:Ljava/lang/String;

    const-string/jumbo v2, "CASHIER-GSW"

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->reportCommandHandled(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    return-void
.end method

.method public final onReceiveMessage(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V
    .locals 4

    .prologue
    .line 888
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    .line 889
    if-nez p1, :cond_0

    .line 896
    :goto_0
    return-void

    .line 892
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->msgData:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->E()Z

    .line 893
    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->F()Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    move-result-object v0

    .line 894
    iget-object v1, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->userId:Ljava/lang/String;

    const-string/jumbo v2, "CASHIER-GSW"

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->reportMsgReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
