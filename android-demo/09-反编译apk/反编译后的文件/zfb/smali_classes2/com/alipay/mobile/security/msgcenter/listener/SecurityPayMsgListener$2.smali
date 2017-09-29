.class Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;

.field private final synthetic val$params:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener$2;->this$0:Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;

    iput-object p2, p0, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener$2;->val$params:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInstallFailed()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener$2;->this$0:Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->access$0(Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;[Ljava/lang/String;)V

    return-void
.end method

.method public onPayFailed(ILjava/lang/String;)V
    .locals 5

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SecurityPayMsgListener"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[onPayFailed]["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener$2;->this$0:Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener$2;->val$params:Landroid/os/Bundle;

    const-string/jumbo v4, "bizNo"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->access$0(Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;[Ljava/lang/String;)V

    return-void
.end method

.method public onPaySuccess(Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierPaymentResult;)V
    .locals 5

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierPaymentResult;->getResultCode()I

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SecurityPayMsgListener"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[onPayFailed]["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierPaymentResult;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener$2;->this$0:Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener$2;->val$params:Landroid/os/Bundle;

    const-string/jumbo v4, "bizNo"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierPaymentResult;->getResultCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->access$0(Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;[Ljava/lang/String;)V

    return-void
.end method
