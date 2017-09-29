.class Lpl/droidsonroids/gif/GifDrawableBuilder$FileDescriptorSource;
.super Ljava/lang/Object;

# interfaces
.implements Lpl/droidsonroids/gif/GifDrawableBuilder$Source;


# instance fields
.field private final length:J

.field private final mFd:Ljava/io/FileDescriptor;

.field private final startOffset:J


# direct methods
.method private constructor <init>(Landroid/content/res/AssetFileDescriptor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lpl/droidsonroids/gif/GifDrawableBuilder$FileDescriptorSource;->mFd:Ljava/io/FileDescriptor;

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v0

    iput-wide v0, p0, Lpl/droidsonroids/gif/GifDrawableBuilder$FileDescriptorSource;->length:J

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v0

    iput-wide v0, p0, Lpl/droidsonroids/gif/GifDrawableBuilder$FileDescriptorSource;->startOffset:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/res/AssetFileDescriptor;Lpl/droidsonroids/gif/GifDrawableBuilder$FileDescriptorSource;)V
    .locals 0

    invoke-direct {p0, p1}, Lpl/droidsonroids/gif/GifDrawableBuilder$FileDescriptorSource;-><init>(Landroid/content/res/AssetFileDescriptor;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/res/Resources;I)V
    .locals 1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    invoke-direct {p0, v0}, Lpl/droidsonroids/gif/GifDrawableBuilder$FileDescriptorSource;-><init>(Landroid/content/res/AssetFileDescriptor;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/res/Resources;ILpl/droidsonroids/gif/GifDrawableBuilder$FileDescriptorSource;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lpl/droidsonroids/gif/GifDrawableBuilder$FileDescriptorSource;-><init>(Landroid/content/res/Resources;I)V

    return-void
.end method

.method private constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpl/droidsonroids/gif/GifDrawableBuilder$FileDescriptorSource;->mFd:Ljava/io/FileDescriptor;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lpl/droidsonroids/gif/GifDrawableBuilder$FileDescriptorSource;->length:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lpl/droidsonroids/gif/GifDrawableBuilder$FileDescriptorSource;->startOffset:J

    return-void
.end method

.method synthetic constructor <init>(Ljava/io/FileDescriptor;Lpl/droidsonroids/gif/GifDrawableBuilder$FileDescriptorSource;)V
    .locals 0

    invoke-direct {p0, p1}, Lpl/droidsonroids/gif/GifDrawableBuilder$FileDescriptorSource;-><init>(Ljava/io/FileDescriptor;)V

    return-void
.end method


# virtual methods
.method public build(Lpl/droidsonroids/gif/GifDrawable;)Lpl/droidsonroids/gif/GifDrawable;
    .locals 5

    new-instance v0, Lpl/droidsonroids/gif/GifDrawable;

    iget-object v1, p0, Lpl/droidsonroids/gif/GifDrawableBuilder$FileDescriptorSource;->mFd:Ljava/io/FileDescriptor;

    iget-wide v2, p0, Lpl/droidsonroids/gif/GifDrawableBuilder$FileDescriptorSource;->startOffset:J

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lpl/droidsonroids/gif/GifInfoHandle;->openFd(Ljava/io/FileDescriptor;JZ)Lpl/droidsonroids/gif/GifInfoHandle;

    move-result-object v1

    iget-wide v2, p0, Lpl/droidsonroids/gif/GifDrawableBuilder$FileDescriptorSource;->length:J

    invoke-direct {v0, v1, v2, v3, p1}, Lpl/droidsonroids/gif/GifDrawable;-><init>(Lpl/droidsonroids/gif/GifInfoHandle;JLpl/droidsonroids/gif/GifDrawable;)V

    return-object v0
.end method
