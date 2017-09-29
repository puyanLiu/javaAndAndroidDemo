.class Lcom/alipay/mobile/beehive/photo/data/PhotoResolver$1$1;
.super Ljava/lang/Object;
.source "PhotoResolver.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/beehive/photo/data/PhotoResolver$1;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/beehive/photo/data/PhotoResolver$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver$1$1;->this$1:Lcom/alipay/mobile/beehive/photo/data/PhotoResolver$1;

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver$1$1;->this$1:Lcom/alipay/mobile/beehive/photo/data/PhotoResolver$1;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver$1;->access$0(Lcom/alipay/mobile/beehive/photo/data/PhotoResolver$1;)Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->access$1(Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;)V

    .line 282
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver$1$1;->this$1:Lcom/alipay/mobile/beehive/photo/data/PhotoResolver$1;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver$1;->access$0(Lcom/alipay/mobile/beehive/photo/data/PhotoResolver$1;)Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->access$2(Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;)V

    .line 283
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver$1$1;->this$1:Lcom/alipay/mobile/beehive/photo/data/PhotoResolver$1;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver$1;->access$0(Lcom/alipay/mobile/beehive/photo/data/PhotoResolver$1;)Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->access$3(Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;)Lcom/alipay/mobile/beehive/photo/data/PhotoResolver$BucketUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver$1$1;->this$1:Lcom/alipay/mobile/beehive/photo/data/PhotoResolver$1;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver$1;->access$0(Lcom/alipay/mobile/beehive/photo/data/PhotoResolver$1;)Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->access$3(Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;)Lcom/alipay/mobile/beehive/photo/data/PhotoResolver$BucketUpdateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver$BucketUpdateListener;->onBucketUpdate()V

    .line 286
    :cond_0
    return-void
.end method
