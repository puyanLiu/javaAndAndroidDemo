.class Lcom/alipay/mobile/beehive/photo/data/PhotoResolver$2;
.super Ljava/lang/Object;
.source "PhotoResolver.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field actionCursor:Landroid/database/Cursor;

.field final synthetic this$0:Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;

.field private final synthetic val$imgCursor:Landroid/database/Cursor;

.field private final synthetic val$videoCursor:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;Landroid/database/Cursor;Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver$2;->this$0:Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;

    iput-object p2, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver$2;->val$videoCursor:Landroid/database/Cursor;

    iput-object p3, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver$2;->val$imgCursor:Landroid/database/Cursor;

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/beehive/photo/data/PhotoResolver$2;)Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver$2;->this$0:Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 301
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver$2;->this$0:Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver$2;->val$videoCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver$2;->val$imgCursor:Landroid/database/Cursor;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->access$4(Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;Landroid/database/Cursor;Landroid/database/Cursor;Z)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver$2;->actionCursor:Landroid/database/Cursor;

    .line 302
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver$2;->this$0:Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver$2;->actionCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver$2;->val$videoCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver$2;->val$imgCursor:Landroid/database/Cursor;

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->access$5(Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;)Z

    move-result v0

    .line 300
    if-nez v0, :cond_0

    .line 303
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "wtfvideo"

    .line 304
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "videoCount ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver$2;->this$0:Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;

    invoke-static {v3}, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->access$6(Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " , photoCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver$2;->this$0:Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;

    invoke-static {v3}, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;->access$7(Lcom/alipay/mobile/beehive/photo/data/PhotoResolver;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 303
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver$2;->val$videoCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 306
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver$2;->val$imgCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 307
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 308
    new-instance v1, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver$2$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/beehive/photo/data/PhotoResolver$2$1;-><init>(Lcom/alipay/mobile/beehive/photo/data/PhotoResolver$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 318
    return-void
.end method
