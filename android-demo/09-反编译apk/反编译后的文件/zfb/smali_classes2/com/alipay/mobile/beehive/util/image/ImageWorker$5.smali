.class Lcom/alipay/mobile/beehive/util/image/ImageWorker$5;
.super Ljava/lang/Object;
.source "ImageWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/beehive/util/image/ImageWorker;

.field private final synthetic val$drawable:Landroid/graphics/drawable/Drawable;

.field private final synthetic val$imageView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/beehive/util/image/ImageWorker;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker$5;->this$0:Lcom/alipay/mobile/beehive/util/image/ImageWorker;

    iput-object p2, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker$5;->val$imageView:Landroid/view/View;

    iput-object p3, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker$5;->val$drawable:Landroid/graphics/drawable/Drawable;

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 269
    iget-object v0, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker$5;->this$0:Lcom/alipay/mobile/beehive/util/image/ImageWorker;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker$5;->val$imageView:Landroid/view/View;

    iget-object v2, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker$5;->val$drawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->access$6(Lcom/alipay/mobile/beehive/util/image/ImageWorker;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 270
    return-void
.end method
