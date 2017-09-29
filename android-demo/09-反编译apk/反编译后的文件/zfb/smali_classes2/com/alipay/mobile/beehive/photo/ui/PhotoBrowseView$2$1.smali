.class Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2$1;
.super Ljava/lang/Object;
.source "PhotoBrowseView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2;

.field private final synthetic val$photoPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2$1;->this$1:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2;

    iput-object p2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2$1;->val$photoPath:Ljava/lang/String;

    .line 1408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2$1;)Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2;
    .locals 1

    .prologue
    .line 1408
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2$1;->this$1:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1411
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2$1;->val$photoPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper;->getCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1412
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1428
    :cond_0
    :goto_0
    return-void

    .line 1415
    :cond_1
    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper;->detectQRCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1416
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1419
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2$1;->this$1:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2;

    invoke-static {v1}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2;->access$0(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2;)Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->access$8(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2$1$1;

    invoke-direct {v2, p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2$1$1;-><init>(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2$1;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
