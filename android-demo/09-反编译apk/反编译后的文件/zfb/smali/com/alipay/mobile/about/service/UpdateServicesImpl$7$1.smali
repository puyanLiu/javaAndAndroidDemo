.class Lcom/alipay/mobile/about/service/UpdateServicesImpl$7$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Z

.field final synthetic this$1:Lcom/alipay/mobile/about/service/UpdateServicesImpl$7;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/about/service/UpdateServicesImpl$7;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$7$1;->this$1:Lcom/alipay/mobile/about/service/UpdateServicesImpl$7;

    iput-object p2, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$7$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$7$1;->b:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$7$1;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$7$1;->this$1:Lcom/alipay/mobile/about/service/UpdateServicesImpl$7;

    iget-object v0, v0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$7;->updateNotifyHelper:Lcom/alipay/mobile/about/service/UpdateNotifyHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->downloadFinishNotification()V

    iget-object v0, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$7$1;->this$1:Lcom/alipay/mobile/about/service/UpdateServicesImpl$7;

    invoke-static {v0}, Lcom/alipay/mobile/about/service/UpdateServicesImpl$7;->access$0(Lcom/alipay/mobile/about/service/UpdateServicesImpl$7;)Lcom/alipay/mobile/about/service/UpdateServicesImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$7$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$7$1;->b:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$7$1;->c:Z

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/about/service/UpdateServicesImpl;->access$5(Lcom/alipay/mobile/about/service/UpdateServicesImpl;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$7$1;->this$1:Lcom/alipay/mobile/about/service/UpdateServicesImpl$7;

    invoke-static {v0}, Lcom/alipay/mobile/about/service/UpdateServicesImpl$7;->access$0(Lcom/alipay/mobile/about/service/UpdateServicesImpl$7;)Lcom/alipay/mobile/about/service/UpdateServicesImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$7$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/about/service/UpdateServicesImpl;->access$6(Lcom/alipay/mobile/about/service/UpdateServicesImpl;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$7$1;->this$1:Lcom/alipay/mobile/about/service/UpdateServicesImpl$7;

    invoke-static {v0}, Lcom/alipay/mobile/about/service/UpdateServicesImpl$7;->access$0(Lcom/alipay/mobile/about/service/UpdateServicesImpl$7;)Lcom/alipay/mobile/about/service/UpdateServicesImpl;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$7$1;->c:Z

    iget-object v2, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$7$1;->this$1:Lcom/alipay/mobile/about/service/UpdateServicesImpl$7;

    iget-object v2, v2, Lcom/alipay/mobile/about/service/UpdateServicesImpl$7;->context:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/about/service/UpdateServicesImpl;->access$7(Lcom/alipay/mobile/about/service/UpdateServicesImpl;ZLcom/alipay/mobile/framework/MicroApplicationContext;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$7$1;->this$1:Lcom/alipay/mobile/about/service/UpdateServicesImpl$7;

    invoke-static {v0}, Lcom/alipay/mobile/about/service/UpdateServicesImpl$7;->access$0(Lcom/alipay/mobile/about/service/UpdateServicesImpl$7;)Lcom/alipay/mobile/about/service/UpdateServicesImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$7$1;->this$1:Lcom/alipay/mobile/about/service/UpdateServicesImpl$7;

    iget-object v1, v1, Lcom/alipay/mobile/about/service/UpdateServicesImpl$7;->context:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-static {v0, v1}, Lcom/alipay/mobile/about/service/UpdateServicesImpl;->access$8(Lcom/alipay/mobile/about/service/UpdateServicesImpl;Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    return-void
.end method
