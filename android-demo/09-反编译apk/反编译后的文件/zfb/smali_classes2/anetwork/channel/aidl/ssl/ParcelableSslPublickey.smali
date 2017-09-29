.class public Lanetwork/channel/aidl/ssl/ParcelableSslPublickey;
.super Ljava/lang/Object;
.source "ParcelableSslPublickey.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lanetwork/channel/aidl/ssl/ParcelableSslPublickey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:[B

.field public b:[B

.field public c:I

.field public d:I

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 116
    new-instance v0, Lanetwork/channel/aidl/ssl/b;

    invoke-direct {v0}, Lanetwork/channel/aidl/ssl/b;-><init>()V

    sput-object v0, Lanetwork/channel/aidl/ssl/ParcelableSslPublickey;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput v0, p0, Lanetwork/channel/aidl/ssl/ParcelableSslPublickey;->c:I

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lanetwork/channel/aidl/ssl/ParcelableSslPublickey;->d:I

    .line 42
    return-void
.end method

.method public constructor <init>([B[BI)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput v0, p0, Lanetwork/channel/aidl/ssl/ParcelableSslPublickey;->c:I

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lanetwork/channel/aidl/ssl/ParcelableSslPublickey;->d:I

    .line 46
    iput-object p1, p0, Lanetwork/channel/aidl/ssl/ParcelableSslPublickey;->a:[B

    .line 47
    iput-object p2, p0, Lanetwork/channel/aidl/ssl/ParcelableSslPublickey;->b:[B

    .line 48
    iput p3, p0, Lanetwork/channel/aidl/ssl/ParcelableSslPublickey;->c:I

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lanetwork/channel/aidl/ssl/ParcelableSslPublickey;->d:I

    .line 50
    return-void
.end method

.method public static a(Landroid/os/Parcel;)Lanetwork/channel/aidl/ssl/ParcelableSslPublickey;
    .locals 4

    .prologue
    .line 90
    new-instance v1, Lanetwork/channel/aidl/ssl/ParcelableSslPublickey;

    invoke-direct {v1}, Lanetwork/channel/aidl/ssl/ParcelableSslPublickey;-><init>()V

    .line 93
    :try_start_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 94
    if-lez v0, :cond_0

    .line 96
    new-array v0, v0, [B

    iput-object v0, v1, Lanetwork/channel/aidl/ssl/ParcelableSslPublickey;->a:[B

    .line 97
    iget-object v0, v1, Lanetwork/channel/aidl/ssl/ParcelableSslPublickey;->a:[B

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 100
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 101
    if-lez v0, :cond_1

    .line 103
    new-array v0, v0, [B

    iput-object v0, v1, Lanetwork/channel/aidl/ssl/ParcelableSslPublickey;->b:[B

    .line 104
    iget-object v0, v1, Lanetwork/channel/aidl/ssl/ParcelableSslPublickey;->b:[B

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 107
    :cond_1
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lanetwork/channel/aidl/ssl/ParcelableSslPublickey;->c:I

    .line 109
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lanetwork/channel/aidl/ssl/ParcelableSslPublickey;->d:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    return-object v1

    .line 110
    :catch_0
    move-exception v0

    .line 111
    const-string/jumbo v2, "ANet.SSL-ParcelablePublickey"

    const-string/jumbo v3, "[readFromParcel]"

    invoke-static {v2, v3, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lanetwork/channel/aidl/ssl/ParcelableSslPublickey;->e:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ParcelableSslPublickey [module="

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lanetwork/channel/aidl/ssl/ParcelableSslPublickey;->a:[B

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", exponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lanetwork/channel/aidl/ssl/ParcelableSslPublickey;->b:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", seqnum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lanetwork/channel/aidl/ssl/ParcelableSslPublickey;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lanetwork/channel/aidl/ssl/ParcelableSslPublickey;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", dataSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lanetwork/channel/aidl/ssl/ParcelableSslPublickey;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lanetwork/channel/aidl/ssl/ParcelableSslPublickey;->a:[B

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    .line 59
    if-nez p1, :cond_0

    .line 85
    :goto_0
    return-void

    .line 64
    :cond_0
    :try_start_0
    iget-object v0, p0, Lanetwork/channel/aidl/ssl/ParcelableSslPublickey;->a:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lanetwork/channel/aidl/ssl/ParcelableSslPublickey;->a:[B

    array-length v0, v0

    if-nez v0, :cond_3

    .line 65
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    :goto_1
    iget-object v0, p0, Lanetwork/channel/aidl/ssl/ParcelableSslPublickey;->b:[B

    if-eqz v0, :cond_2

    iget-object v0, p0, Lanetwork/channel/aidl/ssl/ParcelableSslPublickey;->b:[B

    array-length v0, v0

    if-nez v0, :cond_4

    .line 72
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    :goto_2
    iget v0, p0, Lanetwork/channel/aidl/ssl/ParcelableSslPublickey;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget v0, p0, Lanetwork/channel/aidl/ssl/ParcelableSslPublickey;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    iput v0, p0, Lanetwork/channel/aidl/ssl/ParcelableSslPublickey;->e:I

    goto :goto_0

    .line 67
    :cond_3
    :try_start_1
    iget-object v0, p0, Lanetwork/channel/aidl/ssl/ParcelableSslPublickey;->a:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget-object v0, p0, Lanetwork/channel/aidl/ssl/ParcelableSslPublickey;->a:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 81
    :catch_0
    move-exception v0

    .line 82
    :try_start_2
    const-string/jumbo v1, "ANet.SSL-ParcelablePublickey"

    const-string/jumbo v2, "[writeToParcel]"

    invoke-static {v1, v2, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    iput v0, p0, Lanetwork/channel/aidl/ssl/ParcelableSslPublickey;->e:I

    goto :goto_0

    .line 74
    :cond_4
    :try_start_3
    iget-object v0, p0, Lanetwork/channel/aidl/ssl/ParcelableSslPublickey;->b:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    iget-object v0, p0, Lanetwork/channel/aidl/ssl/ParcelableSslPublickey;->b:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 84
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    iput v1, p0, Lanetwork/channel/aidl/ssl/ParcelableSslPublickey;->e:I

    throw v0
.end method
