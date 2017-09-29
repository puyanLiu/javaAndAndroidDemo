.class public Lorg/jacoco/core/internal/data/CompactDataInput;
.super Ljava/io/DataInputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public readBooleanArray()[Z
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/jacoco/core/internal/data/CompactDataInput;->readVarInt()I

    move-result v0

    new-array v4, v0, [Z

    move v0, v1

    move v2, v1

    :goto_0
    array-length v3, v4

    if-ge v0, v3, :cond_1

    rem-int/lit8 v3, v0, 0x8

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lorg/jacoco/core/internal/data/CompactDataInput;->readByte()B

    move-result v2

    move v3, v2

    :goto_1
    and-int/lit8 v2, v3, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_2
    aput-boolean v2, v4, v0

    ushr-int/lit8 v2, v3, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_2

    :cond_1
    return-object v4

    :cond_2
    move v3, v2

    goto :goto_1
.end method

.method public readVarInt()I
    .locals 2

    invoke-virtual {p0}, Lorg/jacoco/core/internal/data/CompactDataInput;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v0, 0x80

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    and-int/lit8 v0, v0, 0x7f

    invoke-virtual {p0}, Lorg/jacoco/core/internal/data/CompactDataInput;->readVarInt()I

    move-result v1

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    goto :goto_0
.end method
