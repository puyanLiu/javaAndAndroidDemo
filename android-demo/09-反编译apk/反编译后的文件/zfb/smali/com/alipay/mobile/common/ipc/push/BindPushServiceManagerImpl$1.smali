.class Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl$1;
.super Ljava/lang/Object;
.source "BindPushServiceManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl$1;->this$0:Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl$1;->this$0:Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;

    invoke-static {v0}, Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;->access$000(Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 94
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl$1;->this$0:Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;

    invoke-static {v0}, Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;->access$000(Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/ipc/api/push/BindEventListener;

    invoke-interface {v0}, Lcom/alipay/mobile/common/ipc/api/push/BindEventListener;->unBinde()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    const-string/jumbo v3, "IPC_BindPushServiceManager"

    invoke-static {v3, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 101
    :cond_0
    return-void
.end method
