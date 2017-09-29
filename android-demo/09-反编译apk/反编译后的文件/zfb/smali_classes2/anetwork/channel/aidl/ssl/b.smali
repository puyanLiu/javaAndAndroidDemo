.class final Lanetwork/channel/aidl/ssl/b;
.super Ljava/lang/Object;
.source "ParcelableSslPublickey.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lanetwork/channel/aidl/ssl/ParcelableSslPublickey;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 116
    invoke-static {p1}, Lanetwork/channel/aidl/ssl/ParcelableSslPublickey;->a(Landroid/os/Parcel;)Lanetwork/channel/aidl/ssl/ParcelableSslPublickey;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 116
    new-array v0, p1, [Lanetwork/channel/aidl/ssl/ParcelableSslPublickey;

    return-object v0
.end method
