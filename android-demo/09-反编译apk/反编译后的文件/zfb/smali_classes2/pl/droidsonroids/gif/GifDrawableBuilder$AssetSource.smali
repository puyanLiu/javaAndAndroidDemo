.class Lpl/droidsonroids/gif/GifDrawableBuilder$AssetSource;
.super Ljava/lang/Object;

# interfaces
.implements Lpl/droidsonroids/gif/GifDrawableBuilder$Source;


# instance fields
.field private final mAssetManager:Landroid/content/res/AssetManager;

.field private final mAssetName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpl/droidsonroids/gif/GifDrawableBuilder$AssetSource;->mAssetManager:Landroid/content/res/AssetManager;

    iput-object p2, p0, Lpl/droidsonroids/gif/GifDrawableBuilder$AssetSource;->mAssetName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;Lpl/droidsonroids/gif/GifDrawableBuilder$AssetSource;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lpl/droidsonroids/gif/GifDrawableBuilder$AssetSource;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public build(Lpl/droidsonroids/gif/GifDrawable;)Lpl/droidsonroids/gif/GifDrawable;
    .locals 3

    new-instance v0, Lpl/droidsonroids/gif/GifDrawableBuilder$FileDescriptorSource;

    iget-object v1, p0, Lpl/droidsonroids/gif/GifDrawableBuilder$AssetSource;->mAssetManager:Landroid/content/res/AssetManager;

    iget-object v2, p0, Lpl/droidsonroids/gif/GifDrawableBuilder$AssetSource;->mAssetName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lpl/droidsonroids/gif/GifDrawableBuilder$FileDescriptorSource;-><init>(Landroid/content/res/AssetFileDescriptor;Lpl/droidsonroids/gif/GifDrawableBuilder$FileDescriptorSource;)V

    invoke-virtual {v0, p1}, Lpl/droidsonroids/gif/GifDrawableBuilder$FileDescriptorSource;->build(Lpl/droidsonroids/gif/GifDrawable;)Lpl/droidsonroids/gif/GifDrawable;

    move-result-object v0

    return-object v0
.end method
