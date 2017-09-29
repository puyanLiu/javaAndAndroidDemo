.class Lcom/alipay/mobile/beehive/util/image/ImageWorker$2;
.super Ljava/lang/Object;
.source "ImageWorker.java"

# interfaces
.implements Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APDisplayer;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/beehive/util/image/ImageWorker;

.field private final synthetic val$callback:Lcom/alipay/mobile/beehive/util/image/ImageWorkerCallback;

.field private final synthetic val$imageView:Landroid/view/View;

.field private final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/beehive/util/image/ImageWorker;Lcom/alipay/mobile/beehive/util/image/ImageWorkerCallback;Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker$2;->this$0:Lcom/alipay/mobile/beehive/util/image/ImageWorker;

    iput-object p2, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker$2;->val$callback:Lcom/alipay/mobile/beehive/util/image/ImageWorkerCallback;

    iput-object p3, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker$2;->val$imageView:Landroid/view/View;

    iput-object p4, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker$2;->val$path:Ljava/lang/String;

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/beehive/util/image/ImageWorker$2;)Lcom/alipay/mobile/beehive/util/image/ImageWorker;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker$2;->this$0:Lcom/alipay/mobile/beehive/util/image/ImageWorker;

    return-object v0
.end method


# virtual methods
.method public display(Landroid/view/View;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 212
    iget-object v1, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker$2;->this$0:Lcom/alipay/mobile/beehive/util/image/ImageWorker;

    move-object v0, p2

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker$2;->val$callback:Lcom/alipay/mobile/beehive/util/image/ImageWorkerCallback;

    invoke-static {v1, p3, v0, v2}, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->access$1(Lcom/alipay/mobile/beehive/util/image/ImageWorker;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;Lcom/alipay/mobile/beehive/util/image/ImageWorkerCallback;)V

    .line 213
    iget-object v0, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker$2;->val$imageView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker$2;->val$path:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker$2;->val$imageView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker$2;->this$0:Lcom/alipay/mobile/beehive/util/image/ImageWorker;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker$2;->val$imageView:Landroid/view/View;

    invoke-static {v0, v1, p2}, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->access$2(Lcom/alipay/mobile/beehive/util/image/ImageWorker;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 216
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->access$3()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/beehive/util/image/ImageWorker$2$1;

    iget-object v2, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker$2;->val$path:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/alipay/mobile/beehive/util/image/ImageWorker$2$1;-><init>(Lcom/alipay/mobile/beehive/util/image/ImageWorker$2;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 223
    return-void
.end method
