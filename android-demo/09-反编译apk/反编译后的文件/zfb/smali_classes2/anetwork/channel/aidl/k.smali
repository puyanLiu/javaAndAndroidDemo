.class final Lanetwork/channel/aidl/k;
.super Ljava/lang/Object;
.source "ParcelableObject.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lanetwork/channel/aidl/ParcelableObject;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lanetwork/channel/aidl/ParcelableObject;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lanetwork/channel/aidl/ParcelableObject;-><init>(B)V

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    new-array v0, p1, [Lanetwork/channel/aidl/ParcelableObject;

    return-object v0
.end method
