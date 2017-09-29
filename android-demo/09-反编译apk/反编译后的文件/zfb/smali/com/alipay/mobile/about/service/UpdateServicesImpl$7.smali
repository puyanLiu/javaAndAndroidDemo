.class Lcom/alipay/mobile/about/service/UpdateServicesImpl$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/common/patch/PatchCallBack;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Z

.field context:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field patchProgress:I

.field final synthetic this$0:Lcom/alipay/mobile/about/service/UpdateServicesImpl;

.field updateNotifyHelper:Lcom/alipay/mobile/about/service/UpdateNotifyHelper;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/about/service/UpdateServicesImpl;Ljava/lang/String;Z)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$7;->this$0:Lcom/alipay/mobile/about/service/UpdateServicesImpl;

    iput-object p2, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$7;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$7;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;

    invoke-direct {v0}, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$7;->updateNotifyHelper:Lcom/alipay/mobile/about/service/UpdateNotifyHelper;

    invoke-virtual {p1}, Lcom/alipay/mobile/about/service/UpdateServicesImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$7;->context:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$7;->patchProgress:I

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/about/service/UpdateServicesImpl$7;)Lcom/alipay/mobile/about/service/UpdateServicesImpl;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$7;->this$0:Lcom/alipay/mobile/about/service/UpdateServicesImpl;

    return-object v0
.end method


# virtual methods
.method public onDownloadNewFileProgressUpdate(D)V
    .locals 4

    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$7;->this$0:Lcom/alipay/mobile/about/service/UpdateServicesImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/mobile/about/service/UpdateServicesImpl;->access$4(Lcom/alipay/mobile/about/service/UpdateServicesImpl;Z)V

    iget v0, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$7;->patchProgress:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$7;->patchProgress:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$7;->patchProgress:I

    :cond_1
    iget v0, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$7;->patchProgress:I

    int-to-double v0, v0

    iget v2, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$7;->patchProgress:I

    rsub-int/lit8 v2, v2, 0x64

    int-to-double v2, v2

    mul-double/2addr v2, p1

    add-double/2addr v0, v2

    double-to-int v0, v0

    iget-object v1, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$7;->updateNotifyHelper:Lcom/alipay/mobile/about/service/UpdateNotifyHelper;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->updateNotificationProcess(I)V

    :cond_2
    return-void
.end method

.method public onDownloadPatchProgressUpdate(D)V
    .locals 2

    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$7;->this$0:Lcom/alipay/mobile/about/service/UpdateServicesImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/mobile/about/service/UpdateServicesImpl;->access$4(Lcom/alipay/mobile/about/service/UpdateServicesImpl;Z)V

    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    mul-double/2addr v0, p1

    double-to-int v0, v0

    iput v0, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$7;->patchProgress:I

    iget-object v0, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$7;->updateNotifyHelper:Lcom/alipay/mobile/about/service/UpdateNotifyHelper;

    iget v1, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$7;->patchProgress:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->updateNotificationProcess(I)V

    :cond_0
    return-void
.end method

.method public onFail(I)V
    .locals 4

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "UPDATE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "patch onFail = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$7;->this$0:Lcom/alipay/mobile/about/service/UpdateServicesImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/about/service/UpdateServicesImpl;->access$4(Lcom/alipay/mobile/about/service/UpdateServicesImpl;Z)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/alipay/mobile/about/service/UpdateServicesImpl$7$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/about/service/UpdateServicesImpl$7$2;-><init>(Lcom/alipay/mobile/about/service/UpdateServicesImpl$7;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "UPDATE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "patch onSuccess = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$7;->this$0:Lcom/alipay/mobile/about/service/UpdateServicesImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/about/service/UpdateServicesImpl;->access$4(Lcom/alipay/mobile/about/service/UpdateServicesImpl;Z)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/alipay/mobile/about/service/UpdateServicesImpl$7$1;

    iget-object v2, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$7;->a:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$7;->b:Z

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/alipay/mobile/about/service/UpdateServicesImpl$7$1;-><init>(Lcom/alipay/mobile/about/service/UpdateServicesImpl$7;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
