.class Lcom/alipay/android/widget/security/msgreceiver/DeviceLockMsgReceiverNew$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/widget/security/msgreceiver/DeviceLockMsgReceiverNew;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/msgreceiver/DeviceLockMsgReceiverNew;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/msgreceiver/DeviceLockMsgReceiverNew$2;->this$0:Lcom/alipay/android/widget/security/msgreceiver/DeviceLockMsgReceiverNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    iget-object v1, p0, Lcom/alipay/android/widget/security/msgreceiver/DeviceLockMsgReceiverNew$2;->this$0:Lcom/alipay/android/widget/security/msgreceiver/DeviceLockMsgReceiverNew;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/android/widget/security/msgreceiver/DeviceLockMsgReceiverNew;->access$2(Lcom/alipay/android/widget/security/msgreceiver/DeviceLockMsgReceiverNew;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/msgreceiver/DeviceLockMsgReceiverNew$2;->this$0:Lcom/alipay/android/widget/security/msgreceiver/DeviceLockMsgReceiverNew;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/msgreceiver/DeviceLockMsgReceiverNew;->sendForceLogoutBroadcast()V

    iget-object v0, p0, Lcom/alipay/android/widget/security/msgreceiver/DeviceLockMsgReceiverNew$2;->this$0:Lcom/alipay/android/widget/security/msgreceiver/DeviceLockMsgReceiverNew;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/msgreceiver/DeviceLockMsgReceiverNew;->logout()V

    return-void
.end method
