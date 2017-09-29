.class Lpl/droidsonroids/gif/GifDrawable$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lpl/droidsonroids/gif/GifDrawable;


# direct methods
.method constructor <init>(Lpl/droidsonroids/gif/GifDrawable;)V
    .locals 0

    iput-object p1, p0, Lpl/droidsonroids/gif/GifDrawable$6;->this$0:Lpl/droidsonroids/gif/GifDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable$6;->this$0:Lpl/droidsonroids/gif/GifDrawable;

    invoke-static {v0}, Lpl/droidsonroids/gif/GifDrawable;->access$1(Lpl/droidsonroids/gif/GifDrawable;)Lpl/droidsonroids/gif/GifInfoHandle;

    move-result-object v0

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->saveRemainder()V

    return-void
.end method
