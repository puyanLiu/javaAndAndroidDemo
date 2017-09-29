.class Lcom/alipay/mobile/about/service/UpdateServicesImpl$7$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/about/service/UpdateServicesImpl$7;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/about/service/UpdateServicesImpl$7;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$7$2;->this$1:Lcom/alipay/mobile/about/service/UpdateServicesImpl$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$7$2;->this$1:Lcom/alipay/mobile/about/service/UpdateServicesImpl$7;

    iget-object v0, v0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$7;->updateNotifyHelper:Lcom/alipay/mobile/about/service/UpdateNotifyHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->downloadFailedNotification()V

    return-void
.end method
