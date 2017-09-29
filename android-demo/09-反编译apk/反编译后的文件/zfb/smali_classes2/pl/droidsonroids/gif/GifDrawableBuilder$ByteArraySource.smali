.class Lpl/droidsonroids/gif/GifDrawableBuilder$ByteArraySource;
.super Ljava/lang/Object;

# interfaces
.implements Lpl/droidsonroids/gif/GifDrawableBuilder$Source;


# instance fields
.field private final bytes:[B


# direct methods
.method private constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpl/droidsonroids/gif/GifDrawableBuilder$ByteArraySource;->bytes:[B

    return-void
.end method

.method synthetic constructor <init>([BLpl/droidsonroids/gif/GifDrawableBuilder$ByteArraySource;)V
    .locals 0

    invoke-direct {p0, p1}, Lpl/droidsonroids/gif/GifDrawableBuilder$ByteArraySource;-><init>([B)V

    return-void
.end method


# virtual methods
.method public build(Lpl/droidsonroids/gif/GifDrawable;)Lpl/droidsonroids/gif/GifDrawable;
    .locals 4

    new-instance v0, Lpl/droidsonroids/gif/GifDrawable;

    iget-object v1, p0, Lpl/droidsonroids/gif/GifDrawableBuilder$ByteArraySource;->bytes:[B

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lpl/droidsonroids/gif/GifInfoHandle;->openByteArray([BZ)Lpl/droidsonroids/gif/GifInfoHandle;

    move-result-object v1

    iget-object v2, p0, Lpl/droidsonroids/gif/GifDrawableBuilder$ByteArraySource;->bytes:[B

    array-length v2, v2

    int-to-long v2, v2

    invoke-direct {v0, v1, v2, v3, p1}, Lpl/droidsonroids/gif/GifDrawable;-><init>(Lpl/droidsonroids/gif/GifInfoHandle;JLpl/droidsonroids/gif/GifDrawable;)V

    return-object v0
.end method
