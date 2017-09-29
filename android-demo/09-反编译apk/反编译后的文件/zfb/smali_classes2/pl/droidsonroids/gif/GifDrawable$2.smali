.class Lpl/droidsonroids/gif/GifDrawable$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lpl/droidsonroids/gif/GifDrawable;


# direct methods
.method constructor <init>(Lpl/droidsonroids/gif/GifDrawable;)V
    .locals 0

    iput-object p1, p0, Lpl/droidsonroids/gif/GifDrawable$2;->this$0:Lpl/droidsonroids/gif/GifDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable$2;->this$0:Lpl/droidsonroids/gif/GifDrawable;

    invoke-static {v0}, Lpl/droidsonroids/gif/GifDrawable;->access$0(Lpl/droidsonroids/gif/GifDrawable;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable$2;->this$0:Lpl/droidsonroids/gif/GifDrawable;

    invoke-static {v0}, Lpl/droidsonroids/gif/GifDrawable;->access$1(Lpl/droidsonroids/gif/GifDrawable;)Lpl/droidsonroids/gif/GifInfoHandle;

    move-result-object v0

    iget-object v1, p0, Lpl/droidsonroids/gif/GifDrawable$2;->this$0:Lpl/droidsonroids/gif/GifDrawable;

    invoke-static {v1}, Lpl/droidsonroids/gif/GifDrawable;->access$2(Lpl/droidsonroids/gif/GifDrawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/droidsonroids/gif/GifInfoHandle;->renderFrame(Landroid/graphics/Bitmap;)J

    move-result-wide v0

    shr-long v2, v0, v5

    long-to-int v2, v2

    const-wide/16 v3, 0x1

    and-long/2addr v0, v3

    long-to-int v0, v0

    if-ne v0, v5, :cond_2

    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable$2;->this$0:Lpl/droidsonroids/gif/GifDrawable;

    invoke-static {v0}, Lpl/droidsonroids/gif/GifDrawable;->access$3(Lpl/droidsonroids/gif/GifDrawable;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable$2;->this$0:Lpl/droidsonroids/gif/GifDrawable;

    iget-object v1, p0, Lpl/droidsonroids/gif/GifDrawable$2;->this$0:Lpl/droidsonroids/gif/GifDrawable;

    invoke-static {v1}, Lpl/droidsonroids/gif/GifDrawable;->access$4(Lpl/droidsonroids/gif/GifDrawable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v7}, Lpl/droidsonroids/gif/GifDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    :cond_2
    if-ltz v2, :cond_0

    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable$2;->this$0:Lpl/droidsonroids/gif/GifDrawable;

    invoke-static {v0}, Lpl/droidsonroids/gif/GifDrawable;->access$5(Lpl/droidsonroids/gif/GifDrawable;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    int-to-long v1, v2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, v1, v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable$2;->this$0:Lpl/droidsonroids/gif/GifDrawable;

    iget-object v1, p0, Lpl/droidsonroids/gif/GifDrawable$2;->this$0:Lpl/droidsonroids/gif/GifDrawable;

    invoke-static {v1}, Lpl/droidsonroids/gif/GifDrawable;->access$6(Lpl/droidsonroids/gif/GifDrawable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/droidsonroids/gif/GifDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable$2;->this$0:Lpl/droidsonroids/gif/GifDrawable;

    iget-object v1, p0, Lpl/droidsonroids/gif/GifDrawable$2;->this$0:Lpl/droidsonroids/gif/GifDrawable;

    invoke-static {v1}, Lpl/droidsonroids/gif/GifDrawable;->access$6(Lpl/droidsonroids/gif/GifDrawable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v7}, Lpl/droidsonroids/gif/GifDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method
