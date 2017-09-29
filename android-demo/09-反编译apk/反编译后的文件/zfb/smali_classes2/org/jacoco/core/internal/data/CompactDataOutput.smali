.class public Lorg/jacoco/core/internal/data/CompactDataOutput;
.super Ljava/io/DataOutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public writeBooleanArray([Z)V
    .locals 6

    const/4 v1, 0x0

    array-length v0, p1

    invoke-virtual {p0, v0}, Lorg/jacoco/core/internal/data/CompactDataOutput;->writeVarInt(I)V

    array-length v4, p1

    move v3, v1

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v3, v4, :cond_2

    aget-boolean v5, p1, v3

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    shl-int/2addr v5, v0

    or-int/2addr v2, v5

    :cond_0
    add-int/lit8 v0, v0, 0x1

    const/16 v5, 0x8

    if-ne v0, v5, :cond_1

    invoke-virtual {p0, v2}, Lorg/jacoco/core/internal/data/CompactDataOutput;->writeByte(I)V

    move v0, v1

    move v2, v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-lez v0, :cond_3

    invoke-virtual {p0, v2}, Lorg/jacoco/core/internal/data/CompactDataOutput;->writeByte(I)V

    :cond_3
    return-void
.end method

.method public writeVarInt(I)V
    .locals 1

    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/jacoco/core/internal/data/CompactDataOutput;->writeByte(I)V

    :goto_0
    return-void

    :cond_0
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lorg/jacoco/core/internal/data/CompactDataOutput;->writeByte(I)V

    ushr-int/lit8 v0, p1, 0x7

    invoke-virtual {p0, v0}, Lorg/jacoco/core/internal/data/CompactDataOutput;->writeVarInt(I)V

    goto :goto_0
.end method
