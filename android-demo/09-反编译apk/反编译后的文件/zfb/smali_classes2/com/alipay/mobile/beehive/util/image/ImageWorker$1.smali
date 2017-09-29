.class Lcom/alipay/mobile/beehive/util/image/ImageWorker$1;
.super Ljava/lang/Object;
.source "ImageWorker.java"

# interfaces
.implements Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownLoadCallback;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/beehive/util/image/ImageWorker;

.field private final synthetic val$callback:Lcom/alipay/mobile/beehive/util/image/ImageWorkerCallback;

.field private final synthetic val$imageView:Landroid/view/View;

.field private final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/beehive/util/image/ImageWorker;Landroid/view/View;Lcom/alipay/mobile/beehive/util/image/ImageWorkerCallback;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker$1;->this$0:Lcom/alipay/mobile/beehive/util/image/ImageWorker;

    iput-object p2, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker$1;->val$imageView:Landroid/view/View;

    iput-object p3, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker$1;->val$callback:Lcom/alipay/mobile/beehive/util/image/ImageWorkerCallback;

    iput-object p4, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker$1;->val$path:Ljava/lang/String;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageDownloadRsp;Ljava/lang/Exception;)V
    .locals 4

    .prologue
    .line 170
    iget-object v0, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker$1;->this$0:Lcom/alipay/mobile/beehive/util/image/ImageWorker;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker$1;->val$imageView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->access$0(Lcom/alipay/mobile/beehive/util/image/ImageWorker;Landroid/view/View;)V

    .line 171
    iget-object v1, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker$1;->val$callback:Lcom/alipay/mobile/beehive/util/image/ImageWorkerCallback;

    iget-object v2, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker$1;->val$path:Ljava/lang/String;

    const/16 v3, 0x194

    .line 172
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    .line 171
    :goto_0
    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/beehive/util/image/ImageWorkerCallback;->onFailure(Ljava/lang/String;ILjava/lang/String;)V

    .line 173
    return-void

    .line 172
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public onProcess(Ljava/lang/String;I)V
    .locals 5

    .prologue
    .line 177
    iget-object v0, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker$1;->val$callback:Lcom/alipay/mobile/beehive/util/image/ImageWorkerCallback;

    int-to-double v1, p2

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double/2addr v1, v3

    invoke-interface {v0, p1, v1, v2}, Lcom/alipay/mobile/beehive/util/image/ImageWorkerCallback;->onProgress(Ljava/lang/String;D)V

    .line 178
    return-void
.end method

.method public onSucc(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageDownloadRsp;)V
    .locals 0

    .prologue
    .line 182
    return-void
.end method
