.class Lcom/alipay/android/widget/security/msgreceiver/DeviceLockMsgReceiverNew$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/widget/security/msgreceiver/DeviceLockMsgReceiverNew;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/msgreceiver/DeviceLockMsgReceiverNew;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/msgreceiver/DeviceLockMsgReceiverNew$1;->this$0:Lcom/alipay/android/widget/security/msgreceiver/DeviceLockMsgReceiverNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "DeviceLockMsgReceiverNew"

    const-string/jumbo v2, "\u5f00\u59cb\u5f39\u51fa\u8bbe\u5907\u9501\u63d0\u793a\u6846"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "messageToShow"

    iget-object v2, p0, Lcom/alipay/android/widget/security/msgreceiver/DeviceLockMsgReceiverNew$1;->this$0:Lcom/alipay/android/widget/security/msgreceiver/DeviceLockMsgReceiverNew;

    invoke-static {v2}, Lcom/alipay/android/widget/security/msgreceiver/DeviceLockMsgReceiverNew;->access$0(Lcom/alipay/android/widget/security/msgreceiver/DeviceLockMsgReceiverNew;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "syncDate"

    iget-object v2, p0, Lcom/alipay/android/widget/security/msgreceiver/DeviceLockMsgReceiverNew$1;->this$0:Lcom/alipay/android/widget/security/msgreceiver/DeviceLockMsgReceiverNew;

    invoke-static {v2}, Lcom/alipay/android/widget/security/msgreceiver/DeviceLockMsgReceiverNew;->access$1(Lcom/alipay/android/widget/security/msgreceiver/DeviceLockMsgReceiverNew;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const/4 v2, 0x0

    const-string/jumbo v3, "20000257"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
