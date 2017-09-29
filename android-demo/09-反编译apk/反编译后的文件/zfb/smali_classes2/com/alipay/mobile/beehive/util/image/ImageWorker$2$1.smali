.class Lcom/alipay/mobile/beehive/util/image/ImageWorker$2$1;
.super Ljava/lang/Object;
.source "ImageWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/beehive/util/image/ImageWorker$2;

.field private final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/beehive/util/image/ImageWorker$2;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker$2$1;->this$1:Lcom/alipay/mobile/beehive/util/image/ImageWorker$2;

    iput-object p2, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker$2$1;->val$path:Ljava/lang/String;

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker$2$1;->this$1:Lcom/alipay/mobile/beehive/util/image/ImageWorker$2;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/util/image/ImageWorker$2;->access$0(Lcom/alipay/mobile/beehive/util/image/ImageWorker$2;)Lcom/alipay/mobile/beehive/util/image/ImageWorker;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->access$4(Lcom/alipay/mobile/beehive/util/image/ImageWorker;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker$2$1;->val$path:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker$2$1;->this$1:Lcom/alipay/mobile/beehive/util/image/ImageWorker$2;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/util/image/ImageWorker$2;->access$0(Lcom/alipay/mobile/beehive/util/image/ImageWorker$2;)Lcom/alipay/mobile/beehive/util/image/ImageWorker;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->access$4(Lcom/alipay/mobile/beehive/util/image/ImageWorker;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker$2$1;->val$path:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    :cond_0
    return-void
.end method
