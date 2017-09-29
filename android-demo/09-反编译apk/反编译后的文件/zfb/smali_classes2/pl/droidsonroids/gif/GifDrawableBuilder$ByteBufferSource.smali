.class Lpl/droidsonroids/gif/GifDrawableBuilder$ByteBufferSource;
.super Ljava/lang/Object;

# interfaces
.implements Lpl/droidsonroids/gif/GifDrawableBuilder$Source;


# instance fields
.field private final byteBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpl/droidsonroids/gif/GifDrawableBuilder$ByteBufferSource;->byteBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/ByteBuffer;Lpl/droidsonroids/gif/GifDrawableBuilder$ByteBufferSource;)V
    .locals 0

    invoke-direct {p0, p1}, Lpl/droidsonroids/gif/GifDrawableBuilder$ByteBufferSource;-><init>(Ljava/nio/ByteBuffer;)V

    return-void
.end method


# virtual methods
.method public build(Lpl/droidsonroids/gif/GifDrawable;)Lpl/droidsonroids/gif/GifDrawable;
    .locals 4

    new-instance v0, Lpl/droidsonroids/gif/GifDrawable;

    iget-object v1, p0, Lpl/droidsonroids/gif/GifDrawableBuilder$ByteBufferSource;->byteBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lpl/droidsonroids/gif/GifInfoHandle;->openDirectByteBuffer(Ljava/nio/ByteBuffer;Z)Lpl/droidsonroids/gif/GifInfoHandle;

    move-result-object v1

    iget-object v2, p0, Lpl/droidsonroids/gif/GifDrawableBuilder$ByteBufferSource;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {v0, v1, v2, v3, p1}, Lpl/droidsonroids/gif/GifDrawable;-><init>(Lpl/droidsonroids/gif/GifInfoHandle;JLpl/droidsonroids/gif/GifDrawable;)V

    return-object v0
.end method
