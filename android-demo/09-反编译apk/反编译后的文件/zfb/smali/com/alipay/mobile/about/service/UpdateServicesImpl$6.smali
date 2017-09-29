.class Lcom/alipay/mobile/about/service/UpdateServicesImpl$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/download/DownloadCallback;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Z

.field private final synthetic c:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field final synthetic this$0:Lcom/alipay/mobile/about/service/UpdateServicesImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/about/service/UpdateServicesImpl;Ljava/lang/String;ZLcom/alipay/mobile/framework/MicroApplicationContext;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$6;->this$0:Lcom/alipay/mobile/about/service/UpdateServicesImpl;

    iput-object p2, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$6;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$6;->b:Z

    iput-object p4, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$6;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$6;->this$0:Lcom/alipay/mobile/about/service/UpdateServicesImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/about/service/UpdateServicesImpl;->access$4(Lcom/alipay/mobile/about/service/UpdateServicesImpl;Z)V

    iget-object v0, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$6;->this$0:Lcom/alipay/mobile/about/service/UpdateServicesImpl;

    iget-boolean v1, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$6;->b:Z

    iget-object v2, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$6;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/about/service/UpdateServicesImpl;->access$7(Lcom/alipay/mobile/about/service/UpdateServicesImpl;ZLcom/alipay/mobile/framework/MicroApplicationContext;)V

    return-void
.end method

.method public onFailed(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$6;->this$0:Lcom/alipay/mobile/about/service/UpdateServicesImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/about/service/UpdateServicesImpl;->access$4(Lcom/alipay/mobile/about/service/UpdateServicesImpl;Z)V

    iget-object v0, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$6;->this$0:Lcom/alipay/mobile/about/service/UpdateServicesImpl;

    iget-object v1, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$6;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-static {v0, v1}, Lcom/alipay/mobile/about/service/UpdateServicesImpl;->access$8(Lcom/alipay/mobile/about/service/UpdateServicesImpl;Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    return-void
.end method

.method public onFinish(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$6;->this$0:Lcom/alipay/mobile/about/service/UpdateServicesImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/about/service/UpdateServicesImpl;->access$4(Lcom/alipay/mobile/about/service/UpdateServicesImpl;Z)V

    iget-object v0, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$6;->this$0:Lcom/alipay/mobile/about/service/UpdateServicesImpl;

    iget-object v1, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$6;->a:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$6;->b:Z

    invoke-static {v0, p2, v1, v2}, Lcom/alipay/mobile/about/service/UpdateServicesImpl;->access$5(Lcom/alipay/mobile/about/service/UpdateServicesImpl;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$6;->this$0:Lcom/alipay/mobile/about/service/UpdateServicesImpl;

    invoke-static {v0, p2}, Lcom/alipay/mobile/about/service/UpdateServicesImpl;->access$6(Lcom/alipay/mobile/about/service/UpdateServicesImpl;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$6;->this$0:Lcom/alipay/mobile/about/service/UpdateServicesImpl;

    iget-boolean v1, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$6;->b:Z

    iget-object v2, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$6;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/about/service/UpdateServicesImpl;->access$7(Lcom/alipay/mobile/about/service/UpdateServicesImpl;ZLcom/alipay/mobile/framework/MicroApplicationContext;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$6;->this$0:Lcom/alipay/mobile/about/service/UpdateServicesImpl;

    iget-object v1, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$6;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-static {v0, v1}, Lcom/alipay/mobile/about/service/UpdateServicesImpl;->access$8(Lcom/alipay/mobile/about/service/UpdateServicesImpl;Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    return-void
.end method

.method public onPrepare(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$6;->this$0:Lcom/alipay/mobile/about/service/UpdateServicesImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/mobile/about/service/UpdateServicesImpl;->access$4(Lcom/alipay/mobile/about/service/UpdateServicesImpl;Z)V

    return-void
.end method

.method public onProgress(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$6;->this$0:Lcom/alipay/mobile/about/service/UpdateServicesImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/mobile/about/service/UpdateServicesImpl;->access$4(Lcom/alipay/mobile/about/service/UpdateServicesImpl;Z)V

    return-void
.end method
