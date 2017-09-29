.class Lpl/droidsonroids/gif/GifDrawable$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lpl/droidsonroids/gif/GifDrawable;


# direct methods
.method constructor <init>(Lpl/droidsonroids/gif/GifDrawable;)V
    .locals 0

    iput-object p1, p0, Lpl/droidsonroids/gif/GifDrawable$4;->this$0:Lpl/droidsonroids/gif/GifDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable$4;->this$0:Lpl/droidsonroids/gif/GifDrawable;

    invoke-static {v0}, Lpl/droidsonroids/gif/GifDrawable;->access$1(Lpl/droidsonroids/gif/GifDrawable;)Lpl/droidsonroids/gif/GifInfoHandle;

    move-result-object v0

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->restoreRemainder()V

    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable$4;->this$0:Lpl/droidsonroids/gif/GifDrawable;

    invoke-static {v0}, Lpl/droidsonroids/gif/GifDrawable;->access$5(Lpl/droidsonroids/gif/GifDrawable;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iget-object v1, p0, Lpl/droidsonroids/gif/GifDrawable$4;->this$0:Lpl/droidsonroids/gif/GifDrawable;

    invoke-static {v1}, Lpl/droidsonroids/gif/GifDrawable;->access$7(Lpl/droidsonroids/gif/GifDrawable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
