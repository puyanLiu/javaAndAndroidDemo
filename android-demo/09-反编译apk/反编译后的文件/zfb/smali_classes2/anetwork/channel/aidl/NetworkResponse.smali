.class public Lanetwork/channel/aidl/NetworkResponse;
.super Ljava/lang/Object;
.source "NetworkResponse.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lanetwork/channel/Response;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lanetwork/channel/aidl/NetworkResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/lang/String;


# instance fields
.field a:I

.field b:[B

.field private d:Ljava/lang/String;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/Throwable;

.field private g:Lanetwork/channel/statist/StatisticData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lanetwork/channel/aidl/NetworkResponse;->c:Ljava/lang/String;

    .line 157
    new-instance v0, Lanetwork/channel/aidl/d;

    invoke-direct {v0}, Lanetwork/channel/aidl/d;-><init>()V

    sput-object v0, Lanetwork/channel/aidl/NetworkResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, v0, v0}, Lanetwork/channel/aidl/NetworkResponse;-><init>(I[BLjava/util/Map;)V

    .line 87
    return-void
.end method

.method public constructor <init>(I[BLjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput p1, p0, Lanetwork/channel/aidl/NetworkResponse;->a:I

    .line 90
    invoke-static {p1}, Lanetwork/channel/NetworkErrorConstant;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/aidl/NetworkResponse;->d:Ljava/lang/String;

    .line 91
    iput-object p2, p0, Lanetwork/channel/aidl/NetworkResponse;->b:[B

    .line 92
    iput-object p3, p0, Lanetwork/channel/aidl/NetworkResponse;->e:Ljava/util/Map;

    .line 93
    return-void
.end method

.method public static a(Landroid/os/Parcel;)Lanetwork/channel/aidl/NetworkResponse;
    .locals 4

    .prologue
    .line 134
    new-instance v1, Lanetwork/channel/aidl/NetworkResponse;

    invoke-direct {v1}, Lanetwork/channel/aidl/NetworkResponse;-><init>()V

    .line 136
    :try_start_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lanetwork/channel/aidl/NetworkResponse;->a:I

    .line 137
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lanetwork/channel/aidl/NetworkResponse;->d:Ljava/lang/String;

    .line 138
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 139
    if-lez v0, :cond_0

    .line 140
    new-array v0, v0, [B

    iput-object v0, v1, Lanetwork/channel/aidl/NetworkResponse;->b:[B

    .line 141
    iget-object v0, v1, Lanetwork/channel/aidl/NetworkResponse;->b:[B

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 143
    :cond_0
    const-class v0, Lanetwork/channel/aidl/NetworkResponse;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, v1, Lanetwork/channel/aidl/NetworkResponse;->e:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 145
    :try_start_1
    invoke-virtual {p0}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lanetwork/channel/statist/StatisticData;

    iput-object v0, v1, Lanetwork/channel/aidl/NetworkResponse;->g:Lanetwork/channel/statist/StatisticData;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 153
    :goto_0
    return-object v1

    .line 147
    :catch_0
    move-exception v0

    :try_start_2
    sget-object v0, Lanetwork/channel/aidl/NetworkResponse;->c:Ljava/lang/String;

    const-string/jumbo v2, "[readFromParcel] source.readSerializable() error"

    invoke-static {v0, v2}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 150
    :catch_1
    move-exception v0

    .line 151
    sget-object v2, Lanetwork/channel/aidl/NetworkResponse;->c:Ljava/lang/String;

    const-string/jumbo v3, "[readFromParcel]"

    invoke-static {v2, v3, v0}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lanetwork/channel/aidl/NetworkResponse;->a:I

    return v0
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 47
    iput p1, p0, Lanetwork/channel/aidl/NetworkResponse;->a:I

    .line 48
    invoke-static {p1}, Lanetwork/channel/NetworkErrorConstant;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/aidl/NetworkResponse;->d:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public final a(Lanetwork/channel/statist/StatisticData;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lanetwork/channel/aidl/NetworkResponse;->g:Lanetwork/channel/statist/StatisticData;

    .line 171
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 59
    iput-object p1, p0, Lanetwork/channel/aidl/NetworkResponse;->e:Ljava/util/Map;

    .line 60
    return-void
.end method

.method public final a([B)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lanetwork/channel/aidl/NetworkResponse;->b:[B

    .line 57
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lanetwork/channel/aidl/NetworkResponse;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final c()[B
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lanetwork/channel/aidl/NetworkResponse;->b:[B

    return-object v0
.end method

.method public final d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lanetwork/channel/aidl/NetworkResponse;->e:Ljava/util/Map;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Lanetwork/channel/statist/StatisticData;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lanetwork/channel/aidl/NetworkResponse;->g:Lanetwork/channel/statist/StatisticData;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "NetworkResponse [statusCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lanetwork/channel/aidl/NetworkResponse;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", desc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lanetwork/channel/aidl/NetworkResponse;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", bytedata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lanetwork/channel/aidl/NetworkResponse;->b:[B

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lanetwork/channel/aidl/NetworkResponse;->b:[B

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", connHeadFields="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lanetwork/channel/aidl/NetworkResponse;->e:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lanetwork/channel/aidl/NetworkResponse;->f:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", statisticData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lanetwork/channel/aidl/NetworkResponse;->g:Lanetwork/channel/statist/StatisticData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 116
    iget v0, p0, Lanetwork/channel/aidl/NetworkResponse;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    iget-object v0, p0, Lanetwork/channel/aidl/NetworkResponse;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    const/4 v0, 0x0

    .line 119
    iget-object v1, p0, Lanetwork/channel/aidl/NetworkResponse;->b:[B

    if-eqz v1, :cond_0

    .line 120
    iget-object v0, p0, Lanetwork/channel/aidl/NetworkResponse;->b:[B

    array-length v0, v0

    .line 122
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    if-lez v0, :cond_1

    .line 124
    iget-object v0, p0, Lanetwork/channel/aidl/NetworkResponse;->b:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 126
    :cond_1
    iget-object v0, p0, Lanetwork/channel/aidl/NetworkResponse;->e:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 127
    iget-object v0, p0, Lanetwork/channel/aidl/NetworkResponse;->g:Lanetwork/channel/statist/StatisticData;

    if-eqz v0, :cond_2

    .line 128
    iget-object v0, p0, Lanetwork/channel/aidl/NetworkResponse;->g:Lanetwork/channel/statist/StatisticData;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 132
    :cond_2
    return-void
.end method
