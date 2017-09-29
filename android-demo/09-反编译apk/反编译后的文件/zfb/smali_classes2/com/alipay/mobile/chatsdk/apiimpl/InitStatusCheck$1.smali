.class Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck$1;
.super Ljava/lang/Object;
.source "InitStatusCheck.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck;

.field private final synthetic val$oldSynced:Z

.field private final synthetic val$reInitSummary:Z


# direct methods
.method constructor <init>(Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck;ZZ)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck$1;->this$0:Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck;

    iput-boolean p2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck$1;->val$oldSynced:Z

    iput-boolean p3, p0, Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck$1;->val$reInitSummary:Z

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 55
    :try_start_0
    new-instance v0, Lcom/alipay/mobile/chatsdk/apiimpl/OldMsgProcessor;

    invoke-direct {v0}, Lcom/alipay/mobile/chatsdk/apiimpl/OldMsgProcessor;-><init>()V

    .line 56
    iget-boolean v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck$1;->val$oldSynced:Z

    if-nez v1, :cond_0

    .line 57
    invoke-virtual {v0}, Lcom/alipay/mobile/chatsdk/apiimpl/OldMsgProcessor;->importOldMessageToChat()Z

    .line 58
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/utils/CacheSet;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/utils/CacheSet;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck;->OLD_MSG_PROCESSED_FLAG:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/common/utils/CacheSet;->putBoolean(Ljava/lang/String;Z)V

    .line 60
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/chatsdk/apiimpl/OldMsgProcessor;->initSummaryFromOld()V

    .line 61
    iget-boolean v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck$1;->val$reInitSummary:Z

    if-nez v0, :cond_1

    .line 62
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/CacheSet;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/utils/CacheSet;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck;->RE_INIT_SUMMARY_FLAG:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/utils/CacheSet;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :cond_1
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck;->access$0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "oldMsgProcessor"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
