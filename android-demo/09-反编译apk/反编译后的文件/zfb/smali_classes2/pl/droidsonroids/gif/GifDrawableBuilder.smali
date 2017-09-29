.class public Lpl/droidsonroids/gif/GifDrawableBuilder;
.super Ljava/lang/Object;


# instance fields
.field private mOldDrawable:Lpl/droidsonroids/gif/GifDrawable;

.field private mSource:Lpl/droidsonroids/gif/GifDrawableBuilder$Source;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lpl/droidsonroids/gif/GifDrawable;
    .locals 2

    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawableBuilder;->mSource:Lpl/droidsonroids/gif/GifDrawableBuilder$Source;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Source is not set"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawableBuilder;->mSource:Lpl/droidsonroids/gif/GifDrawableBuilder$Source;

    iget-object v1, p0, Lpl/droidsonroids/gif/GifDrawableBuilder;->mOldDrawable:Lpl/droidsonroids/gif/GifDrawable;

    invoke-interface {v0, v1}, Lpl/droidsonroids/gif/GifDrawableBuilder$Source;->build(Lpl/droidsonroids/gif/GifDrawable;)Lpl/droidsonroids/gif/GifDrawable;

    move-result-object v0

    return-object v0
.end method

.method public from(Landroid/content/ContentResolver;Landroid/net/Uri;)Lpl/droidsonroids/gif/GifDrawableBuilder;
    .locals 2

    new-instance v0, Lpl/droidsonroids/gif/GifDrawableBuilder$UriSource;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lpl/droidsonroids/gif/GifDrawableBuilder$UriSource;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Lpl/droidsonroids/gif/GifDrawableBuilder$UriSource;)V

    iput-object v0, p0, Lpl/droidsonroids/gif/GifDrawableBuilder;->mSource:Lpl/droidsonroids/gif/GifDrawableBuilder$Source;

    return-object p0
.end method

.method public from(Landroid/content/res/AssetFileDescriptor;)Lpl/droidsonroids/gif/GifDrawableBuilder;
    .locals 2

    new-instance v0, Lpl/droidsonroids/gif/GifDrawableBuilder$FileDescriptorSource;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lpl/droidsonroids/gif/GifDrawableBuilder$FileDescriptorSource;-><init>(Landroid/content/res/AssetFileDescriptor;Lpl/droidsonroids/gif/GifDrawableBuilder$FileDescriptorSource;)V

    iput-object v0, p0, Lpl/droidsonroids/gif/GifDrawableBuilder;->mSource:Lpl/droidsonroids/gif/GifDrawableBuilder$Source;

    return-object p0
.end method

.method public from(Landroid/content/res/AssetManager;Ljava/lang/String;)Lpl/droidsonroids/gif/GifDrawableBuilder;
    .locals 2

    new-instance v0, Lpl/droidsonroids/gif/GifDrawableBuilder$AssetSource;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lpl/droidsonroids/gif/GifDrawableBuilder$AssetSource;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;Lpl/droidsonroids/gif/GifDrawableBuilder$AssetSource;)V

    iput-object v0, p0, Lpl/droidsonroids/gif/GifDrawableBuilder;->mSource:Lpl/droidsonroids/gif/GifDrawableBuilder$Source;

    return-object p0
.end method

.method public from(Landroid/content/res/Resources;I)Lpl/droidsonroids/gif/GifDrawableBuilder;
    .locals 2

    new-instance v0, Lpl/droidsonroids/gif/GifDrawableBuilder$FileDescriptorSource;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lpl/droidsonroids/gif/GifDrawableBuilder$FileDescriptorSource;-><init>(Landroid/content/res/Resources;ILpl/droidsonroids/gif/GifDrawableBuilder$FileDescriptorSource;)V

    iput-object v0, p0, Lpl/droidsonroids/gif/GifDrawableBuilder;->mSource:Lpl/droidsonroids/gif/GifDrawableBuilder$Source;

    return-object p0
.end method

