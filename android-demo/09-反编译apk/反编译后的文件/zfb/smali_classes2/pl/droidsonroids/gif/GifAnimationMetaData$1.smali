.class Lpl/droidsonroids/gif/GifAnimationMetaData$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lpl/droidsonroids/gif/GifAnimationMetaData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lpl/droidsonroids/gif/GifAnimationMetaData$1;->createFromParcel(Landroid/os/Parcel;)Lpl/droidsonroids/gif/GifAnimationMetaData;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lpl/droidsonroids/gif/GifAnimationMetaData;
    .locals 2

    new-instance v0, Lpl/droidsonroids/gif/GifAnimationMetaData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lpl/droidsonroids/gif/GifAnimationMetaData;-><init>(Landroid/os/Parcel;Lpl/droidsonroids/gif/GifAnimationMetaData;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lpl/droidsonroids/gif/GifAnimationMetaData$1;->newArray(I)[Lpl/droidsonroids/gif/GifAnimationMetaData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lpl/droidsonroids/gif/GifAnimationMetaData;
    .locals 1

    new-array v0, p1, [Lpl/droidsonroids/gif/GifAnimationMetaData;

    return-object v0
.end method
