.class Lcom/alipay/mobile/beehive/util/image/ImageWorker$4;
.super Ljava/lang/Object;
.source "ImageWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/beehive/util/image/ImageWorker;

.field private final synthetic val$imageView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/beehive/util/image/ImageWorker;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker$4;->this$0:Lcom/alipay/mobile/beehive/util/image/ImageWorker;

    iput-object p2, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker$4;->val$imageView:Landroid/view/View;

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 252
    iget-object v0, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker$4;->this$0:Lcom/alipay/mobile/beehive/util/image/ImageWorker;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker$4;->val$imageView:Landroid/view/View;

    iget-object v2, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker$4;->this$0:Lcom/alipay/mobile/beehive/util/image/ImageWorker;

    invoke-static {v2}, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->access$5(Lcom/alipay/mobile/beehive/util/image/ImageWorker;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->access$2(Lcom/alipay/mobile/beehive/util/image/ImageWorker;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 253
    return-void
.end method
