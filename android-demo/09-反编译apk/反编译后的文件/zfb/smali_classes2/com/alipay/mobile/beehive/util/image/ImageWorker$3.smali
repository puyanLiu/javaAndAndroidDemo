.class Lcom/alipay/mobile/beehive/util/image/ImageWorker$3;
.super Ljava/lang/Object;
.source "ImageWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/beehive/util/image/ImageWorker;

.field private final synthetic val$callback:Lcom/alipay/mobile/beehive/util/image/ImageWorkerCallback;

.field private final synthetic val$drawable:Landroid/graphics/drawable/BitmapDrawable;

.field private final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/beehive/util/image/ImageWorker;Lcom/alipay/mobile/beehive/util/image/ImageWorkerCallback;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker$3;->this$0:Lcom/alipay/mobile/beehive/util/image/ImageWorker;

    iput-object p2, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker$3;->val$callback:Lcom/alipay/mobile/beehive/util/image/ImageWorkerCallback;

    iput-object p3, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker$3;->val$path:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker$3;->val$drawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 234
    iget-object v0, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker$3;->val$callback:Lcom/alipay/mobile/beehive/util/image/ImageWorkerCallback;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker$3;->val$path:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker$3;->val$drawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/beehive/util/image/ImageWorkerCallback;->onSuccess(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V

    .line 235
    return-void
.end method
