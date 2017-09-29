.class Lpl/droidsonroids/gif/GifDrawableBuilder$InputStreamSource;
.super Ljava/lang/Object;

# interfaces
.implements Lpl/droidsonroids/gif/GifDrawableBuilder$Source;


# instance fields
.field private final inputStream:Ljava/io/InputStream;


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpl/droidsonroids/gif/GifDrawableBuilder$InputStreamSource;->inputStream:Ljava/io/InputStream;

    return-void
.end method

.method synthetic constructor <init>(Ljava/io/InputStream;Lpl/droidsonroids/gif/GifDrawableBuilder$InputStreamSource;)V
    .locals 0

    invoke-direct {p0, p1}, Lpl/droidsonroids/gif/GifDrawableBuilder$InputStreamSource;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public build(Lpl/droidsonroids/gif/GifDrawable;)Lpl/droidsonroids/gif/GifDrawable;
    .locals 4

    new-instance v0, Lpl/droidsonroids/gif/GifDrawable;

    iget-object v1, p0, Lpl/droidsonroids/gif/GifDrawableBuilder$InputStreamSource;->inputStream:Ljava/io/InputStream;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lpl/droidsonroids/gif/GifInfoHandle;->openMarkableInputStream(Ljava/io/InputStream;Z)Lpl/droidsonroids/gif/GifInfoHandle;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-direct {v0, v1, v2, v3, p1}, Lpl/droidsonroids/gif/GifDrawable;-><init>(Lpl/droidsonroids/gif/GifInfoHandle;JLpl/droidsonroids/gif/GifDrawable;)V

    return-object v0
.end method
