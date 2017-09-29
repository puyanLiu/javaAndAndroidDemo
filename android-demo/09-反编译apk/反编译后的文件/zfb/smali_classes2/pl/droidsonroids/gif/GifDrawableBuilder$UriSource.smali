.class Lpl/droidsonroids/gif/GifDrawableBuilder$UriSource;
.super Ljava/lang/Object;

# interfaces
.implements Lpl/droidsonroids/gif/GifDrawableBuilder$Source;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpl/droidsonroids/gif/GifDrawableBuilder$UriSource;->mContentResolver:Landroid/content/ContentResolver;

    iput-object p2, p0, Lpl/droidsonroids/gif/GifDrawableBuilder$UriSource;->mUri:Landroid/net/Uri;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;Lpl/droidsonroids/gif/GifDrawableBuilder$UriSource;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lpl/droidsonroids/gif/GifDrawableBuilder$UriSource;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public build(Lpl/droidsonroids/gif/GifDrawable;)Lpl/droidsonroids/gif/GifDrawable;
    .locals 4

    new-instance v0, Lpl/droidsonroids/gif/GifDrawableBuilder$FileDescriptorSource;

    iget-object v1, p0, Lpl/droidsonroids/gif/GifDrawableBuilder$UriSource;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lpl/droidsonroids/gif/GifDrawableBuilder$UriSource;->mUri:Landroid/net/Uri;

    const-string/jumbo v3, "r"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lpl/droidsonroids/gif/GifDrawableBuilder$FileDescriptorSource;-><init>(Landroid/content/res/AssetFileDescriptor;Lpl/droidsonroids/gif/GifDrawableBuilder$FileDescriptorSource;)V

    invoke-virtual {v0, p1}, Lpl/droidsonroids/gif/GifDrawableBuilder$FileDescriptorSource;->build(Lpl/droidsonroids/gif/GifDrawable;)Lpl/droidsonroids/gif/GifDrawable;

    move-result-object v0

    return-object v0
.end method
