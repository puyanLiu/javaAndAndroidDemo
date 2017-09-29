.class Lcom/alipay/mobile/beehive/photo/data/PhotoResolver$1;
.super Ljava/lang/Object;
.source "PhotoResolver.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;

.field private final synthetic val$cursor:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver$1;->this$0:Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;

    iput-object p2, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver$1;->val$cursor:Landroid/database/Cursor;

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/beehive/photo/data/PhotoResolver$1;)Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver$1;->this$0:Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 274
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver$1;->this$0:Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver$1;->val$cursor:Landroid/database/Cursor;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->access$0(Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;Landroid/database/Cursor;Z)Z

    .line 275
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver$1;->val$cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v0

    .line 273
    if-nez v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver$1;->val$cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 277
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 278
    new-instance v1, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver$1$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver$1$1;-><init>(Lcom/alipay/mobile/beehive/photo/data/PhotoResolver$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 289
    return-void
.end method