.method public from(Ljava/io/File;)Lpl/droidsonroids/gif/GifDrawableBuilder;
    .locals 2

    new-instance v0, Lpl/droidsonroids/gif/GifDrawableBuilder$FileSource;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lpl/droidsonroids/gif/GifDrawableBuilder$FileSource;-><init>(Ljava/io/File;Lpl/droidsonroids/gif/GifDrawableBuilder$FileSource;)V

    iput-object v0, p0, Lpl/droidsonroids/gif/GifDrawableBuilder;->mSource:Lpl/droidsonroids/gif/GifDrawableBuilder$Source;

    return-object p0
.end method

.method public from(Ljava/io/FileDescriptor;)Lpl/droidsonroids/gif/GifDrawableBuilder;
    .locals 2

    new-instance v0, Lpl/droidsonroids/gif/GifDrawableBuilder$FileDescriptorSource;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lpl/droidsonroids/gif/GifDrawableBuilder$FileDescriptorSource;-><init>(Ljava/io/FileDescriptor;Lpl/droidsonroids/gif/GifDrawableBuilder$FileDescriptorSource;)V

    iput-object v0, p0, Lpl/droidsonroids/gif/GifDrawableBuilder;->mSource:Lpl/droidsonroids/gif/GifDrawableBuilder$Source;

    return-object p0
.end method

.method public from(Ljava/io/InputStream;)Lpl/droidsonroids/gif/GifDrawableBuilder;
    .locals 2

    new-instance v0, Lpl/droidsonroids/gif/GifDrawableBuilder$InputStreamSource;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lpl/droidsonroids/gif/GifDrawableBuilder$InputStreamSource;-><init>(Ljava/io/InputStream;Lpl/droidsonroids/gif/GifDrawableBuilder$InputStreamSource;)V

    iput-object v0, p0, Lpl/droidsonroids/gif/GifDrawableBuilder;->mSource:Lpl/droidsonroids/gif/GifDrawableBuilder$Source;

    return-object p0
.end method

.method public from(Ljava/lang/String;)Lpl/droidsonroids/gif/GifDrawableBuilder;
    .locals 2

    new-instance v0, Lpl/droidsonroids/gif/GifDrawableBuilder$FileSource;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lpl/droidsonroids/gif/GifDrawableBuilder$FileSource;-><init>(Ljava/lang/String;Lpl/droidsonroids/gif/GifDrawableBuilder$FileSource;)V

    iput-object v0, p0, Lpl/droidsonroids/gif/GifDrawableBuilder;->mSource:Lpl/droidsonroids/gif/GifDrawableBuilder$Source;

    return-object p0
.end method

.method public from(Ljava/nio/ByteBuffer;)Lpl/droidsonroids/gif/GifDrawableBuilder;
    .locals 2

    new-instance v0, Lpl/droidsonroids/gif/GifDrawableBuilder$ByteBufferSource;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lpl/droidsonroids/gif/GifDrawableBuilder$ByteBufferSource;-><init>(Ljava/nio/ByteBuffer;Lpl/droidsonroids/gif/GifDrawableBuilder$ByteBufferSource;)V

    iput-object v0, p0, Lpl/droidsonroids/gif/GifDrawableBuilder;->mSource:Lpl/droidsonroids/gif/GifDrawableBuilder$Source;

    return-object p0
.end method

.method public from([B)Lpl/droidsonroids/gif/GifDrawableBuilder;
    .locals 2

    new-instance v0, Lpl/droidsonroids/gif/GifDrawableBuilder$ByteArraySource;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lpl/droidsonroids/gif/GifDrawableBuilder$ByteArraySource;-><init>([BLpl/droidsonroids/gif/GifDrawableBuilder$ByteArraySource;)V

    iput-object v0, p0, Lpl/droidsonroids/gif/GifDrawableBuilder;->mSource:Lpl/droidsonroids/gif/GifDrawableBuilder$Source;

    return-object p0
.end method

.method public with(Lpl/droidsonroids/gif/GifDrawable;)Lpl/droidsonroids/gif/GifDrawableBuilder;
    .locals 0

    iput-object p1, p0, Lpl/droidsonroids/gif/GifDrawableBuilder;->mOldDrawable:Lpl/droidsonroids/gif/GifDrawable;

    return-object p0
.end method
