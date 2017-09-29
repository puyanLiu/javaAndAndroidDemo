.class Lpl/droidsonroids/gif/GifDrawable$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lpl/droidsonroids/gif/GifDrawable;

.field private final synthetic val$frameIndex:I


# direct methods
.method constructor <init>(Lpl/droidsonroids/gif/GifDrawable;I)V
    .locals 0

    iput-object p1, p0, Lpl/droidsonroids/gif/GifDrawable$8;->this$0:Lpl/droidsonroids/gif/GifDrawable;

    iput p2, p0, Lpl/droidsonroids/gif/GifDrawable$8;->val$frameIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable$8;->this$0:Lpl/droidsonroids/gif/GifDrawable;

    invoke-static {v0}, Lpl/droidsonroids/gif/GifDrawable;->access$1(Lpl/droidsonroids/gif/GifDrawable;)Lpl/droidsonroids/gif/GifInfoHandle;

    move-result-object v0

    iget v1, p0, Lpl/droidsonroids/gif/GifDrawable$8;->val$frameIndex:I

    iget-object v2, p0, Lpl/droidsonroids/gif/GifDrawable$8;->this$0:Lpl/droidsonroids/gif/GifDrawable;

    invoke-static {v2}, Lpl/droidsonroids/gif/GifDrawable;->access$2(Lpl/droidsonroids/gif/GifDrawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lpl/droidsonroids/gif/GifInfoHandle;->seekToFrame(ILandroid/graphics/Bitmap;)V

    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable$8;->this$0:Lpl/droidsonroids/gif/GifDrawable;

    iget-object v1, p0, Lpl/droidsonroids/gif/GifDrawable$8;->this$0:Lpl/droidsonroids/gif/GifDrawable;

    invoke-static {v1}, Lpl/droidsonroids/gif/GifDrawable;->access$6(Lpl/droidsonroids/gif/GifDrawable;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lpl/droidsonroids/gif/GifDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method
