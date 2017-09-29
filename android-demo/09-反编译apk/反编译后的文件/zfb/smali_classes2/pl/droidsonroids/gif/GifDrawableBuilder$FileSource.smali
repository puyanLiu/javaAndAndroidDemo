.class Lpl/droidsonroids/gif/GifDrawableBuilder$FileSource;
.super Ljava/lang/Object;

# interfaces
.implements Lpl/droidsonroids/gif/GifDrawableBuilder$Source;


# instance fields
.field private final mFile:Ljava/io/File;


# direct methods
.method private constructor <init>(Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpl/droidsonroids/gif/GifDrawableBuilder$FileSource;->mFile:Ljava/io/File;

    return-void
.end method

.method synthetic constructor <init>(Ljava/io/File;Lpl/droidsonroids/gif/GifDrawableBuilder$FileSource;)V
    .locals 0

    invoke-direct {p0, p1}, Lpl/droidsonroids/gif/GifDrawableBuilder$FileSource;-><init>(Ljava/io/File;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lpl/droidsonroids/gif/GifDrawableBuilder$FileSource;->mFile:Ljava/io/File;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lpl/droidsonroids/gif/GifDrawableBuilder$FileSource;)V
    .locals 0

    invoke-direct {p0, p1}, Lpl/droidsonroids/gif/GifDrawableBuilder$FileSource;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public build(Lpl/droidsonroids/gif/GifDrawable;)Lpl/droidsonroids/gif/GifDrawable;
    .locals 4

    new-instance v0, Lpl/droidsonroids/gif/GifDrawable;

    iget-object v1, p0, Lpl/droidsonroids/gif/GifDrawableBuilder$FileSource;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lpl/droidsonroids/gif/GifInfoHandle;->openFile(Ljava/lang/String;Z)Lpl/droidsonroids/gif/GifInfoHandle;

    move-result-object v1

    iget-object v2, p0, Lpl/droidsonroids/gif/GifDrawableBuilder$FileSource;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3, p1}, Lpl/droidsonroids/gif/GifDrawable;-><init>(Lpl/droidsonroids/gif/GifInfoHandle;JLpl/droidsonroids/gif/GifDrawable;)V

    return-object v0
.end method
