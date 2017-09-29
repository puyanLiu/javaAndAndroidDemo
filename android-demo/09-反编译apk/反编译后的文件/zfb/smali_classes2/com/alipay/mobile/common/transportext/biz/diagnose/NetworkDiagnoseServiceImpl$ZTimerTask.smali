.class Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl$ZTimerTask;
.super Ljava/lang/Object;
.source "NetworkDiagnoseServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl$ZTimerTask;->this$0:Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/16 v4, 0x5f

    const/16 v3, 0x28

    const/4 v2, 0x5

    .line 198
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportEnv;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    .line 199
    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl$ZTimerTask;->this$0:Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->access$002(Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;I)I

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl$ZTimerTask;->this$0:Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->access$000(Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl$ZTimerTask;->this$0:Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->access$100(Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;)I

    move-result v0

    if-ge v0, v3, :cond_2

    .line 205
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl$ZTimerTask;->this$0:Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->access$108(Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;)I

    .line 206
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl$ZTimerTask;->this$0:Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->notifyUpdateProgress()V

    .line 208
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl$ZTimerTask;->this$0:Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->access$100(Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;)I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 209
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl$ZTimerTask;->this$0:Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->setProgressToStartTraceRouting()Z

    .line 227
    :cond_1
    :goto_0
    return-void

    .line 211
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl$ZTimerTask;->this$0:Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->access$000(Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl$ZTimerTask;->this$0:Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->access$100(Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;)I

    move-result v0

    if-ge v0, v4, :cond_3

    .line 213
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl$ZTimerTask;->this$0:Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->access$108(Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;)I

    .line 214
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl$ZTimerTask;->this$0:Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->notifyUpdateProgress()V

    .line 216
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl$ZTimerTask;->this$0:Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->access$100(Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;)I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 217
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl$ZTimerTask;->this$0:Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->setProgressToFail()Z

    goto :goto_0

    .line 219
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl$ZTimerTask;->this$0:Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->access$000(Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;)I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 220
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl$ZTimerTask;->this$0:Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->access$102(Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;I)I

    .line 221
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl$ZTimerTask;->this$0:Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->notifyUpdateProgress()V

    .line 222
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl$ZTimerTask;->this$0:Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->cancel()V

    goto :goto_0

    .line 223
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl$ZTimerTask;->this$0:Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->access$000(Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 224
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl$ZTimerTask;->this$0:Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->access$108(Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;)I

    .line 225
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl$ZTimerTask;->this$0:Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->notifyUpdateProgress()V

    goto :goto_0
.end method
